import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String uuid,
    required String email,
    required String password,
    required String firstName,
    required String lastName,
    required String grade,
    required String areaOfStudy,
    required String image,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
