import 'package:injectable/injectable.dart';
import 'package:poll_power_api_server/domain/usecases/candidate/create_candidate_usecase.dart';
import 'package:poll_power_api_server/domain/usecases/candidate/get_all_candidate_usecase.dart';
import 'package:poll_power_api_server/domain/usecases/candidate/get_candidate_usecase.dart';
import 'package:poll_power_api_server/domain/usecases/user/create_user_usecase.dart';
import 'package:poll_power_api_server/domain/usecases/user/get_user_usecase.dart';
import 'package:poll_power_api_server/domain/usecases/user/log_user_uscase.dart';
import 'package:poll_power_api_server/domain/usecases/vote/create_vote_usecase.dart';
import 'package:poll_power_api_server/domain/usecases/vote/get_votes_usecase.dart';

@singleton
class Usecases {
  final CreateCandidateUsecase createCandidateUsecase;
  final GetCandidateUsecase getCandidateUsecase;
  final CreateUserUsecase createUserUsecase;
  final GetUserUsecase getUserUsecase;
  final CreateVoteUsecase createVoteUsecase;
  final GetVotesUsecase getVotesUsecase;
  final GetAllCandidateUsecase getAllCandidateUsecase;
  final LogUserUsecase logUserUsecase;

  Usecases(
      this.createCandidateUsecase,
      this.getCandidateUsecase,
      this.createUserUsecase,
      this.getUserUsecase,
      this.createVoteUsecase,
      this.getVotesUsecase,
      this.getAllCandidateUsecase,
      this.logUserUsecase);
}
