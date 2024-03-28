import 'package:injectable/injectable.dart';

abstract class TokenHelper {
  Future<String> generateToken();
  Future<bool> verifyToken(String token);
}

@LazySingleton(as: TokenHelper)
class TokenHelperImpl implements TokenHelper {
  @override
  Future<String> generateToken() {
    // TODO: implement generateToken
    throw UnimplementedError();
  }

  @override
  Future<bool> verifyToken(String token) {
    // TODO: implement verifyToken
    throw UnimplementedError();
  }
}
