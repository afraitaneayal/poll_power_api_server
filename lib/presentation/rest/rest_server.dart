import 'package:openapi_base/openapi_base.dart';
import 'package:poll_power_openapi_generated/poll_power_openapi.dart';
import 'api_endpoint_provider.dart';

Future<void> startRestServer() async {
  /// Server
  final server =
      OpenApiShelfServer(PollPowerAPIRouter(PollPowerAPIEndpointProvider()));

  /// Start the server
  print("starting server ...");
  server.startServer();
}
