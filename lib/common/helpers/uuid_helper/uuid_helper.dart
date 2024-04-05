import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

abstract class IUuidHelper {
  String generateUuid();
}

@Singleton(as: IUuidHelper)
class UuidHelperImpl implements IUuidHelper {
  @override
  String generateUuid() {
    return Uuid().v1();
  }
}
