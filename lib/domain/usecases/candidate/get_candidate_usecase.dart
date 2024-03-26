import 'package:dartz/dartz.dart';
import 'package:poll_power_api_server/common/error/error.dart';
import 'package:poll_power_api_server/domain/params/candidate/get_candidate_param.dart';
import 'package:poll_power_api_server/domain/reposirory/candidate/i_candidate_repository.dart';
import 'package:poll_power_api_server/domain/usecases/usecase.dart';

import '../../entities/candidate/candidate.dart';

class GetCandidateUsecase implements Usecase<GetCandidateParam, Candidate> {
  final ICandidateRepository _candidateRepository;

  GetCandidateUsecase(this._candidateRepository);

  @override
  Future<Either<ServerError, Candidate>> trigger(
      GetCandidateParam param) async {
    return await ErrorCatcher.tryCatch(
        _candidateRepository.getCandidate(param));
  }
}
