import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:poll_power_api_server/common/error/errors.dart';
import 'package:poll_power_api_server/data/datasources/candidate/i_candidate_datasource_repository.dart';
import 'package:poll_power_api_server/domain/entities/candidate/candidate.dart';
import 'package:poll_power_api_server/domain/params/candidate/create_candidate_param.dart';
import 'package:poll_power_api_server/domain/params/candidate/get_candidate_param.dart';
import 'package:poll_power_api_server/domain/reposirory/candidate/i_candidate_repository.dart';

@LazySingleton(as: ICandidateRepository)
class CandidateRepositoryImpl implements ICandidateRepository {
  final ICandidateDatasourceRepository _candidateDatasourceRepository;

  CandidateRepositoryImpl(this._candidateDatasourceRepository);

  @override
  Future<Either<ServerError, CandidateEntity>> createCandidate(
      CreateCandidateParam param) async {
    return await _candidateDatasourceRepository.createCandidate(param);
  }

  @override
  Future<CandidateEntity?> getCandidate(GetCandidateParam param) async {
    return await _candidateDatasourceRepository.getCandidate(param);
  }

  @override
  Future<List<CandidateEntity>> getAllCandidate() async {
    final candidates = await _candidateDatasourceRepository.getAllCandidate();
    return candidates;
  }
}
