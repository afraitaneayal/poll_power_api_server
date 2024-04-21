import 'dart:io';
import 'package:poll_power_openapi/poll_power_openapi.dart';
import 'package:test/test.dart';

import 'init_reste_test.dart';

Future<void> main() async {
  final PollpowerClient client = initRestTest();
  test("ping server test", () async {
    final GetBasePathResponse response = await client.getBasePath();
    expect(response.status, equals(HttpStatus.ok));
  });
}
