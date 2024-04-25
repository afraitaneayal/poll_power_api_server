import 'package:dartz/dartz.dart';
import 'package:poll_power_api_server/common/error/errors.dart';
import 'package:poll_power_api_server/domain/params/candidate/create_candidate_param.dart';
import 'package:poll_power_api_server/domain/params/candidate/get_candidate_param.dart';
import '../../entities/candidate/candidate.dart';

abstract class ICandidateRepository {
  Future<Either<ServerError, CandidateEntity>> createCandidate(
      CreateCandidateParam param);
  Future<CandidateEntity?> getCandidate(GetCandidateParam param);
  Future<List<CandidateEntity>> getAllCandidate();
}
