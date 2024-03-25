import 'dart:developer';

import 'package:openapi_base/openapi_base.dart';
import 'package:poll_power_api_server/common/error/error.dart';
import 'package:poll_power_openapi/poll_power_openapi.dart';

class PollPowerAPIContractImpl extends PollPowerAPIContract {
  final OpenApiRequest _request;

  PollPowerAPIContractImpl(this._request);

  @override
  Future<GetCandidatesResponse> getCandidates() {
    // TODO: implement getCandidates
    throw UnimplementedError();
  }

  @override
  Future<LoginUserResponse> loginUser(UserLoginRequest body) {
    // TODO: implement loginUser
    throw UnimplementedError();
  }

  @override
  Future<SubscribeResponse> subscribe() {
    // TODO: implement subscribe
    throw UnimplementedError();
  }

  @override
  Future<VoteCandidateResponse> voteCandidate(VotingRequest body) {
    // TODO: implement voteCandidate
    throw UnimplementedError();
  }

  @override
  Future<GetBasePathResponse> getBasePath() async {
    return GetBasePathResponse.response200(
        "welcome to poll power api sever ...");
  }

  @override
  Future<SignUpCandidateResponse> signUpCandidate(Candidate body) {
    // TODO: implement signUpCandidate
    throw UnimplementedError();
  }

  @override
  Future<SignUpUserResponse> signUpUser(User body) async {
    throw UnimplementedError();
  }
}
