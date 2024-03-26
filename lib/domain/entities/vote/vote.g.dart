// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vote.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VoteImpl _$$VoteImplFromJson(Map<String, dynamic> json) => _$VoteImpl(
      candidateId: json['candidateId'] as String,
      votedAt: DateTime.parse(json['votedAt'] as String),
      userId: json['userId'] as String,
      uuid: json['uuid'] as String,
    );

Map<String, dynamic> _$$VoteImplToJson(_$VoteImpl instance) =>
    <String, dynamic>{
      'candidateId': instance.candidateId,
      'votedAt': instance.votedAt.toIso8601String(),
      'userId': instance.userId,
      'uuid': instance.uuid,
    };
