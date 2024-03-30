import 'package:uuid/uuid.dart';

class UuidHelper {
  static String generateUuidV1() {
    return Uuid().v1();
  }
}
