import 'package:poll_power_api_server/di.dart';
import 'package:poll_power_api_server/domain/params/user/get_user_param.dart';
import 'package:poll_power_api_server/domain/usecases/user/get_user_usecase.dart';
import 'package:test/test.dart';

import '../poll_power_api_server_test.dart';

Future<void> main() async {
  await isTestDbReady()
      ? {
          group(
            "test user usecases",
            () {
              _testGetUser();
              _testGetUserWithInvalidData();
            },
          )
        }
      : null;
}

Future<void> _testGetUser() async {
  test('test get user', () async {
    final GetUserParam param =
        GetUserParam("0e4fcea0-3907-1f58-8161-ed2f4a00ec6c");
    final response = await locator.get<GetUserUsecase>().trigger(param);
    expect(response.isLeft(), equals(false));
  });
}

Future<void> _testGetUserWithInvalidData() async {
  test('test get user with invalid data', () async {
    final GetUserParam param = GetUserParam("uuid");
    final response = await locator.get<GetUserUsecase>().trigger(param);
    final rightR = response.fold((l) => null, (r) => r);
    expect(rightR == null, equals(true));
  });
}
