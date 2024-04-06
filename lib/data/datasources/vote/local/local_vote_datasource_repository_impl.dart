import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:orm/orm.dart';
import 'package:poll_power_api_server/common/error/errors.dart';
import 'package:poll_power_api_server/data/datasources/vote/i_vote_datasource_repository.dart';
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
  Future<VoteEntity> vote(CreateVoteParam param) {
    throw GenericServerError("Feature in progress").getError();
  }

  @override
  Future<VoteEntity> getVote(GetVoteParam param) async {
    final voteResult = await _client.vote.findFirst(
        where:
            VoteWhereInput(candidateUuid: PrismaUnion.$2(param.candidateUuid)));
    return transform(voteResult);
  }

  @override
  VoteEntity transform(p) {
    final param = p as Vote;
    return VoteEntity(
        candidateId: param.candidateUuid!,
        votedAt: param.votedAt!,
        userId: param.userUuid!,
        uuid: param.uuid!,
        voteCount: param.voteCount!);
  }
}
