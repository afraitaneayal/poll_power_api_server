import 'package:poll_power_api_server/data/models/transform.dart';
import 'package:poll_power_api_server/domain/entities/candidate/candidate.dart';
import 'package:poll_power_api_server/domain/params/candidate/create_candidate_param.dart';
import 'package:poll_power_api_server/domain/params/candidate/get_candidate_param.dart';

abstract class ICandidateDatasourceRepository with TransformTo {
  Future<CandidateEntity> createCandidate(CreateCandidateParam param);
  Future<CandidateEntity> getCandidate(GetCandidateParam param);
}
