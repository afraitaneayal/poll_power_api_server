import 'package:openapi_base/openapi_base.dart';
import 'package:poll_power_api_server/common/helpers/bearer_extractor/bearer_extractor.dart';
import 'package:poll_power_api_server/common/helpers/controller_helper/controller_helper.dart';
import 'package:poll_power_api_server/common/helpers/token_helper/token_helper.dart';
import 'package:poll_power_api_server/domain/params/vote/create_vote_param.dart';
import 'package:poll_power_api_server/presentation/usecases.dart';
import 'package:poll_power_openapi/poll_power_openapi.dart';
import '../../../common/error/error.dart';

APIError internalServerError(ServerError l) =>
    InternalServerErrorWhileProccessing(l.getError()).getAPIError();
final APIError invalidToken = InvalidTokenError("Invalid Token").getAPIError();
APIError errorSigningCandidate(ServerError l) =>
    ErrorWhileSigningUser(l.getError()).getAPIError();

class PollPowerAPIContractImpl extends PollPowerAPIContract {
  final OpenApiRequest _request;
  final Usecases _usecases;

  PollPowerAPIContractImpl(this._request, this._usecases);

  @override
  Future<GetCandidatesResponse> getCandidates() async {
    final String? bearer = BearerExtractor.extract(_request);
    if (bearer == null) {
      return GetCandidatesResponse.response401(invalidToken);
    }

    final candidatesResult =
        await _usecases.getAllCandidateUsecase.trigger(null);
    return await candidatesResult.fold((l) {
      return GetCandidatesResponse.response500(internalServerError(l));
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
    return LoginUserResponse.response500(invalidToken);
  }

  @override
  Future<SubscribeResponse> subscribe() {
    throw UnimplementedError();
  }

  @override
  Future<VoteCandidateResponse> voteCandidate(VotingRequest body) async {
    try {
      final String? bearer = BearerExtractor.extract(_request);
      if (bearer == null) {
        return VoteCandidateResponse.response400(invalidToken);
      }
      final isTokenValid = await TokenHelperImpl().verifyToken();
      return await isTokenValid.fold((l) {
        return VoteCandidateResponse.response400(
            InternalServerErrorWhileProccessing(l.toString()).getAPIError());
      }, (r) async {
        if (r) {
          final param = CreateVoteParam(body.candidateId, body.userId);
          final result = await _usecases.createVoteUsecase.trigger(param);
          return result.fold((l) {
            return VoteCandidateResponse.response500(internalServerError(l));
          }, (r) {
            return VoteCandidateResponse.response200();
          });
        } else {
          return VoteCandidateResponse.response401(
              UnauthorizedUserError("").getAPIError());
        }
      });
    } catch (e) {
      return VoteCandidateResponse.response400(
          BadRequestError(e.toString()).getAPIError());
    }
  }

  @override
  Future<GetBasePathResponse> getBasePath() async {
    return GetBasePathResponse.response200(
        "welcome to poll power api sever ...");
  }

  @override
  Future<SignUpCandidateResponse> signUpCandidate(Candidate body) async {
    try {
      final param = ControllerHelper.transformCandidate(body);
      final result = await _usecases.createCandidateUsecase.trigger(param);
      return await result.fold((l) {
        return SignUpCandidateResponse.response500(errorSigningCandidate(l));
      }, (r) {
        return SignUpCandidateResponse.response201(
            Candidate.fromJson(r.toJson()));
      });
    } catch (e) {
      return SignUpCandidateResponse.response400(
          BadRequestError(e.toString()).getAPIError());
    }
  }

  @override
  Future<SignUpUserResponse> signUpUser(User body) async {
    try {
      final param = ControllerHelper.transformUser(body);
      final result = await _usecases.createUserUsecase.trigger(param);
      return await result.fold((l) {
        return SignUpUserResponse.response500(errorSigningCandidate(l));
      }, (r) {
        return SignUpUserResponse.response201(User.fromJson(r.toJson()));
      });
    } catch (e) {
      return SignUpUserResponse.response400(
          BadRequestError(e.toString()).getAPIError());
    }
  }
}
