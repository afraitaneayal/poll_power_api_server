import 'package:injectable/injectable.dart';
import 'package:poll_power_api_server/domain/entities/user/user.dart';
import 'package:poll_power_api_server/domain/params/user/create_user_param.dart';
import 'package:poll_power_api_server/domain/params/user/get_user_param.dart';
import 'package:poll_power_api_server/domain/reposirory/user/i_user_repository.dart';

@LazySingleton(as: IUserRepository)
class UserRepositoryImpl implements IUserRepository {
  @override
  Future<UserEntity> createUser(CreateUserParam param) {
    // TODO: implement createUser
    throw UnimplementedError();
  }

  @override
  Future<UserEntity> getUser(GetUserParam param) {
    // TODO: implement getUser
    throw UnimplementedError();
  }
}
