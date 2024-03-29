import 'package:injectable/injectable.dart';
import 'package:poll_power_api_server/common/error/error.dart';
import 'package:poll_power_api_server/data/datasources/vote/i_vote_datasource_repository.dart';
import 'package:poll_power_api_server/domain/entities/vote/vote.dart';
import 'package:poll_power_api_server/domain/params/vote/create_vote_param.dart';
import 'package:poll_power_api_server/domain/params/vote/get_vote_param.dart';

@LazySingleton(as: IVoteDatasourceRepository)
class LocalVoteDatasourceImpl implements IVoteDatasourceRepository {
  @override
  Future<List<VoteEntity>> getVotes(GetVoteParam param) {
    // TODO: implement getVotes
    throw UnimplementedError();
  }

  @override
  Future<VoteEntity> vote(CreateVoteParam param) {
    // TODO: implement vote
    throw GenericServerError("Feature in progress").getError();
  }
}
