import 'package:poll_power_api_server/common/helpers/password_helper/password_helper.dart';
import 'package:poll_power_api_server/di.dart';
import 'package:poll_power_api_server/domain/entities/user/user.dart';
import 'package:poll_power_openapi/poll_power_openapi.dart';
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

extension UserFromUserEntity on UserEntity {
  User getUser() {
    return User(
        email: email,
        password: password,
        firstName: first_name,
        lastName: last_name,
        grade: grade,
        areaOfStudy: area_of_study);
  }
}
