import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:injectable/injectable.dart';
import 'package:regexpattern/regexpattern.dart';

abstract class IPasswordHelper {
  bool verifyPassword(String passwordFromDB, String passwordFromRequest);
  String hashPassword(String password);
  bool isPasswordValid(String password);
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

  @override
  bool isPasswordValid(String password) {
    return password.isPasswordHard();
  }
}
