import 'package:poll_power_openapi/poll_power_openapi.dart';

mixin APIErrorHelper {
  getAPIError() {
    return APIError(
        error: APIErrorError(devMessage: "", userFriendlyMessage: ""));
  }
}
