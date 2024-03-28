import 'package:freezed_annotation/freezed_annotation.dart';

part 'jwt_object.g.dart';
part 'jwt_object.freezed.dart';

@freezed
class JwtObject with _$JwtObject {
  const factory JwtObject({
    required String refresh,
    required String token,
    required String key,
  }) = _JwtObject;

  factory JwtObject.fromJson(Map<String, dynamic> json) =>
      _$JwtObjectFromJson(json);
}
