import 'package:uuid/uuid.dart';

abstract class IUuidHelper {
  String generateUuid();
}

class UuidHelperImpl implements IUuidHelper {
  @override
  String generateUuid() {
    return Uuid().v1();
  }
}
