import 'package:poll_power_api_server/di.dart';
import 'package:poll_power_api_server/presentation/rest/rest_server.dart';

Future<void> init() async {
  configureDependencies();
}

void main(List<String> args) async {
  await init();
  await startRestServer();
}
