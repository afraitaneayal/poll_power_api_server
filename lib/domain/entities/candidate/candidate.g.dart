// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'candidate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CandidateEntityImpl _$$CandidateEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$CandidateEntityImpl(
      slogan: json['slogan'] as String,
      speech: json['speech'] as String,
      voteCount: json['voteCount'] as int,
      uuid: json['uuid'] as String,
      user: UserEntity.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CandidateEntityImplToJson(
        _$CandidateEntityImpl instance) =>
    <String, dynamic>{
      'slogan': instance.slogan,
      'speech': instance.speech,
      'voteCount': instance.voteCount,
      'uuid': instance.uuid,
      'user': instance.user,
    };
