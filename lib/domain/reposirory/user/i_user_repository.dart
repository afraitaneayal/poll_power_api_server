import 'package:dartz/dartz.dart';
import 'package:poll_power_api_server/common/error/errors.dart';
import 'package:poll_power_api_server/domain/objects/jwt_object.dart';
import 'package:poll_power_api_server/domain/params/user/create_user_param.dart';
import 'package:poll_power_api_server/domain/params/user/get_user_param.dart';
import 'package:poll_power_api_server/domain/params/user/log_user_param.dart';
import '../../entities/user/user.dart';

abstract class IUserRepository {
  Future<Either<ServerError, UserEntity>> createUser(CreateUserParam param);

  Future<Either<ServerError, JwtObject>> logUser(LogUserParam param);

  Future<UserEntity?> getUser(GetUserParam param);
}
