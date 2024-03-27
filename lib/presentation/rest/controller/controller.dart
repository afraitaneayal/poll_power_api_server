import 'package:openapi_base/openapi_base.dart';
import 'package:poll_power_api_server/common/helpers/bearer_extractor/bearer_extractor.dart';
import 'package:poll_power_api_server/presentation/usecases.dart';
import 'package:poll_power_openapi/poll_power_openapi.dart';
import '../../../common/error/error.dart';

class PollPowerAPIContractImpl extends PollPowerAPIContract {
  final OpenApiRequest _request;
  final Usecases _usecases;

  PollPowerAPIContractImpl(this._request, this._usecases);

  @override
  Future<GetCandidatesResponse> getCandidates() async {
    final String? bearer = BearerExtractor.extract(_request);
    if (bearer == null) {
      return GetCandidatesResponse.response401(InvalidTokenError().getError());
    }

    final candidatesResult =
        await _usecases.getAllCandidateUsecase.trigger(null);
    return candidatesResult.fold((l) {
      return GetCandidatesResponse.response500(
          InternalServerErrorWhileProccessing().getError());
    }, (r) {
      if (r == null || r.isEmpty) {
        return GetCandidatesResponse.response200([]);
      }
      final candidates = r.map((e) => e.toJson()).toList();
      return GetCandidatesResponse.response200(
          candidates.map((e) => Candidate.fromJson(e)).toList());
    });
  }

  @override
  Future<LoginUserResponse> loginUser(UserLoginRequest body) async {
    return LoginUserResponse.response500(InvalidTokenError().getError());
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
