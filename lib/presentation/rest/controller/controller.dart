import 'package:openapi_base/openapi_base.dart';
import 'package:poll_power_api_server/common/helpers/bearer_extractor/bearer_extractor.dart';
import 'package:poll_power_api_server/common/helpers/controller_helper/controller_helper.dart';
import 'package:poll_power_api_server/common/helpers/token_helper/token_helper.dart';
import 'package:poll_power_api_server/di.dart';
import 'package:poll_power_api_server/domain/params/user/log_user_param.dart';
import 'package:poll_power_api_server/domain/params/vote/create_vote_param.dart';
import 'package:poll_power_api_server/presentation/usecases.dart';
import 'package:poll_power_openapi/poll_power_openapi.dart';
import '../../../common/error/errors.dart';

APIError internalServerError(ServerError l) =>
    InternalServerErrorWhileProccessing(l.getError()).getAPIError();
final APIError invalidToken = InvalidTokenError("Invalid Token").getAPIError();
APIError errorSigningCandidate(ServerError l) =>
    ErrorWhileSigningUser(l.getError()).getAPIError();
final userNotFound = UserNotFoundError("").getAPIError();
final tokenNotFound = TokenNotFoundError("").getAPIError();

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
    try {
      final LogUserParam param = LogUserParam(body.email!, body.password!);
      final result = await _usecases.logUserUsecase.trigger(param);
      return result.fold((l) {
        if (l is InvalidCredentialsError) {
          return LoginUserResponse.response500(l.getAPIError());
        } else if (l is UserNotFoundError) {
          return LoginUserResponse.response500(userNotFound);
        } else {
          return LoginUserResponse.response500(internalServerError(l));
        }
      }, (r) {
        return LoginUserResponse.response200(JWTresponse.fromJson(r.toJson()));
      });
    } catch (e, stackTrace) {
      print(e.toString());
      return LoginUserResponse.response500(
          BadRequestError(stackTrace.toString()).getAPIError());
    }
  }

  @override
  Future<SubscribeResponse> subscribe() {
    throw UnimplementedError();
  }

  @override
  Future<VoteCandidateResponse> voteCandidate(VotingRequest body) async {
    try {
      // Basicaly the bearer contain the token so
      final String? bearer = BearerExtractor.extract(_request);

      if (bearer == null) {
        return VoteCandidateResponse.response401(tokenNotFound);
      }

      final isTokenValid = await locator.get<TokenHelper>().verifyToken(bearer);
      if (!isTokenValid) {
        return VoteCandidateResponse.response401(invalidToken);
      } else {
        final uuid = await locator.get<TokenHelper>().extractUid(bearer);
        if (uuid == null || !isTokenValid) {
          return VoteCandidateResponse.response401(invalidToken);
        } else {
          final param = CreateVoteParam(body.candidateId, uuid);
          final result = await _usecases.createVoteUsecase.trigger(param);
          return result.fold((l) {
            return VoteCandidateResponse.response500(internalServerError(l));
          }, (r) {
            return VoteCandidateResponse.response200();
          });
        }
      }
    } catch (e, stackTrace) {
      print(e.toString());
      return VoteCandidateResponse.response500(
          InternalServerErrorWhileProccessing(stackTrace.toString())
              .getAPIError());
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
    } catch (e, stackTrace) {
      print(e.toString());
      return SignUpCandidateResponse.response400(
          BadRequestError(stackTrace.toString()).getAPIError());
    }
  }

  @override
  Future<SignUpUserResponse> signUpUser(User body) async {
    try {
      if (body.email.isEmpty ||
          body.password.isEmpty ||
          body.firstName.isEmpty) {
        return SignUpUserResponse.response400(
            BadRequestError("").getAPIError());
      }
      final param = ControllerHelper.transformUser(body);
      final result = await _usecases.createUserUsecase.trigger(param);
      return await result.fold((l) {
        return SignUpUserResponse.response500(errorSigningCandidate(l));
      }, (r) {
        print(r.toJson());
        return SignUpUserResponse.response201(User.fromJson(r.toJson()));
      });
    } catch (e, stackTrace) {
      print(e.toString());
      return SignUpUserResponse.response400(
          BadRequestError(stackTrace.toString()).getAPIError());
    }
  }
}
