library prisma.namespace.model; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'model.dart' as _i1;

class Vote {
  const Vote({
    this.uuid,
    this.userUuid,
    this.candidateUuid,
    this.votedAt,
    this.user,
    this.candidate,
  });

  factory Vote.fromJson(Map json) => Vote(
        uuid: json['uuid'],
        userUuid: json['user_uuid'],
        candidateUuid: json['candidate_uuid'],
        votedAt: json['voted_at'],
        user: json['user'] is Map ? _i1.User.fromJson(json['user']) : null,
        candidate: json['candidate'] is Map
            ? _i1.Candidate.fromJson(json['candidate'])
            : null,
      );

  final String? uuid;

  final String? userUuid;

  final String? candidateUuid;

  final DateTime? votedAt;

  final _i1.User? user;

  final _i1.Candidate? candidate;
}

class Candidate {
  const Candidate({
    this.uuid,
    this.slogan,
    this.speech,
    this.userUuid,
    this.user,
    this.vote,
  });

  factory Candidate.fromJson(Map json) => Candidate(
        uuid: json['uuid'],
        slogan: json['slogan'],
        speech: json['speech'],
        userUuid: json['user_uuid'],
        user: json['user'] is Map ? _i1.User.fromJson(json['user']) : null,
        vote: json['vote'] is Map ? _i1.Vote.fromJson(json['vote']) : null,
      );

  final String? uuid;

  final String? slogan;

  final String? speech;

  final String? userUuid;

  final _i1.User? user;

  final _i1.Vote? vote;
}

class User {
  const User({
    this.uuid,
    this.firstName,
    this.lastName,
    this.email,
    this.password,
    this.image,
    this.grade,
    this.areaOfStudy,
    this.candidate,
    this.vote,
  });

  factory User.fromJson(Map json) => User(
        uuid: json['uuid'],
        firstName: json['firstName'],
        lastName: json['lastName'],
        email: json['email'],
        password: json['password'],
        image: json['image'],
        grade: json['grade'],
        areaOfStudy: json['areaOfStudy'],
        candidate: json['candidate'] is Map
            ? _i1.Candidate.fromJson(json['candidate'])
            : null,
        vote: json['vote'] is Map ? _i1.Vote.fromJson(json['vote']) : null,
      );

  final String? uuid;

  final String? firstName;

  final String? lastName;

  final String? email;

  final String? password;

  final String? image;

  final String? grade;

  final String? areaOfStudy;

  final _i1.Candidate? candidate;

  final _i1.Vote? vote;
}
