// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jwt_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JwtObjectImpl _$$JwtObjectImplFromJson(Map<String, dynamic> json) =>
    _$JwtObjectImpl(
      refresh: json['refresh'] as String,
      token: json['token'] as String,
      key: json['key'] as String,
    );

Map<String, dynamic> _$$JwtObjectImplToJson(_$JwtObjectImpl instance) =>
    <String, dynamic>{
      'refresh': instance.refresh,
      'token': instance.token,
      'key': instance.key,
    };
