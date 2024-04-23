import 'package:poll_power_openapi/poll_power_openapi.dart';
import 'api_error_helper.dart';

abstract class ServerError {
  String getError();
}

class GenericServerError extends ServerError {
  final String error;
  GenericServerError(this.error);

  @override
  String getError() {
    return error;
  }
}

class TokenNotFoundError extends GenericServerError with APIErrorHelper {
  TokenNotFoundError(super.error);

  // Get API error
  @override
  APIError getAPIError() {
    return APIError(
        error: APIErrorError(
            devMessage: (error.isEmpty) ? "Token not foundd" : error,
            userFriendlyMessage: "Token not found"));
  }
}

class BadRequestError extends GenericServerError with APIErrorHelper {
  BadRequestError(super.error);

  // Get API error
  @override
  APIError getAPIError() {
    return APIError(
        error: APIErrorError(
            devMessage: (error.isEmpty) ? "Bad request" : error,
            userFriendlyMessage: "Bad request"));
  }
}

class UserAlreadyExistError extends GenericServerError with APIErrorHelper {
  final String stackTrace;
  UserAlreadyExistError(this.stackTrace) : super(stackTrace);

// Get API error
  @override
  APIError getAPIError() {
    return APIError(
        error: APIErrorError(
            devMessage: stackTrace,
            userFriendlyMessage: "User already exist in the system"));
  }
}

class InvalidTokenError extends GenericServerError with APIErrorHelper {
  final String stackTrace;
  InvalidTokenError(this.stackTrace) : super(stackTrace);

  // Get API error
  @override
  APIError getAPIError() {
    return APIError(
        error: APIErrorError(
            devMessage: stackTrace, userFriendlyMessage: "Invalid token"));
  }
}

class InvalidCredentialsError extends GenericServerError with APIErrorHelper {
  final String stackTrace;
  InvalidCredentialsError(this.stackTrace) : super(stackTrace);

  // Get API error
  @override
  APIError getAPIError() {
    return APIError(
        error: APIErrorError(
            devMessage: (stackTrace.isEmpty) ? "Invalid password" : stackTrace,
            userFriendlyMessage: "Invalid email or password"));
  }
}

class InternalServerErrorWhileProccessing extends GenericServerError
    with APIErrorHelper {
  final String stackTrace;
  InternalServerErrorWhileProccessing(this.stackTrace) : super(stackTrace);

  // Get API error
  @override
  APIError getAPIError() {
    return APIError(
        error: APIErrorError(
            devMessage: stackTrace,
            userFriendlyMessage: "Something went wrong with the server"));
  }
}

class UnauthorizedUserError extends GenericServerError with APIErrorHelper {
  UnauthorizedUserError(super.error);

  // Get API error
  @override
  APIError getAPIError() {
    return APIError(
        error: APIErrorError(
            devMessage: (error.isEmpty) ? "Unauthorized" : error,
            userFriendlyMessage: "Unauthorized"));
  }
}

class ErrorWhileSigningUser extends GenericServerError with APIErrorHelper {
  final String stackTrace;
  ErrorWhileSigningUser(this.stackTrace) : super(stackTrace);

  // Get API error
  @override
  APIError getAPIError() {
    return APIError(
        error: APIErrorError(
            devMessage: stackTrace,
            userFriendlyMessage:
                "The signing process failed please try again"));
  }
}

class UserNotFoundError extends GenericServerError with APIErrorHelper {
  final String stackTrace;
  UserNotFoundError(this.stackTrace) : super(stackTrace);

  // Get API error
  @override
  APIError getAPIError() {
    return APIError(
        error: APIErrorError(
            devMessage: (stackTrace.isEmpty)
                ? "User not found in the system"
                : stackTrace,
            userFriendlyMessage: "User not found in the system"));
  }
}

class EmailAlreadyExist extends GenericServerError with APIErrorHelper {
  final String stackTrace;
  EmailAlreadyExist(this.stackTrace) : super(stackTrace);

  // Get API error
  @override
  APIError getAPIError() {
    return APIError(
        error: APIErrorError(
            devMessage: (stackTrace.isEmpty)
                ? "User already in the system"
                : stackTrace,
            userFriendlyMessage: "Email already exist"));
  }
}

class EasyPasswordError extends GenericServerError with APIErrorHelper {
  final String stackTrace;
  EasyPasswordError(this.stackTrace) : super(stackTrace);

  // Get API error
  @override
  APIError getAPIError() {
    return APIError(
        error: APIErrorError(
            devMessage: (stackTrace.isEmpty)
                ? "The password set by user is not strong"
                : stackTrace,
            userFriendlyMessage: "The password is not strong"));
  }
}
