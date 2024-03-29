import 'package:dartz/dartz.dart';
import 'package:poll_power_openapi/poll_power_openapi.dart';

class ErrorCatcher {
  static Future<Either<ServerError, T>> tryCatch<T>(Future<T> fn) async {
    try {
      final result = await fn;
      return right(result);
    } catch (e) {
      final error = e.toString();
      print(error);
      return left(GenericServerError(error));
    }
  }
}

abstract class ServerError {
  String getError();
}

// Get API error
APIError getAPIError(String devMessage, String userFriendlyMessage) {
  return APIError(
      error: APIErrorContent(
          devMessage: devMessage, userFriendlyMessage: userFriendlyMessage));
}

class GenericServerError extends ServerError {
  final String error;
  GenericServerError(this.error);

  @override
  String getError() {
    return error;
  }
}

class BadRequestError extends GenericServerError {
  BadRequestError(super.error);

  // Get API error
  APIError getAPIError() {
    return APIError(
        error: APIErrorContent(
            devMessage: (error.isEmpty) ? "Bad request" : error,
            userFriendlyMessage: "Bad request"));
  }
}

class UserAlreadyExistError extends GenericServerError {
  final String stackTrace;
  UserAlreadyExistError(this.stackTrace) : super(stackTrace);

// Get API error
  APIError getAPIError() {
    return APIError(
        error: APIErrorContent(
            devMessage: stackTrace,
            userFriendlyMessage: "User already exist in the system"));
  }
}

class InvalidTokenError extends GenericServerError {
  final String stackTrace;
  InvalidTokenError(this.stackTrace) : super(stackTrace);

  // Get API error
  APIError getAPIError() {
    return APIError(
        error: APIErrorContent(
            devMessage: stackTrace, userFriendlyMessage: "Invalid token"));
  }
}

class InvalidCredentialsError extends GenericServerError {
  final String stackTrace;
  InvalidCredentialsError(this.stackTrace) : super(stackTrace);

  // Get API error
  APIError getAPIError() {
    return APIError(
        error: APIErrorContent(
            devMessage: (stackTrace.isEmpty) ? "Invalid password" : stackTrace,
            userFriendlyMessage: "Invalid email or password"));
  }
}

class InternalServerErrorWhileProccessing extends GenericServerError {
  final String stackTrace;
  InternalServerErrorWhileProccessing(this.stackTrace) : super(stackTrace);

  // Get API error
  APIError getAPIError() {
    return APIError(
        error: APIErrorContent(
            devMessage: stackTrace,
            userFriendlyMessage: "Something went wrong with the server"));
  }
}

class UnauthorizedUserError extends GenericServerError {
  UnauthorizedUserError(super.error);

  // Get API error
  APIError getAPIError() {
    return APIError(
        error: APIErrorContent(
            devMessage: (error.isEmpty) ? "Unauthorized" : error,
            userFriendlyMessage: "Unauthorized"));
  }
}

class ErrorWhileSigningUser extends GenericServerError {
  final String stackTrace;
  ErrorWhileSigningUser(this.stackTrace) : super(stackTrace);

  // Get API error
  APIError getAPIError() {
    return APIError(
        error: APIErrorContent(
            devMessage: stackTrace,
            userFriendlyMessage:
                "The signing process failed please try again"));
  }
}

class UserNotFoundError extends GenericServerError {
  final String stackTrace;
  UserNotFoundError(this.stackTrace) : super(stackTrace);

  // Get API error
  APIError getAPIError() {
    return APIError(
        error: APIErrorContent(
            devMessage: (stackTrace.isEmpty)
                ? "User not found in the system"
                : stackTrace,
            userFriendlyMessage: "User not found"));
  }
}
