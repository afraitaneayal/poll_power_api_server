import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:orm/orm.dart';
import 'package:poll_power_api_server/common/error/errors.dart';
import 'package:poll_power_api_server/common/helpers/uuid_helper/uuid_helper.dart';
import 'package:poll_power_api_server/data/datasources/candidate/i_candidate_datasource_repository.dart';
import 'package:poll_power_api_server/di.dart';
import 'package:poll_power_api_server/domain/entities/candidate/candidate.dart';
import 'package:poll_power_api_server/domain/entities/user/user.dart';
import 'package:poll_power_api_server/domain/params/candidate/create_candidate_param.dart';
import 'package:poll_power_api_server/domain/params/candidate/get_candidate_param.dart';
import 'package:poll_power_api_server/domain/params/user/get_user_param.dart';
import 'package:poll_power_api_server/domain/params/vote/get_vote_param.dart';
import 'package:poll_power_api_server/domain/usecases/user/get_user_usecase.dart';
import 'package:poll_power_api_server/domain/usecases/vote/get_votes_usecase.dart';
import 'package:poll_power_api_server/gen/prisma/client.dart';
import 'package:poll_power_api_server/gen/prisma/model.dart';
import 'package:poll_power_api_server/gen/prisma/prisma.dart';

@LazySingleton(as: ICandidateDatasourceRepository)
class LocalCandidateDatasourceImp implements ICandidateDatasourceRepository {
  final PrismaClient _client;

  LocalCandidateDatasourceImp(@Named('prisma') this._client);

  @override
  Future<Either<ServerError, CandidateEntity>> createCandidate(
      CreateCandidateParam param) async {
    if (await isEmailAlreadyExist(param.user.email)) {
      return left(EmailAlreadyExist(''));
    } else {
      final Candidate candidate = await _client.candidate.create(
          data: PrismaUnion.$1(CandidateCreateInput(
              uuid: locator.get<IUuidHelper>().generateUuid(),
              slogan: param.slogan,
              speech: param.speech ?? "",
              user: UserCreateNestedOneWithoutCandidateInput(
                  create: PrismaUnion.$1(UserCreateWithoutCandidateInput(
                      uuid: locator.get<IUuidHelper>().generateUuid(),
                      firstName: param.user.first_name,
                      lastName: param.user.last_name,
                      email: param.user.email,
                      password: param.user.password,
                      image: param.user.image ?? "",
                      grade: param.user.grade,
                      areaOfStudy: param.user.area_of_study))))));

      return right(await transform(candidate));
    }
  }

  @override
  Future<CandidateEntity?> getCandidate(GetCandidateParam param) async {
    final Candidate? candidate = await _client.candidate.findFirst(
        where: CandidateWhereInput(uuid: PrismaUnion.$2(param.uuid)));
    if (candidate == null) {
      return null;
    }
    return transform(candidate);
  }

  @override
  Future<CandidateEntity> transform(param) async {
    final Candidate p = param as Candidate;
    final int vote = (param.vote != null)
        ? (await locator
                .get<GetVotesUsecase>()
                .trigger(GetVoteParam(candidateUuid: p.uuid!)))
            .fold((l) => null, (r) => r)!
            .voteCount
        : 0;
    final Either<ServerError, UserEntity?> userResult =
        await locator.get<GetUserUsecase>().trigger(GetUserParam(p.userUuid!));
    final UserEntity? user = userResult.fold((l) => null, (r) => r);
    return CandidateEntity(
        slogan: p.slogan!,
        speech: p.speech!,
        vote_count: vote,
        uuid: p.uuid!,
        user: user!);
  }

  @override
  Future<List<CandidateEntity>> getAllCandidate() async {
    final Iterable<Candidate> candidates = await _client.candidate.findMany();
    return Future.wait(
        candidates.map((e) async => await transform(e)).toList());
  }

  Future<bool> isEmailAlreadyExist(String email) async {
    final user = await _client.user
        .findFirst(where: UserWhereInput(email: PrismaUnion.$2(email)));
    return user != null;
  }
}
