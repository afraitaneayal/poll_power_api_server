import 'package:dartz/dartz.dart';
import 'package:poll_power_api_server/common/error/error.dart';
import 'package:poll_power_api_server/domain/params/vote/create_vote_param.dart';
import '../../entities/vote/vote.dart';

abstract class IVoteRepository {
  Future<Either<ServerError, Vote>> vote(CreateVoteParam param);
}
