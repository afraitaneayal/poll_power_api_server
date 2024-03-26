import 'package:dartz/dartz.dart';
import 'package:poll_power_api_server/common/error/error.dart';

abstract class Usecase<Param, T> {
  Future<Either<ServerError, T>> trigger(Param param);
}
