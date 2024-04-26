import 'package:poll_power_api_server/di.dart';
import 'package:poll_power_api_server/domain/params/vote/create_vote_param.dart';
import 'package:poll_power_api_server/domain/usecases/vote/create_vote_usecase.dart';
import 'package:test/test.dart';

import '../../bin/main.dart';

Future<void> main() async {
  await init();
  group("vote tests", () {
    _testVoteWithInvalidDatas();
    _testVoteCandidate();
  });
}

Future<void> _testVoteWithInvalidDatas() async {
  test("test vote candidate with invalide datas", () async {
    final CreateVoteParam param =
        CreateVoteParam("candidateUuid", "userUiid", "votedAt");
    final result = await locator.get<CreateVoteUsecase>().trigger(param);
    expect(result.isLeft(), equals(true));
  });
}

Future<void> _testVoteCandidate() async {
  test("test vote candidate", () async {
    final CreateVoteParam param = CreateVoteParam(
        "ec0f7ea0-0534-1f84-a976-43e4dc64598c",
        "561cb050-a3e9-1f91-8b2e-c134c8bdfe0f",
        DateTime.now().toString());
    final result = await locator.get<CreateVoteUsecase>().trigger(param);
    expect(result.isRight(), equals(true));
  });
}
