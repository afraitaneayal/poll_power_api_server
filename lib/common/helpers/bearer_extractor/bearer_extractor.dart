import 'package:openapi_base/openapi_base.dart';

class BearerExtractor {
  static String? extract(OpenApiRequest request) {
    final SecuritySchemeHttpData? security =
        SecuritySchemeHttp(scheme: SecuritySchemeHttpScheme.bearer)
            .fromRequest(request);
    final bearer = security?.bearerToken;
    return bearer;
  }
}
