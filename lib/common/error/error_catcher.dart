import 'package:dartz/dartz.dart';

import 'errors.dart';

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
