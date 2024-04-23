import 'package:poll_power_api_server/common/helpers/password_helper/password_helper.dart';
import 'package:poll_power_api_server/di.dart';
import 'package:regexpattern/regexpattern.dart';

extension StringIsValidPasswordExtension on String {
  bool isValidPassword() {
    return locator.get<IPasswordHelper>().isPasswordValid(this);
  }
}

extension StringIsValidEmailExtension on String {
  bool isValidEmail() {
    return isEmail();
  }
}
