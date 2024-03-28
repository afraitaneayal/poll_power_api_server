import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:poll_power_api_server/common/error/error.dart';
import 'package:poll_power_api_server/domain/params/user/get_user_param.dart';
import 'package:poll_power_api_server/domain/reposirory/user/i_user_repository.dart';
import 'package:poll_power_api_server/domain/usecases/usecase.dart';
import '../../entities/user/user.dart';

@singleton
class GetUserUsecase implements Usecase<GetUserParam, UserEntity> {
  final IUserRepository _userRepository;

  GetUserUsecase(this._userRepository);

  @override
  Future<Either<ServerError, UserEntity?>> trigger(GetUserParam param) async {
    return await ErrorCatcher.tryCatch(_userRepository.getUser(param));
  }
}
