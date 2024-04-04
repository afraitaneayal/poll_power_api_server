import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:poll_power_api_server/common/error/errors.dart';
import 'package:poll_power_api_server/domain/params/candidate/create_candidate_param.dart';
import 'package:poll_power_api_server/domain/reposirory/candidate/i_candidate_repository.dart';
import 'package:poll_power_api_server/domain/usecases/usecase.dart';
import '../../../common/error/error_catcher.dart';
import '../../entities/candidate/candidate.dart';

@singleton
class CreateCandidateUsecase
    implements Usecase<CreateCandidateParam, CandidateEntity> {
  final ICandidateRepository _candidateRepository;

  CreateCandidateUsecase(this._candidateRepository);

  @override
  Future<Either<ServerError, CandidateEntity>> trigger(
      CreateCandidateParam param) async {
    return await ErrorCatcher.tryCatch(
        _candidateRepository.createCandidate(param));
  }
}
