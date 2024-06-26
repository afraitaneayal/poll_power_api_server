import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:orm/orm.dart';
import 'package:poll_power_api_server/common/error/errors.dart';
import 'package:poll_power_api_server/common/helpers/app_key_helper/app_key_helper.dart';
import 'package:poll_power_api_server/common/helpers/token_helper/token_helper.dart';
import 'package:poll_power_api_server/common/helpers/uuid_helper/uuid_helper.dart';
import 'package:poll_power_api_server/data/datasources/user/i_user_datasource_repository.dart';
import 'package:poll_power_api_server/di.dart';
import 'package:poll_power_api_server/domain/entities/user/user.dart';
import 'package:poll_power_api_server/domain/objects/jwt_object.dart';
import 'package:poll_power_api_server/domain/params/user/create_user_param.dart';
import 'package:poll_power_api_server/domain/params/user/get_user_param.dart';
import 'package:poll_power_api_server/domain/params/user/log_user_param.dart';
import 'package:poll_power_api_server/gen/prisma/client.dart';
import 'package:poll_power_api_server/gen/prisma/model.dart';
import 'package:poll_power_api_server/gen/prisma/prisma.dart';

import '../../../../common/helpers/password_helper/password_helper.dart';

@LazySingleton(as: IUserDatasourceRepository)
class LocalUserDatasourceImpl implements IUserDatasourceRepository {
  final PrismaClient _client;
  final String _key;

  LocalUserDatasourceImpl(
      @Named('prisma') this._client, @Named('authKey') this._key);

  @override
  Future<Either<ServerError, UserEntity>> createUser(
      CreateUserParam param) async {
    if (await isEmailAlreadyExist(param.email)) {
      return left(EmailAlreadyExist(''));
    } else {
      final userResult = await _client.user.create(
          data: PrismaUnion.$1(UserCreateInput(
              uuid: locator.get<IUuidHelper>().generateUuid(),
              firstName: param.firstName,
              lastName: param.lastName,
              email: param.email,
              password:
                  locator.get<IPasswordHelper>().hashPassword(param.password),
              image: param.image,
              grade: param.grade,
              areaOfStudy: param.areaOfStudy)));

      return right(transform(userResult));
    }
  }

  @override
  Future<UserEntity?> getUser(GetUserParam param) async {
    final user = await _client.user
        .findFirst(where: UserWhereInput(uuid: PrismaUnion.$2(param.uuid)));

    return (user != null) ? transform(user) : null;
  }

  @override
  Future<Either<ServerError, JwtObject>> logUser(LogUserParam param) async {
    final user = await _client.user
        .findFirst(where: UserWhereInput(email: PrismaUnion.$2(param.email)));

    if (user != null) {
      final isPasswordValid = locator
          .get<IPasswordHelper>()
          .verifyPassword(user.password!, param.password);
      final isAppKeyValid =
          locator.get<IAppKeyHelper>().validateAppKey(param.appKey);
      return (isPasswordValid && isAppKeyValid)
          ? right(JwtObject(
              refresh_token:
                  await locator.get<TokenHelper>().generateToken(user.uuid!),
              key: locator.get<IPasswordHelper>().hashPassword(_key),
              token:
                  await locator.get<TokenHelper>().generateToken(user.uuid!)))
          : left(InvalidCredentialsError(""));
    } else {
      return left(UserNotFoundError(""));
    }
  }

  @override
  UserEntity transform(param) {
    final User p = param as User;
    return UserEntity(
        uuid: p.uuid!,
        email: p.email!,
        password: p.password!,
        first_name: p.firstName!,
        last_name: p.lastName!,
        grade: p.grade!,
        area_of_study: p.areaOfStudy!,
        image: p.image);
  }

  Future<bool> isEmailAlreadyExist(String email) async {
    final user = await _client.user
        .findFirst(where: UserWhereInput(email: PrismaUnion.$2(email)));
    return user != null;
  }
}
