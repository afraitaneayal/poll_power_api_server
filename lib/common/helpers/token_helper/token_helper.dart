import 'package:dartz/dartz.dart';
import 'package:poll_power_api_server/common/error/error.dart';

abstract class TokenHelper {
  Future<Either<ServerError, String>> generateToken(String key);
  Future<Either<ServerError, bool>> verifyToken();
}

class TokenHelperImpl implements TokenHelper {
  @override
  Future<Either<ServerError, String>> generateToken(String key) {
    // TODO: implement generateToken
    throw UnimplementedError();
  }

  @override
  Future<Either<ServerError, bool>> verifyToken() {
    // TODO: implement verifyToken
    throw UnimplementedError();
  }
}
