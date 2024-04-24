import 'package:poll_power_api_server/di.dart';
import 'package:poll_power_api_server/domain/entities/user/user.dart';
import 'package:poll_power_api_server/domain/params/candidate/create_candidate_param.dart';
import 'package:poll_power_api_server/domain/usecases/candidate/create_candidate_usecase.dart';
import 'package:test/test.dart';

import '../../../bin/main.dart';

Future main() async {
  await init();
  group("test candidate usecases", () {
    _testCandidateCreationWithInvalidDatas();
    _testCandidateCreation();
  });
}

void _testCandidateCreationWithInvalidDatas() =>
    test("test candidate creation usecase with invalid datas", () async {
      final UserEntity user = UserEntity(
          uuid: "uuid",
          email: "email",
          password: "password",
          first_name: "first_name",
          last_name: "last_name",
          grade: "grade",
          area_of_study: "area_of_study",
          image: "image");
      final CreateCandidateParam param =
          CreateCandidateParam("slogan", "speech", user, 1);
      final result = await locator.get<CreateCandidateUsecase>().trigger(param);
      expect(result.isLeft(), equals(true));
    });

void _testCandidateCreation() =>
    test("test candidate creation usecase", () async {
      final UserEntity user = UserEntity(
          uuid: null,
          email: "Test@gmail.com",
          password: "Password1234@",
          first_name: "first_name",
          last_name: "last_name",
          grade: "grade",
          area_of_study: "area_of_study",
          image: "image");
      final CreateCandidateParam param =
          CreateCandidateParam("slogan", "speech", user, 1);
      final result = await locator.get<CreateCandidateUsecase>().trigger(param);
      expect(result.isRight(), equals(true));
    });
