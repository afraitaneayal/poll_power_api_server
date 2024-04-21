import 'package:openapi_base/openapi_base.dart';
import 'package:poll_power_openapi/poll_power_openapi.dart';

PollpowerClient initRestTest() {
  final Uri baseUrl = Uri.parse("http://localhost:8080/");
  final HttpRequestSender sender = HttpRequestSender();
  final PollpowerClient restClient = PollpowerClient(baseUrl, sender);
  return restClient;
}
