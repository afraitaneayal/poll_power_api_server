import 'dart:io';
import 'package:poll_power_openapi/poll_power_openapi.dart';
import 'package:test/test.dart';
import '../../poll_power_api_server_test.dart';
import '../init_reste_test.dart';

Future<void> main() async {
  final PollPowerAPIClient client = initRestTest();
  return await isTestDbReady()
      ? group(
          "group description",
          () {
            testUserSignup(client);
            testUserLogin(client);
            testUserLoginWithBadPassword(client);
            testCandidateSignup(client);
          },
        )
      : null;
}

Future<void> testUserSignup(PollPowerAPIClient client) async {
  test("test user signup with rest endpoint", () async {
    final User user = User(
        email: "email",
        password: "password",
        firstName: "firstName",
        lastName: "lastName",
        image: "",
        grade: "grade",
        areaOfStudy: "areaOfStudy");
    final SignUpUserResponse response = await client.signUpUser(user);
    expect(response.status, equals(HttpStatus.created));
  });
}

Future<void> testCandidateSignup(PollPowerAPIClient client) async {
  test("test candidate signup using rest", () async {
    final User user = User(
        email: "email",
        password: "password",
        firstName: "firstName",
        lastName: "lastName",
        grade: "grade",
        areaOfStudy: "areaOfStudy");
    final Candidate candidate =
        Candidate(slogan: "slogan", voteCount: 0, user: user);
    final SignUpCandidateResponse response =
        await client.signUpCandidate(candidate);
    expect(response.status, equals(HttpStatus.created));
  });
}

Future<void> testUserLogin(PollPowerAPIClient client) async {
  test("test user login with rest endpoint", () async {
    final UserLoginRequest userLoginRequest =
        UserLoginRequest(email: "email", password: "password");
    final LoginUserResponse result = await client.loginUser(userLoginRequest);
    expect(result.status, equals(HttpStatus.ok));
  });
}

Future<void> testUserLoginWithBadPassword(PollPowerAPIClient client) async {
  test("test user login with rest endpoint", () async {
    final UserLoginRequest userLoginRequest =
        UserLoginRequest(email: "email", password: "");
    final LoginUserResponse result = await client.loginUser(userLoginRequest);
    expect(result.status, equals(HttpStatus.internalServerError));
  });
}
