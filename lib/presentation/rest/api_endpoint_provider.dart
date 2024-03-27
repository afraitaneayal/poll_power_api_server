import 'package:injectable/injectable.dart';
import 'package:openapi_base/openapi_base.dart';
import 'package:poll_power_api_server/presentation/usecases.dart';
import 'package:poll_power_openapi/poll_power_openapi.dart';
import 'controller/controller.dart';

@singleton
class PollPowerAPIEndpointProvider
    extends ApiEndpointProvider<PollPowerAPIContract> {
  final Usecases _usecases;

  PollPowerAPIEndpointProvider(this._usecases);

  @override
  Future<RET> invoke<RET>(OpenApiRequest request,
      ApiEndpointCallback<PollPowerAPIContract, RET> callback) {
    return callback(PollPowerAPIContractImpl(request, _usecases));
  }
}
