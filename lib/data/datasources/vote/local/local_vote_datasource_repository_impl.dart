import 'package:injectable/injectable.dart';
import 'package:orm/orm.dart';
import 'package:poll_power_api_server/common/helpers/uuid_helper/uuid_helper.dart';
import 'package:poll_power_api_server/data/datasources/vote/i_vote_datasource_repository.dart';
import 'package:poll_power_api_server/di.dart';
import 'package:poll_power_api_server/domain/entities/vote/vote.dart';
import 'package:poll_power_api_server/domain/params/vote/create_vote_param.dart';
import 'package:poll_power_api_server/domain/params/vote/get_vote_param.dart';
import 'package:poll_power_api_server/gen/prisma/client.dart';
import 'package:poll_power_api_server/gen/prisma/prisma.dart';

import '../../../../gen/prisma/model.dart';

@LazySingleton(as: IVoteDatasourceRepository)
class LocalVoteDatasourceImpl implements IVoteDatasourceRepository {
  final PrismaClient _client;

  LocalVoteDatasourceImpl(@Named("prisma") this._client);

  @override
  Future<List<VoteEntity>> getVotes(GetVoteParam param) {
    throw UnimplementedError();
  }

  @override
  Future<VoteEntity> vote(CreateVoteParam param) async {
    final Vote? candidateVote = await _client.vote.findFirst(
        where:
            VoteWhereInput(candidateUuid: PrismaUnion.$2(param.candidateUuid)));
    if (candidateVote != null) {
      final int finalVoteCount = candidateVote.voteCount! + 1;
      final Vote? rs = await _client.vote.update(
          data: PrismaUnion.$1(
              VoteUpdateInput(voteCount: PrismaUnion.$1(finalVoteCount))),
          where: VoteWhereUniqueInput(candidateUuid: param.candidateUuid));
      return transform(rs!);
    } else {
      final rs = await _client.vote.create(
          data: PrismaUnion.$1(VoteCreateInput(
              uuid: locator.get<IUuidHelper>().generateUuid(),
              voteCount: 1,
              user: UserCreateNestedOneWithoutVoteInput(
                  connect: UserWhereUniqueInput(uuid: param.userUiid)),
              candidate: CandidateCreateNestedOneWithoutVoteInput(
                  connect:
                      CandidateWhereUniqueInput(uuid: param.candidateUuid)))));
      return transform(rs);
    }
  }

  @override
  Future<VoteEntity?> getVote(GetVoteParam param) async {
    final voteResult = await _client.vote.findFirst(
        where:
            VoteWhereInput(candidateUuid: PrismaUnion.$2(param.candidateUuid)));
    if (voteResult == null) {
      return null;
    }
    return transform(voteResult);
  }

  @override
  VoteEntity transform(param) {
    final p = param as Vote;
    return VoteEntity(
        candidateId: p.candidateUuid!,
        votedAt: p.votedAt!,
        userId: p.userUuid!,
        uuid: p.uuid!,
        voteCount: (p.voteCount == null) ? 0 : p.voteCount!);
  }
}
