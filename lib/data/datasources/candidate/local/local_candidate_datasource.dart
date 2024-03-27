import 'package:injectable/injectable.dart';
import 'package:orm/orm.dart';
import 'package:poll_power_api_server/data/datasources/candidate/i_candidate_datasource_repository.dart';
import 'package:poll_power_api_server/domain/entities/candidate/candidate.dart';
import 'package:poll_power_api_server/domain/params/candidate/create_candidate_param.dart';
import 'package:poll_power_api_server/domain/params/candidate/get_candidate_param.dart';
import 'package:poll_power_api_server/gen/prisma/client.dart';
import 'package:poll_power_api_server/gen/prisma/model.dart';
import 'package:poll_power_api_server/gen/prisma/prisma.dart';

@LazySingleton(as: ICandidateDatasourceRepository)
class LocalCandidateDatasource implements ICandidateDatasourceRepository {
  final PrismaClient _client;

  LocalCandidateDatasource(@Named('db') this._client);

  @override
  Future<CandidateEntity> createCandidate(CreateCandidateParam param) async {
    final Candidate candidate = await _client.candidate.create(
        data: PrismaUnion.$1(CandidateCreateInput(
            uuid: param.uuid,
            slogan: param.slogan,
            speech: param.speech,
            user: UserCreateNestedOneWithoutCandidateInput(
                create: PrismaUnion.$1(UserCreateWithoutCandidateInput(
                    uuid: param.user.uuid,
                    firstName: param.user.firstName,
                    lastName: param.user.lastName,
                    email: param.user.email,
                    password: param.user.password,
                    image: param.user.image,
                    grade: param.user.grade,
                    areaOfStudy: param.user.areaOfStudy))))));

    return transform(candidate);
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
  CandidateEntity transform(param) {
    return CandidateEntity(
        slogan: param.slogan,
        speech: param.speech,
        voteCount: param.voteCount,
        uuid: param.uuid,
        user: param.user);
  }

  @override
  Future<List<CandidateEntity>> getAllCandidate() async {
    final candidates = await _client.candidate.findMany();
    return candidates.map((e) => transform(e)).toList();
  }
}
