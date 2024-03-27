import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:poll_power_api_server/common/error/error.dart';
import 'package:poll_power_api_server/domain/params/user/create_user_param.dart';
import 'package:poll_power_api_server/domain/reposirory/user/i_user_repository.dart';
import 'package:poll_power_api_server/domain/usecases/usecase.dart';
import '../../entities/user/user.dart';

@singleton
class CreateUserUsecase implements Usecase<CreateUserParam, UserEntity> {
  final IUserRepository _userRepository;

  CreateUserUsecase(this._userRepository);

  @override
  Future<Either<ServerError, UserEntity>> trigger(CreateUserParam param) async {
    final user = await ErrorCatcher.tryCatch(_userRepository.createUser(param));
    return user;
  }
}
