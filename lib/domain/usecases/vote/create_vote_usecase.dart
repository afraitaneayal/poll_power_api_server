import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:poll_power_api_server/common/error/error.dart';
import 'package:poll_power_api_server/domain/entities/vote/vote.dart';
import 'package:poll_power_api_server/domain/params/vote/create_vote_param.dart';
import 'package:poll_power_api_server/domain/reposirory/vote/i_vote_repository.dart';
import 'package:poll_power_api_server/domain/usecases/usecase.dart';

@singleton
class CreateVoteUsecase implements Usecase<CreateVoteParam, VoteEntity> {
  final IVoteRepository _iVoteRepository;

  CreateVoteUsecase(this._iVoteRepository);

  @override
  Future<Either<ServerError, VoteEntity>> trigger(CreateVoteParam param) async {
    return await ErrorCatcher.tryCatch(_iVoteRepository.vote(param));
  }
}
