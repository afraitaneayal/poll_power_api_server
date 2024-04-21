import 'package:openapi_base/openapi_base.dart';
import 'package:poll_power_api_server/di.dart';
import 'package:poll_power_openapi/poll_power_openapi.dart';
import 'api_endpoint_provider.dart';

Future<void> startRestServer() async {
  /// Server
  final server = OpenApiShelfServer(
      PollpowerRouter(locator.get<PollPowerAPIEndpointProvider>()));

  /// Start the server
  print("starting rest server ...");
  server.startServer();
}
