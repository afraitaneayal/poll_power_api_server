import 'package:openapi_base/openapi_base.dart';
import 'package:poll_power_api_server/common/extension/string_extension.dart';
import 'package:poll_power_api_server/common/helpers/bearer_extractor/bearer_extractor.dart';
import 'package:poll_power_api_server/common/helpers/controller_helper/controller_helper.dart';
import 'package:poll_power_api_server/common/helpers/token_helper/token_helper.dart';
import 'package:poll_power_api_server/di.dart';
import 'package:poll_power_api_server/domain/params/user/get_user_param.dart';
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
final APIError userNotFound = UserNotFoundError("").getAPIError();
final APIError invalidCredentials = InvalidCredentialsError("").getAPIError();
final APIError tokenNotFound = TokenNotFoundError("").getAPIError();
final APIError emailAlreadyExist = EmailAlreadyExist("").getAPIError();
final APIError easyPassword = EasyPasswordError('').getAPIError();
final APIError incorrectEmail = InvalidEmail('').getAPIError();

class PollPowerAPIContractImpl extends Pollpower {
  final OpenApiRequest _request;
  final Usecases _usecases;

  PollPowerAPIContractImpl(this._request, this._usecases);

  @override
  Future<GetCandidatesResponse> getCandidates() async {
    // final String? bearer = BearerExtractor.extract(_request);
    // if (bearer == null) {
    // return GetCandidatesResponse.response401(invalidToken);
    // }

    final candidatesResult =
        await _usecases.getAllCandidateUsecase.trigger(null);
    return await candidatesResult.fold((l) {
      return GetCandidatesResponse.response500(internalServerError(l));
    }, (r) {
      if (r == null || r.isEmpty) {
        return GetCandidatesResponse.response200(
            CandidateResponse(candidates: []));
      }
      final List<Candidate> candidates = r
          .map((e) => Candidate(
              slogan: e.slogan,
              speech: e.speech,
              voteCount: e.vote_count,
              user: User.fromJson(e.user.toJson())))
          .toList();
      return GetCandidatesResponse.response200(
          CandidateResponse(candidates: candidates));
    });
  }

  @override
  Future<LoginUserResponse> loginUser(UserLoginRequest body) async {
    try {
      final LogUserParam param =
          LogUserParam(body.email!, body.password!, body.appKey!);
      final result = await _usecases.logUserUsecase.trigger(param);
      return result.fold((l) {
        if (l is InvalidCredentialsError) {
          return LoginUserResponse.response400(l.getAPIError());
        } else if (l is UserNotFoundError) {
          return LoginUserResponse.response400(userNotFound);
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
        final uuid = await locator.get<TokenHelper>().extractUuid(bearer);
        if (uuid == null || !isTokenValid) {
          return VoteCandidateResponse.response401(invalidToken);
        } else {
          final param = CreateVoteParam(body.candidateId ?? "", uuid);
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

      if (!param.user.password.isValidPassword()) {
        return SignUpCandidateResponse.response400(easyPassword);
      }

      if (!param.user.email.isValidEmail()) {
        return SignUpCandidateResponse.response400(incorrectEmail);
      }

      final result = await _usecases.createCandidateUsecase.trigger(param);
      return await result.fold((l) {
        if (l is EmailAlreadyExist) {
          return SignUpCandidateResponse.response400(emailAlreadyExist);
        }
        return SignUpCandidateResponse.response500(errorSigningCandidate(l));
      }, (r) {
        return SignUpCandidateResponse.response201(Candidate(
            slogan: r.slogan,
            voteCount: r.vote_count,
            user: User.fromJson(r.user.toJson())));
      });
    } catch (e, stackTrace) {
      print(stackTrace.toString());
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

      if (!body.password.isValidPassword()) {
        return SignUpUserResponse.response400(easyPassword);
      }
      if (!body.email.isValidEmail()) {
        return SignUpUserResponse.response400(incorrectEmail);
      }

      final param = ControllerHelper.transformUser(body);
      final result = await _usecases.createUserUsecase.trigger(param);
      return await result.fold((l) {
        if (l is EmailAlreadyExist) {
          return SignUpUserResponse.response400(emailAlreadyExist);
        }
        return SignUpUserResponse.response500(errorSigningCandidate(l));
      }, (r) {
        print(r.toJson());
        return SignUpUserResponse.response201(User.fromJson(r.toJson()));
      });
    } catch (e, stackTrace) {
      print(stackTrace.toString());
      return SignUpUserResponse.response500(
          BadRequestError(stackTrace.toString()).getAPIError());
    }
  }

  @override
  Future<GetUserResponse> getUser() async {
    try {
      // Basicaly the bearer contain the token so
      final String? bearer = BearerExtractor.extract(_request);

      if (bearer == null) {
        return GetUserResponse.response401(tokenNotFound);
      }

      final isTokenValid = await locator.get<TokenHelper>().verifyToken(bearer);
      if (!isTokenValid) {
        return GetUserResponse.response401(invalidToken);
      } else {
        final uuid = await locator.get<TokenHelper>().extractUuid(bearer);
        if (uuid == null || !isTokenValid) {
          return GetUserResponse.response401(invalidToken);
        } else {
          final GetUserParam param = GetUserParam(uuid);
          final result = await _usecases.getUserUsecase.trigger(param);
          return result.fold((l) {
            return GetUserResponse.response500(internalServerError(l));
          }, (r) {
            if (r == null) {
              return GetUserResponse.response401(userNotFound);
            } else {
              return GetUserResponse.response200(User.fromJson(r.toJson()));
            }
          });
        }
      }
    } catch (e, stackTrace) {
      print(e.toString());
      return GetUserResponse.response500(
          InternalServerErrorWhileProccessing(stackTrace.toString())
              .getAPIError());
    }
  }
}
