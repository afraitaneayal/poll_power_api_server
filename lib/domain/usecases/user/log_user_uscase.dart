import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:poll_power_api_server/common/error/errors.dart';
import 'package:poll_power_api_server/domain/objects/jwt_object.dart';
import 'package:poll_power_api_server/domain/params/user/log_user_param.dart';
import 'package:poll_power_api_server/domain/reposirory/user/i_user_repository.dart';
import 'package:poll_power_api_server/domain/usecases/usecase.dart';

import '../../../common/error/error_catcher.dart';

@singleton
class LogUserUsecase implements Usecase<LogUserParam, JwtObject> {
  final IUserRepository _userRepository;
  LogUserUsecase(this._userRepository);

  @override
  Future<Either<ServerError, JwtObject>> trigger(LogUserParam param) async {
    final result = await ErrorCatcher.tryCatch(_userRepository.logUser(param));
    return await result.fold((l) => left(l), (r) async {
      return await r.fold((l) => left(l), (r) {
        return right(r);
      });
    });
  }
}
