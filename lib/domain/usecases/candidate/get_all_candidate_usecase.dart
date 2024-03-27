import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:poll_power_api_server/common/error/error.dart';
import 'package:poll_power_api_server/domain/entities/candidate/candidate.dart';
import 'package:poll_power_api_server/domain/reposirory/candidate/i_candidate_repository.dart';
import 'package:poll_power_api_server/domain/usecases/usecase.dart';

@singleton
class GetAllCandidateUsecase implements Usecase<void, List<CandidateEntity>> {
  final ICandidateRepository _candidateRepository;

  GetAllCandidateUsecase(this._candidateRepository);

  @override
  Future<Either<ServerError, List<CandidateEntity>?>> trigger(
      void param) async {
    return await ErrorCatcher.tryCatch(_candidateRepository.getAllCandidate());
  }
}
