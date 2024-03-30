import 'package:poll_power_api_server/common/modules/auth_secrets.dart';
import 'package:poll_power_api_server/di.dart';
import 'package:poll_power_api_server/presentation/rest/rest_server.dart';

Future<void> init() async {
  dotEnvLoader.load();
  configureDependencies();
}

void main(List<String> args) async {
  await init();
  // await startGRPCServer();
  await startRestServer();
}
