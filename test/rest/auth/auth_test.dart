// Test auth
// Signup + Loggin [JWT]

import 'package:poll_power_api_server/common/helpers/uuid_helper/uuid_helper.dart';
import 'package:poll_power_api_server/di.dart';
import 'package:poll_power_api_server/domain/entities/user/user.dart';
import 'package:poll_power_api_server/domain/params/candidate/create_candidate_param.dart';
import 'package:poll_power_api_server/domain/params/user/create_user_param.dart';
import 'package:poll_power_api_server/domain/usecases/candidate/create_candidate_usecase.dart';
import 'package:poll_power_api_server/domain/usecases/user/create_user_usecase.dart';
import 'package:test/test.dart';
import '../../poll_power_api_server_test.dart';

Future<void> main() async {
  await isTestDbReady()
      ? group(
          "Test all cases for user authentication",
          () {
            testUserSignup();
            testCandidateSignup();
          },
        )
      : null;
}

Future<void> testCandidateSignup() async {
  test("test candidate signup usecase", () async {
    final CreateCandidateUsecase createCandidateUsecase =
        locator.get<CreateCandidateUsecase>();
    final UserEntity user = UserEntity(
        uuid: locator.get<IUuidHelper>().generateUuid(),
        email: "yayahc@gmail.com",
        password: "2432",
        first_name: "yaya",
        last_name: "hc",
        grade: "M2",
        area_of_study: "MI",
        image: "");
    final CreateCandidateParam param =
        CreateCandidateParam("slogan", "yeah", user, 0);
    final candidateResult = await createCandidateUsecase.trigger(param);
    expect(candidateResult.isRight(), equals(true));
  });
}

Future<void> testUserSignup() async {
  test("test user signup usecase", () async {
    final CreateUserUsecase userUsecase = locator.get<CreateUserUsecase>();
    final CreateUserParam createUserParam = CreateUserParam(
        "Hamedcuenca5@gmail.com", "MI", "M2", "", "Hc", "Yaya", "21323");
    final userResult = await userUsecase.trigger(createUserParam);
    expect(userResult.isRight(), equals(true));
  });
}
