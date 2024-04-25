import 'package:poll_power_api_server/data/models/transform.dart';
import '../../../domain/entities/vote/vote.dart';
import '../../../domain/params/vote/create_vote_param.dart';
import '../../../domain/params/vote/get_vote_param.dart';

abstract class IVoteDatasourceRepository with TransformTo {
  Future<VoteEntity> vote(CreateVoteParam param);
  Future<List<VoteEntity>> getVotes(GetVoteParam param);
  Future<VoteEntity?> getVote(GetVoteParam param);
}
