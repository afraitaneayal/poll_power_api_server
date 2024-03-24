import 'package:openapi_base/openapi_base.dart';
import 'package:poll_power_openapi_generated/poll_power_openapi.dart';
import 'controller/controller.dart';

class PollPowerAPIEndpointProvider
    extends ApiEndpointProvider<PollPowerAPIContract> {
  @override
  Future<RET> invoke<RET>(OpenApiRequest request,
      ApiEndpointCallback<PollPowerAPIContract, RET> callback) {
    return callback(PollPowerAPIContractImpl(request));
  }
}
