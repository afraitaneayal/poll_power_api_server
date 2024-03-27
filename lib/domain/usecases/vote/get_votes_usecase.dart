import 'package:dartz/dartz.dart';
import 'package:poll_power_api_server/common/error/error.dart';
import 'package:poll_power_api_server/domain/entities/vote/vote.dart';
import 'package:poll_power_api_server/domain/params/vote/get_vote_param.dart';
import 'package:poll_power_api_server/domain/reposirory/vote/i_vote_repository.dart';
import 'package:poll_power_api_server/domain/usecases/usecase.dart';

class GetVotesUsecase implements Usecase<GetVoteParam, List<VoteEntity>> {
  final IVoteRepository _iVoteRepository;

  GetVotesUsecase(this._iVoteRepository);

  @override
  Future<Either<ServerError, List<VoteEntity>>> trigger(
      GetVoteParam param) async {
    return await ErrorCatcher.tryCatch(_iVoteRepository.getVotes(param));
  }
}
