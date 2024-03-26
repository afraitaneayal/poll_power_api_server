import 'package:freezed_annotation/freezed_annotation.dart';

import '../user/user.dart';

part 'candidate.freezed.dart';
part 'candidate.g.dart';

@freezed
class Candidate with _$Candidate {
  const factory Candidate({
    required String slogan,
    required String speech,
    required String voteCount,
    required String uuid,
    required User user,
  }) = _Candidate;

  factory Candidate.fromJson(Map<String, dynamic> json) =>
      _$CandidateFromJson(json);
}
