import 'package:injectable/injectable.dart';
import 'package:poll_power_api_server/data/datasources/vote/i_vote_datasource_repository.dart';
import 'package:poll_power_api_server/domain/entities/vote/vote.dart';
import 'package:poll_power_api_server/domain/params/vote/create_vote_param.dart';
import 'package:poll_power_api_server/domain/params/vote/get_vote_param.dart';
import 'package:poll_power_api_server/domain/reposirory/vote/i_vote_repository.dart';

@LazySingleton(as: IVoteRepository)
class VoteRepositoryImpl implements IVoteRepository {
  final IVoteDatasourceRepository _voteDatasourceRepository;

  VoteRepositoryImpl(this._voteDatasourceRepository);

  @override
  Future<List<VoteEntity>> getVotes(GetVoteParam param) async {
    return await _voteDatasourceRepository.getVotes(param);
  }

  @override
  Future<VoteEntity> vote(CreateVoteParam param) async {
    return await _voteDatasourceRepository.vote(param);
  }

  @override
  Future<VoteEntity?> getVote(GetVoteParam param) async {
    return await _voteDatasourceRepository.getVote(param);
  }
}
