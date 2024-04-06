import 'package:dotenv/dotenv.dart';
import 'package:injectable/injectable.dart';

final dotEnvLoader = DotEnv(includePlatformEnvironment: true);

@module
abstract class AuthSecrets {
  @singleton
  @Named('jwtKey')
  String get jwtKey => dotEnvLoader["JWT_KEY"]!;

  @singleton
  @Named('jwtIssuer')
  String get jwtIssuer => dotEnvLoader["JWT_ISSUER"]!;

  @singleton
  @Named("authKey")
  String get authKey => dotEnvLoader["AUTH_KEY"]!;

  @singleton
  @Named('encryptKey')
  String get encryptKey => dotEnvLoader['ENCRYPT_KEY']!;

  @singleton
  @Named("appKey")
  String get appKey => dotEnvLoader["APP_KEY"]!;
}
