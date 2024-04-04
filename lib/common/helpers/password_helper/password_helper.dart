import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:injectable/injectable.dart';

abstract class IPasswordHelper {
  bool verifyPassword(String passwordFromDB, String passwordFromRequest);
  String hashPassword(String password);
}

@Singleton(as: IPasswordHelper)
class PasswordHelperImpl implements IPasswordHelper {
  final String encrypKey;
  PasswordHelperImpl(@Named('encryptKey') this.encrypKey);

  @override
  bool verifyPassword(String passwordFromDB, String passwordFromRequest) {
    return (passwordFromDB == hashPassword(passwordFromRequest));
  }

  @override
  String hashPassword(String password) {
    final Digest digest = sha1.convert(utf8.encode(password));
    return digest.toString();
  }
}
