// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'candidate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CandidateImpl _$$CandidateImplFromJson(Map<String, dynamic> json) =>
    _$CandidateImpl(
      slogan: json['slogan'] as String,
      speech: json['speech'] as String,
      voteCount: json['voteCount'] as String,
      uuid: json['uuid'] as String,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CandidateImplToJson(_$CandidateImpl instance) =>
    <String, dynamic>{
      'slogan': instance.slogan,
      'speech': instance.speech,
      'voteCount': instance.voteCount,
      'uuid': instance.uuid,
      'user': instance.user,
    };
