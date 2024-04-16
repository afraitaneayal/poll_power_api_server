import 'package:dartz/dartz.dart';
import 'package:poll_power_api_server/common/error/errors.dart';
import 'package:poll_power_api_server/data/models/transform.dart';
import 'package:poll_power_api_server/domain/entities/user/user.dart';
import 'package:poll_power_api_server/domain/objects/jwt_object.dart';
import 'package:poll_power_api_server/domain/params/user/create_user_param.dart';
import 'package:poll_power_api_server/domain/params/user/get_user_param.dart';
import 'package:poll_power_api_server/domain/params/user/log_user_param.dart';

abstract class IUserDatasourceRepository with TransformTo {
  Future<Either<ServerError, UserEntity>> createUser(CreateUserParam param);
  Future<Either<ServerError, JwtObject>> logUser(LogUserParam param);
  Future<UserEntity?> getUser(GetUserParam param);
}
