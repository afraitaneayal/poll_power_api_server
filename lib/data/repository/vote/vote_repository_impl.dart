import 'package:poll_power_api_server/domain/entities/vote/vote.dart';
import 'package:poll_power_api_server/domain/params/vote/create_vote_param.dart';
import 'package:poll_power_api_server/domain/params/vote/get_vote_param.dart';
import 'package:poll_power_api_server/domain/reposirory/vote/i_vote_repository.dart';

class VoteRepositoryImpl implements IVoteRepository {
  @override
  Future<List<VoteEntity>> getVotes(GetVoteParam param) {
    // TODO: implement getVotes
    throw UnimplementedError();
  }

  @override
  Future<VoteEntity> vote(CreateVoteParam param) {
    // TODO: implement vote
    throw UnimplementedError();
  }
}
