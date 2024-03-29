import 'package:injectable/injectable.dart';

abstract class TokenHelper {
  Future<String> generateToken();
  Future<bool> verifyToken(String token);
}

@LazySingleton(as: TokenHelper)
class TokenHelperImpl implements TokenHelper {
  @override
  Future<String> generateToken() async {
    // TODO: implement generateToken
    return "yayahc";
  }

  @override
  Future<bool> verifyToken(String token) async {
    // TODO: implement verifyToken
    return true;
  }
}
