import 'package:poll_power_api_server/domain/params/user/create_user_param.dart';
import 'package:poll_power_api_server/domain/params/user/get_user_param.dart';
import '../../entities/user/user.dart';

abstract class IUserRepository {
  Future<UserEntity> createUser(CreateUserParam param);

  Future<UserEntity> getUser(GetUserParam param);
}
