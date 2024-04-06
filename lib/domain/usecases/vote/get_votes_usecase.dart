import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:poll_power_api_server/common/error/errors.dart';
import 'package:poll_power_api_server/domain/entities/vote/vote.dart';
import 'package:poll_power_api_server/domain/params/vote/get_vote_param.dart';
import 'package:poll_power_api_server/domain/reposirory/vote/i_vote_repository.dart';
import 'package:poll_power_api_server/domain/usecases/usecase.dart';

import '../../../common/error/error_catcher.dart';

@singleton
class GetVotesUsecase implements Usecase<GetVoteParam, VoteEntity> {
  final IVoteRepository _iVoteRepository;

  GetVotesUsecase(this._iVoteRepository);

  @override
  Future<Either<ServerError, VoteEntity?>> trigger(GetVoteParam param) async {
    return await ErrorCatcher.tryCatch(_iVoteRepository.getVote(param));
  }
}
