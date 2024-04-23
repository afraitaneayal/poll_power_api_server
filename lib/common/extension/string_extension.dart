import 'package:poll_power_api_server/common/helpers/password_helper/password_helper.dart';
import 'package:poll_power_api_server/di.dart';

extension StringIsValidPasswordExtension on String {
  bool isValid() {
    return locator.get<IPasswordHelper>().isPasswordValid(this);
  }
}
