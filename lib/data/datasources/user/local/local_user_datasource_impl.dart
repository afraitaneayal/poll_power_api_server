import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:orm/orm.dart';
import 'package:poll_power_api_server/common/error/error.dart';
import 'package:poll_power_api_server/common/helpers/token_helper/token_helper.dart';
import 'package:poll_power_api_server/data/datasources/user/i_user_datasource_repository.dart';
import 'package:poll_power_api_server/di.dart';
import 'package:poll_power_api_server/domain/entities/user/user.dart';
import 'package:poll_power_api_server/domain/objects/jwt_object.dart';
import 'package:poll_power_api_server/domain/params/user/create_user_param.dart';
import 'package:poll_power_api_server/domain/params/user/get_user_param.dart';
import 'package:poll_power_api_server/domain/params/user/log_user_param.dart';
import 'package:poll_power_api_server/gen/prisma/client.dart';
import 'package:poll_power_api_server/gen/prisma/prisma.dart';

import '../../../../common/helpers/password_helper/password_helper.dart';

@LazySingleton(as: IUserDatasourceRepository)
class LocalUserDatasourceImpl implements IUserDatasourceRepository {
  final PrismaClient _client;

  LocalUserDatasourceImpl(@Named('prisma') this._client);

  @override
  Future<UserEntity> createUser(CreateUserParam param) async {
    final userResult = await _client.user.create(
        data: PrismaUnion.$1(UserCreateInput(
            uuid: "1D",
            firstName: param.firstName,
            lastName: param.lastName,
            email: param.email,
            password: param.password,
            image: (param.image == null)
                ? PrismaUnion.$2(PrismaNull())
                : PrismaUnion.$1(param.image!),
            grade: param.grade,
            areaOfStudy: param.areaOfStudy)));

    return transform(userResult);
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
      final isValid =
          PasswordHelper.verifyPassword(user.password, param.password);
      return isValid
          ? right(JwtObject(
              refresh: await locator.get<TokenHelper>().generateToken(),
              key: "key",
              token: await locator.get<TokenHelper>().generateToken()))
          : left(InvalidCredentialsError(""));
    } else {
      return left(UserNotFoundError(""));
    }
  }

  @override
  UserEntity transform(param) {
    return UserEntity(
        uuid: param.uuid,
        email: param.email,
        password: param.password,
        firstName: param.firstName,
        lastName: param.lastName,
        grade: param.grade,
        areaOfStudy: param.areaOfStudy,
        image: param.image);
  }
}