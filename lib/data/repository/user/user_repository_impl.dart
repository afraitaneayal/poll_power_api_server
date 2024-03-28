import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:poll_power_api_server/common/error/error.dart';
import 'package:poll_power_api_server/data/datasources/user/i_user_datasource_repository.dart';
import 'package:poll_power_api_server/domain/entities/user/user.dart';
import 'package:poll_power_api_server/domain/objects/jwt_object.dart';
import 'package:poll_power_api_server/domain/params/user/create_user_param.dart';
import 'package:poll_power_api_server/domain/params/user/get_user_param.dart';
import 'package:poll_power_api_server/domain/params/user/log_user_param.dart';
import 'package:poll_power_api_server/domain/reposirory/user/i_user_repository.dart';

@LazySingleton(as: IUserRepository)
class UserRepositoryImpl implements IUserRepository {
  final IUserDatasourceRepository _userDatasourceRepository;

  UserRepositoryImpl(this._userDatasourceRepository);

  @override
  Future<UserEntity> createUser(CreateUserParam param) async {
    return await _userDatasourceRepository.createUser(param);
  }

  @override
  Future<UserEntity?> getUser(GetUserParam param) async {
    return await _userDatasourceRepository.getUser(param);
  }

  @override
  Future<Either<ServerError, JwtObject>> logUser(LogUserParam param) async {
    return await _userDatasourceRepository.logUser(param);
  }
}
