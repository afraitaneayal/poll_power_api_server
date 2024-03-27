import 'package:dartz/dartz.dart';
import 'package:poll_power_openapi/poll_power_openapi.dart';

class ErrorCatcher {
  static Future<Either<ServerError, T>> tryCatch<T>(Future<T> fn) async {
    try {
      final result = await fn;
      return right(result);
    } catch (e) {
      final error = e.toString();
      return left(GenericServerError(
          devMessage: error, userFriendlyMessage: "Une erreur c'est produite"));
    }
  }
}

abstract class ServerError {
  APIError getError();
}

class GenericServerError extends ServerError {
  final String devMessage;
  final String userFriendlyMessage;

  GenericServerError(
      {required this.devMessage, required this.userFriendlyMessage});

  @override
  APIError getError() {
    return APIError(
        error: APIErrorContent(
            devMessage: devMessage, userFriendlyMessage: userFriendlyMessage));
  }
}

class UserAlreadyExistError extends GenericServerError {
  UserAlreadyExistError()
      : super(
            devMessage: "User already exist in the db",
            userFriendlyMessage: "L'utilisateur existe deja");
}

class InvalidTokenError extends GenericServerError {
  InvalidTokenError()
      : super(
            devMessage: "Invalid token given",
            userFriendlyMessage: "Token invalid");
}
