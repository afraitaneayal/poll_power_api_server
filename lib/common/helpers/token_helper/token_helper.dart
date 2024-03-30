import 'package:injectable/injectable.dart';
import 'package:jaguar_jwt/jaguar_jwt.dart';

abstract class TokenHelper {
  Future<String> generateToken(String userUuiud);
  Future<bool> verifyToken(String token);
  Future<String?> extractUid(String token);
}

@Singleton(as: TokenHelper)
class TokenHelperImpl implements TokenHelper {
  final String _issuer;
  final String _key;
  TokenHelperImpl(@Named("jwtIssuer") this._issuer, @Named("jwtKey") this._key);

  @override
  Future<String> generateToken(String userUuid) async {
    final claim = JwtClaim(
        issuer: _issuer,
        maxAge: Duration(days: 1),
        payload: <String, dynamic>{"user_uuid": userUuid},
        issuedAt: DateTime.now());
    final token = issueJwtHS256(claim, _key);
    return token;
  }

  @override
  Future<bool> verifyToken(String token) async {
    try {
      final decodedClaim = verifyJwtHS256Signature(token, _key);
      decodedClaim.validate(issuer: _issuer);
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<String?> extractUid(String token) async {
    final decodeClaim = verifyJwtHS256Signature(token, _key);
    return decodeClaim.payload["user_uuid"];
  }
}
