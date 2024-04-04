import 'package:poll_power_openapi/poll_power_openapi.dart';

mixin APIErrorHelper {
  getAPIError() {
    return APIError(
        error: APIErrorContent(devMessage: "", userFriendlyMessage: ""));
  }
}
