import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:injectable/injectable.dart';
import 'package:jaguar_jwt/jaguar_jwt.dart';

abstract class TokenHelper {
  Future<String> generateToken(String userUuiud);
  Future<bool> verifyToken(String token);
  Future<String?> extractUuid(String token);
  Future<bool> verifyKey(String key);
}

@Singleton(as: TokenHelper)
class TokenHelperImpl implements TokenHelper {
  final String _issuer;
  final String _key;
  final String _appKey;
  TokenHelperImpl(@Named("jwtIssuer") this._issuer, @Named("jwtKey") this._key,
      @Named('appKey') this._appKey);

  @override
  Future<String> generateToken(String userUuid) async {
    final JwtClaim claim = JwtClaim(
        issuer: _issuer,
        maxAge: Duration(days: 1),
        payload: <String, dynamic>{"user_uuid": userUuid},
        issuedAt: DateTime.now());
    final String token = issueJwtHS256(claim, _key);
    return token;
  }

  @override
  Future<bool> verifyToken(String token) async {
    try {
      final JwtClaim decodedClaim = verifyJwtHS256Signature(token, _key);
      decodedClaim.validate(issuer: _issuer);
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<String?> extractUuid(String token) async {
    final JwtClaim decodeClaim = verifyJwtHS256Signature(token, _key);
    return decodeClaim.payload["user_uuid"];
  }

  @override
  Future<bool> verifyKey(String key) async {
    final Digest digest = sha1.convert(utf8.encode(_appKey));
    return (digest.toString() == key);
  }
}
