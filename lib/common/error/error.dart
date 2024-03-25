import 'package:poll_power_openapi/poll_power_openapi.dart';

class ErrorCatcher {
  static Future<void> tryCatch<T>(Future<T> fn) async {
    try {
      await fn;
    } catch (e) {
      final error = e.toString();
      print(error);
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
