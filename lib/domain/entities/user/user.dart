import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    required String uuid,
    required String email,
    required String password,
    required String firstName,
    required String lastName,
    required String grade,
    required String areaOfStudy,
    required String image,
  }) = _UserEntity;

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);
}
