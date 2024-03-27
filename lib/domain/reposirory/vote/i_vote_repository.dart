import 'package:poll_power_api_server/domain/params/vote/create_vote_param.dart';
import 'package:poll_power_api_server/domain/params/vote/get_vote_param.dart';
import '../../entities/vote/vote.dart';

abstract class IVoteRepository {
  Future<VoteEntity> vote(CreateVoteParam param);
  Future<List<VoteEntity>> getVotes(GetVoteParam param);
}
