// ignore_for_file: non_constant_identifier_names

library prisma.namespace.prisma; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:orm/orm.dart' as _i1;

import 'prisma.dart' as _i2;

class NestedStringFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedStringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i1.PrismaUnion<String, _i2.NestedStringFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'not': not,
      };
}

class StringFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i1.PrismaUnion<String, _i2.NestedStringFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'not': not,
      };
}

class NestedStringNullableFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedStringNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i1.Reference<String>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<String>, _i1.PrismaNull>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.PrismaNull>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i2.NestedStringNullableFilter, _i1.PrismaNull>>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'not': not,
      };
}

class StringNullableFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i1.Reference<String>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<String>, _i1.PrismaNull>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.PrismaNull>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i2.NestedStringNullableFilter, _i1.PrismaNull>>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'not': not,
      };
}

class UserRelationFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserRelationFilter({
    this.$is,
    this.isNot,
  });

  final _i2.UserWhereInput? $is;

  final _i2.UserWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => {
        'is': $is,
        'isNot': isNot,
      };
}

class NestedDateTimeFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedDateTimeFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? equals;

  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<DateTime, _i2.NestedDateTimeFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class DateTimeFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DateTimeFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? equals;

  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<DateTime, _i2.NestedDateTimeFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class CandidateRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CandidateRelationFilter({
    this.$is,
    this.isNot,
  });

  final _i2.CandidateWhereInput? $is;

  final _i2.CandidateWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => {
        'is': $is,
        'isNot': isNot,
      };
}

class VoteWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VoteWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.uuid,
    this.userUuid,
    this.candidateUuid,
    this.votedAt,
    this.user,
    this.candidate,
  });

  final _i1.PrismaUnion<_i2.VoteWhereInput, Iterable<_i2.VoteWhereInput>>? AND;

  final Iterable<_i2.VoteWhereInput>? OR;

  final _i1.PrismaUnion<_i2.VoteWhereInput, Iterable<_i2.VoteWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? uuid;

  final _i1.PrismaUnion<_i2.StringFilter, String>? userUuid;

  final _i1.PrismaUnion<_i2.StringFilter, String>? candidateUuid;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? votedAt;

  final _i1.PrismaUnion<_i2.UserRelationFilter, _i2.UserWhereInput>? user;

  final _i1.PrismaUnion<_i2.CandidateRelationFilter, _i2.CandidateWhereInput>?
      candidate;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'uuid': uuid,
        'user_uuid': userUuid,
        'candidate_uuid': candidateUuid,
        'voted_at': votedAt,
        'user': user,
        'candidate': candidate,
      };
}

class VoteNullableRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VoteNullableRelationFilter({
    this.$is,
    this.isNot,
  });

  final _i1.PrismaUnion<_i2.VoteWhereInput, _i1.PrismaNull>? $is;

  final _i1.PrismaUnion<_i2.VoteWhereInput, _i1.PrismaNull>? isNot;

  @override
  Map<String, dynamic> toJson() => {
        'is': $is,
        'isNot': isNot,
      };
}

class CandidateWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CandidateWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.uuid,
    this.slogan,
    this.speech,
    this.userUuid,
    this.user,
    this.vote,
  });

  final _i1
      .PrismaUnion<_i2.CandidateWhereInput, Iterable<_i2.CandidateWhereInput>>?
      AND;

  final Iterable<_i2.CandidateWhereInput>? OR;

  final _i1
      .PrismaUnion<_i2.CandidateWhereInput, Iterable<_i2.CandidateWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? uuid;

  final _i1.PrismaUnion<_i2.StringFilter, String>? slogan;

  final _i1.PrismaUnion<_i2.StringFilter, String>? speech;

  final _i1.PrismaUnion<_i2.StringFilter, String>? userUuid;

  final _i1.PrismaUnion<_i2.UserRelationFilter, _i2.UserWhereInput>? user;

  final _i1.PrismaUnion<_i2.VoteNullableRelationFilter,
      _i1.PrismaUnion<_i2.VoteWhereInput, _i1.PrismaNull>>? vote;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'uuid': uuid,
        'slogan': slogan,
        'speech': speech,
        'user_uuid': userUuid,
        'user': user,
        'vote': vote,
      };
}

class CandidateNullableRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CandidateNullableRelationFilter({
    this.$is,
    this.isNot,
  });

  final _i1.PrismaUnion<_i2.CandidateWhereInput, _i1.PrismaNull>? $is;

  final _i1.PrismaUnion<_i2.CandidateWhereInput, _i1.PrismaNull>? isNot;

  @override
  Map<String, dynamic> toJson() => {
        'is': $is,
        'isNot': isNot,
      };
}

class UserWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserWhereInput({
    this.AND,
    this.OR,
    this.NOT,
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

  final _i1.PrismaUnion<_i2.UserWhereInput, Iterable<_i2.UserWhereInput>>? AND;

  final Iterable<_i2.UserWhereInput>? OR;

  final _i1.PrismaUnion<_i2.UserWhereInput, Iterable<_i2.UserWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? uuid;

  final _i1.PrismaUnion<_i2.StringFilter, String>? firstName;

  final _i1.PrismaUnion<_i2.StringFilter, String>? lastName;

  final _i1.PrismaUnion<_i2.StringFilter, String>? email;

  final _i1.PrismaUnion<_i2.StringFilter, String>? password;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? image;

  final _i1.PrismaUnion<_i2.StringFilter, String>? grade;

  final _i1.PrismaUnion<_i2.StringFilter, String>? areaOfStudy;

  final _i1.PrismaUnion<_i2.CandidateNullableRelationFilter,
      _i1.PrismaUnion<_i2.CandidateWhereInput, _i1.PrismaNull>>? candidate;

  final _i1.PrismaUnion<_i2.VoteNullableRelationFilter,
      _i1.PrismaUnion<_i2.VoteWhereInput, _i1.PrismaNull>>? vote;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'uuid': uuid,
        'firstName': firstName,
        'lastName': lastName,
        'email': email,
        'password': password,
        'image': image,
        'grade': grade,
        'areaOfStudy': areaOfStudy,
        'candidate': candidate,
        'vote': vote,
      };
}

class UserWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserWhereUniqueInput({
    this.uuid,
    this.AND,
    this.OR,
    this.NOT,
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

  final String? uuid;

  final _i1.PrismaUnion<_i2.UserWhereInput, Iterable<_i2.UserWhereInput>>? AND;

  final Iterable<_i2.UserWhereInput>? OR;

  final _i1.PrismaUnion<_i2.UserWhereInput, Iterable<_i2.UserWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? firstName;

  final _i1.PrismaUnion<_i2.StringFilter, String>? lastName;

  final _i1.PrismaUnion<_i2.StringFilter, String>? email;

  final _i1.PrismaUnion<_i2.StringFilter, String>? password;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? image;

  final _i1.PrismaUnion<_i2.StringFilter, String>? grade;

  final _i1.PrismaUnion<_i2.StringFilter, String>? areaOfStudy;

  final _i1.PrismaUnion<_i2.CandidateNullableRelationFilter,
      _i1.PrismaUnion<_i2.CandidateWhereInput, _i1.PrismaNull>>? candidate;

  final _i1.PrismaUnion<_i2.VoteNullableRelationFilter,
      _i1.PrismaUnion<_i2.VoteWhereInput, _i1.PrismaNull>>? vote;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'firstName': firstName,
        'lastName': lastName,
        'email': email,
        'password': password,
        'image': image,
        'grade': grade,
        'areaOfStudy': areaOfStudy,
        'candidate': candidate,
        'vote': vote,
      };
}

class CandidateUserArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CandidateUserArgs({
    this.select,
    this.include,
  });

  final _i2.UserSelect? select;

  final _i2.UserInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class VoteUserArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VoteUserArgs({
    this.select,
    this.include,
  });

  final _i2.UserSelect? select;

  final _i2.UserInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class VoteCandidateArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VoteCandidateArgs({
    this.select,
    this.include,
  });

  final _i2.CandidateSelect? select;

  final _i2.CandidateInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class VoteSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VoteSelect({
    this.uuid,
    this.userUuid,
    this.candidateUuid,
    this.votedAt,
    this.user,
    this.candidate,
  });

  final bool? uuid;

  final bool? userUuid;

  final bool? candidateUuid;

  final bool? votedAt;

  final _i1.PrismaUnion<bool, _i2.VoteUserArgs>? user;

  final _i1.PrismaUnion<bool, _i2.VoteCandidateArgs>? candidate;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'user_uuid': userUuid,
        'candidate_uuid': candidateUuid,
        'voted_at': votedAt,
        'user': user,
        'candidate': candidate,
      };
}

class VoteInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VoteInclude({
    this.user,
    this.candidate,
  });

  final _i1.PrismaUnion<bool, _i2.VoteUserArgs>? user;

  final _i1.PrismaUnion<bool, _i2.VoteCandidateArgs>? candidate;

  @override
  Map<String, dynamic> toJson() => {
        'user': user,
        'candidate': candidate,
      };
}

class CandidateVoteArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CandidateVoteArgs({
    this.where,
    this.select,
    this.include,
  });

  final _i2.VoteWhereInput? where;

  final _i2.VoteSelect? select;

  final _i2.VoteInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'select': select,
        'include': include,
      };
}

class CandidateInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CandidateInclude({
    this.user,
    this.vote,
  });

  final _i1.PrismaUnion<bool, _i2.CandidateUserArgs>? user;

  final _i1.PrismaUnion<bool, _i2.CandidateVoteArgs>? vote;

  @override
  Map<String, dynamic> toJson() => {
        'user': user,
        'vote': vote,
      };
}

class UserCandidateArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCandidateArgs({
    this.where,
    this.select,
    this.include,
  });

  final _i2.CandidateWhereInput? where;

  final _i2.CandidateSelect? select;

  final _i2.CandidateInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'select': select,
        'include': include,
      };
}

class UserVoteArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserVoteArgs({
    this.where,
    this.select,
    this.include,
  });

  final _i2.VoteWhereInput? where;

  final _i2.VoteSelect? select;

  final _i2.VoteInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'select': select,
        'include': include,
      };
}

class UserInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserInclude({
    this.candidate,
    this.vote,
  });

  final _i1.PrismaUnion<bool, _i2.UserCandidateArgs>? candidate;

  final _i1.PrismaUnion<bool, _i2.UserVoteArgs>? vote;

  @override
  Map<String, dynamic> toJson() => {
        'candidate': candidate,
        'vote': vote,
      };
}

class CandidateSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CandidateSelect({
    this.uuid,
    this.slogan,
    this.speech,
    this.userUuid,
    this.user,
    this.vote,
  });

  final bool? uuid;

  final bool? slogan;

  final bool? speech;

  final bool? userUuid;

  final _i1.PrismaUnion<bool, _i2.CandidateUserArgs>? user;

  final _i1.PrismaUnion<bool, _i2.CandidateVoteArgs>? vote;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'slogan': slogan,
        'speech': speech,
        'user_uuid': userUuid,
        'user': user,
        'vote': vote,
      };
}

class UserSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserSelect({
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

  final bool? uuid;

  final bool? firstName;

  final bool? lastName;

  final bool? email;

  final bool? password;

  final bool? image;

  final bool? grade;

  final bool? areaOfStudy;

  final _i1.PrismaUnion<bool, _i2.UserCandidateArgs>? candidate;

  final _i1.PrismaUnion<bool, _i2.UserVoteArgs>? vote;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'firstName': firstName,
        'lastName': lastName,
        'email': email,
        'password': password,
        'image': image,
        'grade': grade,
        'areaOfStudy': areaOfStudy,
        'candidate': candidate,
        'vote': vote,
      };
}

enum SortOrder implements _i1.PrismaEnum {
  asc._('asc'),
  desc._('desc');

  const SortOrder._(this.name);

  @override
  final String name;
}

enum NullsOrder implements _i1.PrismaEnum {
  first._('first'),
  last._('last');

  const NullsOrder._(this.name);

  @override
  final String name;
}

class SortOrderInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const SortOrderInput({
    required this.sort,
    this.nulls,
  });

  final _i2.SortOrder sort;

  final _i2.NullsOrder? nulls;

  @override
  Map<String, dynamic> toJson() => {
        'sort': sort,
        'nulls': nulls,
      };
}

class VoteOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VoteOrderByWithRelationInput({
    this.uuid,
    this.userUuid,
    this.candidateUuid,
    this.votedAt,
    this.user,
    this.candidate,
  });

  final _i2.SortOrder? uuid;

  final _i2.SortOrder? userUuid;

  final _i2.SortOrder? candidateUuid;

  final _i2.SortOrder? votedAt;

  final _i2.UserOrderByWithRelationInput? user;

  final _i2.CandidateOrderByWithRelationInput? candidate;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'user_uuid': userUuid,
        'candidate_uuid': candidateUuid,
        'voted_at': votedAt,
        'user': user,
        'candidate': candidate,
      };
}

class CandidateOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CandidateOrderByWithRelationInput({
    this.uuid,
    this.slogan,
    this.speech,
    this.userUuid,
    this.user,
    this.vote,
  });

  final _i2.SortOrder? uuid;

  final _i2.SortOrder? slogan;

  final _i2.SortOrder? speech;

  final _i2.SortOrder? userUuid;

  final _i2.UserOrderByWithRelationInput? user;

  final _i2.VoteOrderByWithRelationInput? vote;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'slogan': slogan,
        'speech': speech,
        'user_uuid': userUuid,
        'user': user,
        'vote': vote,
      };
}

class UserOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserOrderByWithRelationInput({
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

  final _i2.SortOrder? uuid;

  final _i2.SortOrder? firstName;

  final _i2.SortOrder? lastName;

  final _i2.SortOrder? email;

  final _i2.SortOrder? password;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? image;

  final _i2.SortOrder? grade;

  final _i2.SortOrder? areaOfStudy;

  final _i2.CandidateOrderByWithRelationInput? candidate;

  final _i2.VoteOrderByWithRelationInput? vote;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'firstName': firstName,
        'lastName': lastName,
        'email': email,
        'password': password,
        'image': image,
        'grade': grade,
        'areaOfStudy': areaOfStudy,
        'candidate': candidate,
        'vote': vote,
      };
}

enum UserScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  uuid<String>('uuid', 'User'),
  firstName<String>('firstName', 'User'),
  lastName<String>('lastName', 'User'),
  email<String>('email', 'User'),
  password<String>('password', 'User'),
  image<String>('image', 'User'),
  grade<String>('grade', 'User'),
  areaOfStudy<String>('areaOfStudy', 'User');

  const UserScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class UserCreateWithoutVoteInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateWithoutVoteInput({
    required this.uuid,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
    this.image,
    required this.grade,
    required this.areaOfStudy,
    this.candidate,
  });

  final String uuid;

  final String firstName;

  final String lastName;

  final String email;

  final String password;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? image;

  final String grade;

  final String areaOfStudy;

  final _i2.CandidateCreateNestedOneWithoutUserInput? candidate;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'firstName': firstName,
        'lastName': lastName,
        'email': email,
        'password': password,
        'image': image,
        'grade': grade,
        'areaOfStudy': areaOfStudy,
        'candidate': candidate,
      };
}

class VoteUncheckedCreateWithoutCandidateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VoteUncheckedCreateWithoutCandidateInput({
    required this.uuid,
    required this.userUuid,
    this.votedAt,
  });

  final String uuid;

  final String userUuid;

  final DateTime? votedAt;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'user_uuid': userUuid,
        'voted_at': votedAt,
      };
}

class VoteWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VoteWhereUniqueInput({
    this.uuid,
    this.userUuid,
    this.candidateUuid,
    this.AND,
    this.OR,
    this.NOT,
    this.votedAt,
    this.user,
    this.candidate,
  });

  final String? uuid;

  final String? userUuid;

  final String? candidateUuid;

  final _i1.PrismaUnion<_i2.VoteWhereInput, Iterable<_i2.VoteWhereInput>>? AND;

  final Iterable<_i2.VoteWhereInput>? OR;

  final _i1.PrismaUnion<_i2.VoteWhereInput, Iterable<_i2.VoteWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? votedAt;

  final _i1.PrismaUnion<_i2.UserRelationFilter, _i2.UserWhereInput>? user;

  final _i1.PrismaUnion<_i2.CandidateRelationFilter, _i2.CandidateWhereInput>?
      candidate;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'user_uuid': userUuid,
        'candidate_uuid': candidateUuid,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'voted_at': votedAt,
        'user': user,
        'candidate': candidate,
      };
}

class VoteCreateOrConnectWithoutCandidateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VoteCreateOrConnectWithoutCandidateInput({
    required this.where,
    required this.create,
  });

  final _i2.VoteWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.VoteCreateWithoutCandidateInput,
      _i2.VoteUncheckedCreateWithoutCandidateInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class VoteUncheckedCreateNestedOneWithoutCandidateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VoteUncheckedCreateNestedOneWithoutCandidateInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.VoteCreateWithoutCandidateInput,
      _i2.VoteUncheckedCreateWithoutCandidateInput>? create;

  final _i2.VoteCreateOrConnectWithoutCandidateInput? connectOrCreate;

  final _i2.VoteWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class CandidateUncheckedCreateWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CandidateUncheckedCreateWithoutUserInput({
    required this.uuid,
    required this.slogan,
    required this.speech,
    this.vote,
  });

  final String uuid;

  final String slogan;

  final String speech;

  final _i2.VoteUncheckedCreateNestedOneWithoutCandidateInput? vote;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'slogan': slogan,
        'speech': speech,
        'vote': vote,
      };
}

class CandidateWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CandidateWhereUniqueInput({
    this.uuid,
    this.userUuid,
    this.AND,
    this.OR,
    this.NOT,
    this.slogan,
    this.speech,
    this.user,
    this.vote,
  });

  final String? uuid;

  final String? userUuid;

  final _i1
      .PrismaUnion<_i2.CandidateWhereInput, Iterable<_i2.CandidateWhereInput>>?
      AND;

  final Iterable<_i2.CandidateWhereInput>? OR;

  final _i1
      .PrismaUnion<_i2.CandidateWhereInput, Iterable<_i2.CandidateWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? slogan;

  final _i1.PrismaUnion<_i2.StringFilter, String>? speech;

  final _i1.PrismaUnion<_i2.UserRelationFilter, _i2.UserWhereInput>? user;

  final _i1.PrismaUnion<_i2.VoteNullableRelationFilter,
      _i1.PrismaUnion<_i2.VoteWhereInput, _i1.PrismaNull>>? vote;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'user_uuid': userUuid,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'slogan': slogan,
        'speech': speech,
        'user': user,
        'vote': vote,
      };
}

class CandidateCreateOrConnectWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CandidateCreateOrConnectWithoutUserInput({
    required this.where,
    required this.create,
  });

  final _i2.CandidateWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.CandidateCreateWithoutUserInput,
      _i2.CandidateUncheckedCreateWithoutUserInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class CandidateUncheckedCreateNestedOneWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CandidateUncheckedCreateNestedOneWithoutUserInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.CandidateCreateWithoutUserInput,
      _i2.CandidateUncheckedCreateWithoutUserInput>? create;

  final _i2.CandidateCreateOrConnectWithoutUserInput? connectOrCreate;

  final _i2.CandidateWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class UserUncheckedCreateWithoutVoteInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedCreateWithoutVoteInput({
    required this.uuid,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
    this.image,
    required this.grade,
    required this.areaOfStudy,
    this.candidate,
  });

  final String uuid;

  final String firstName;

  final String lastName;

  final String email;

  final String password;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? image;

  final String grade;

  final String areaOfStudy;

  final _i2.CandidateUncheckedCreateNestedOneWithoutUserInput? candidate;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'firstName': firstName,
        'lastName': lastName,
        'email': email,
        'password': password,
        'image': image,
        'grade': grade,
        'areaOfStudy': areaOfStudy,
        'candidate': candidate,
      };
}

class UserCreateOrConnectWithoutVoteInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateOrConnectWithoutVoteInput({
    required this.where,
    required this.create,
  });

  final _i2.UserWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.UserCreateWithoutVoteInput,
      _i2.UserUncheckedCreateWithoutVoteInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class UserCreateNestedOneWithoutVoteInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateNestedOneWithoutVoteInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.UserCreateWithoutVoteInput,
      _i2.UserUncheckedCreateWithoutVoteInput>? create;

  final _i2.UserCreateOrConnectWithoutVoteInput? connectOrCreate;

  final _i2.UserWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class VoteCreateWithoutCandidateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VoteCreateWithoutCandidateInput({
    required this.uuid,
    this.votedAt,
    required this.user,
  });

  final String uuid;

  final DateTime? votedAt;

  final _i2.UserCreateNestedOneWithoutVoteInput user;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'voted_at': votedAt,
        'user': user,
      };
}

class VoteCreateNestedOneWithoutCandidateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VoteCreateNestedOneWithoutCandidateInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.VoteCreateWithoutCandidateInput,
      _i2.VoteUncheckedCreateWithoutCandidateInput>? create;

  final _i2.VoteCreateOrConnectWithoutCandidateInput? connectOrCreate;

  final _i2.VoteWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class CandidateCreateWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CandidateCreateWithoutUserInput({
    required this.uuid,
    required this.slogan,
    required this.speech,
    this.vote,
  });

  final String uuid;

  final String slogan;

  final String speech;

  final _i2.VoteCreateNestedOneWithoutCandidateInput? vote;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'slogan': slogan,
        'speech': speech,
        'vote': vote,
      };
}

class CandidateCreateNestedOneWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CandidateCreateNestedOneWithoutUserInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.CandidateCreateWithoutUserInput,
      _i2.CandidateUncheckedCreateWithoutUserInput>? create;

  final _i2.CandidateCreateOrConnectWithoutUserInput? connectOrCreate;

  final _i2.CandidateWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class UserCreateWithoutCandidateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateWithoutCandidateInput({
    required this.uuid,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
    this.image,
    required this.grade,
    required this.areaOfStudy,
    this.vote,
  });

  final String uuid;

  final String firstName;

  final String lastName;

  final String email;

  final String password;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? image;

  final String grade;

  final String areaOfStudy;

  final _i2.VoteCreateNestedOneWithoutUserInput? vote;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'firstName': firstName,
        'lastName': lastName,
        'email': email,
        'password': password,
        'image': image,
        'grade': grade,
        'areaOfStudy': areaOfStudy,
        'vote': vote,
      };
}

class VoteUncheckedCreateWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VoteUncheckedCreateWithoutUserInput({
    required this.uuid,
    required this.candidateUuid,
    this.votedAt,
  });

  final String uuid;

  final String candidateUuid;

  final DateTime? votedAt;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'candidate_uuid': candidateUuid,
        'voted_at': votedAt,
      };
}

class VoteCreateOrConnectWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VoteCreateOrConnectWithoutUserInput({
    required this.where,
    required this.create,
  });

  final _i2.VoteWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.VoteCreateWithoutUserInput,
      _i2.VoteUncheckedCreateWithoutUserInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class VoteUncheckedCreateNestedOneWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VoteUncheckedCreateNestedOneWithoutUserInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.VoteCreateWithoutUserInput,
      _i2.VoteUncheckedCreateWithoutUserInput>? create;

  final _i2.VoteCreateOrConnectWithoutUserInput? connectOrCreate;

  final _i2.VoteWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class UserUncheckedCreateWithoutCandidateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedCreateWithoutCandidateInput({
    required this.uuid,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
    this.image,
    required this.grade,
    required this.areaOfStudy,
    this.vote,
  });

  final String uuid;

  final String firstName;

  final String lastName;

  final String email;

  final String password;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? image;

  final String grade;

  final String areaOfStudy;

  final _i2.VoteUncheckedCreateNestedOneWithoutUserInput? vote;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'firstName': firstName,
        'lastName': lastName,
        'email': email,
        'password': password,
        'image': image,
        'grade': grade,
        'areaOfStudy': areaOfStudy,
        'vote': vote,
      };
}

class UserCreateOrConnectWithoutCandidateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateOrConnectWithoutCandidateInput({
    required this.where,
    required this.create,
  });

  final _i2.UserWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.UserCreateWithoutCandidateInput,
      _i2.UserUncheckedCreateWithoutCandidateInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class UserCreateNestedOneWithoutCandidateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateNestedOneWithoutCandidateInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.UserCreateWithoutCandidateInput,
      _i2.UserUncheckedCreateWithoutCandidateInput>? create;

  final _i2.UserCreateOrConnectWithoutCandidateInput? connectOrCreate;

  final _i2.UserWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class CandidateCreateWithoutVoteInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CandidateCreateWithoutVoteInput({
    required this.uuid,
    required this.slogan,
    required this.speech,
    required this.user,
  });

  final String uuid;

  final String slogan;

  final String speech;

  final _i2.UserCreateNestedOneWithoutCandidateInput user;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'slogan': slogan,
        'speech': speech,
        'user': user,
      };
}

class CandidateUncheckedCreateWithoutVoteInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CandidateUncheckedCreateWithoutVoteInput({
    required this.uuid,
    required this.slogan,
    required this.speech,
    required this.userUuid,
  });

  final String uuid;

  final String slogan;

  final String speech;

  final String userUuid;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'slogan': slogan,
        'speech': speech,
        'user_uuid': userUuid,
      };
}

class CandidateCreateOrConnectWithoutVoteInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CandidateCreateOrConnectWithoutVoteInput({
    required this.where,
    required this.create,
  });

  final _i2.CandidateWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.CandidateCreateWithoutVoteInput,
      _i2.CandidateUncheckedCreateWithoutVoteInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class CandidateCreateNestedOneWithoutVoteInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CandidateCreateNestedOneWithoutVoteInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.CandidateCreateWithoutVoteInput,
      _i2.CandidateUncheckedCreateWithoutVoteInput>? create;

  final _i2.CandidateCreateOrConnectWithoutVoteInput? connectOrCreate;

  final _i2.CandidateWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class VoteCreateWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VoteCreateWithoutUserInput({
    required this.uuid,
    this.votedAt,
    required this.candidate,
  });

  final String uuid;

  final DateTime? votedAt;

  final _i2.CandidateCreateNestedOneWithoutVoteInput candidate;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'voted_at': votedAt,
        'candidate': candidate,
      };
}

class VoteCreateNestedOneWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VoteCreateNestedOneWithoutUserInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.VoteCreateWithoutUserInput,
      _i2.VoteUncheckedCreateWithoutUserInput>? create;

  final _i2.VoteCreateOrConnectWithoutUserInput? connectOrCreate;

  final _i2.VoteWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class UserCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateInput({
    required this.uuid,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
    this.image,
    required this.grade,
    required this.areaOfStudy,
    this.candidate,
    this.vote,
  });

  final String uuid;

  final String firstName;

  final String lastName;

  final String email;

  final String password;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? image;

  final String grade;

  final String areaOfStudy;

  final _i2.CandidateCreateNestedOneWithoutUserInput? candidate;

  final _i2.VoteCreateNestedOneWithoutUserInput? vote;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'firstName': firstName,
        'lastName': lastName,
        'email': email,
        'password': password,
        'image': image,
        'grade': grade,
        'areaOfStudy': areaOfStudy,
        'candidate': candidate,
        'vote': vote,
      };
}

class UserUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedCreateInput({
    required this.uuid,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
    this.image,
    required this.grade,
    required this.areaOfStudy,
    this.candidate,
    this.vote,
  });

  final String uuid;

  final String firstName;

  final String lastName;

  final String email;

  final String password;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? image;

  final String grade;

  final String areaOfStudy;

  final _i2.CandidateUncheckedCreateNestedOneWithoutUserInput? candidate;

  final _i2.VoteUncheckedCreateNestedOneWithoutUserInput? vote;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'firstName': firstName,
        'lastName': lastName,
        'email': email,
        'password': password,
        'image': image,
        'grade': grade,
        'areaOfStudy': areaOfStudy,
        'candidate': candidate,
        'vote': vote,
      };
}

class AffectedRowsOutput {
  const AffectedRowsOutput({this.count});

  factory AffectedRowsOutput.fromJson(Map json) =>
      AffectedRowsOutput(count: json['count']);

  final int? count;
}

class UserCreateManyInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateManyInput({
    required this.uuid,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
    this.image,
    required this.grade,
    required this.areaOfStudy,
  });

  final String uuid;

  final String firstName;

  final String lastName;

  final String email;

  final String password;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? image;

  final String grade;

  final String areaOfStudy;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'firstName': firstName,
        'lastName': lastName,
        'email': email,
        'password': password,
        'image': image,
        'grade': grade,
        'areaOfStudy': areaOfStudy,
      };
}

class StringFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringFieldUpdateOperationsInput({this.set});

  final String? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class NullableStringFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NullableStringFieldUpdateOperationsInput({this.set});

  final _i1.PrismaUnion<String, _i1.PrismaNull>? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class DateTimeFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DateTimeFieldUpdateOperationsInput({this.set});

  final DateTime? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class UserUpdateWithoutVoteInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateWithoutVoteInput({
    this.uuid,
    this.firstName,
    this.lastName,
    this.email,
    this.password,
    this.image,
    this.grade,
    this.areaOfStudy,
    this.candidate,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? uuid;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      firstName;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? lastName;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? password;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? image;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? grade;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      areaOfStudy;

  final _i2.CandidateUpdateOneWithoutUserNestedInput? candidate;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'firstName': firstName,
        'lastName': lastName,
        'email': email,
        'password': password,
        'image': image,
        'grade': grade,
        'areaOfStudy': areaOfStudy,
        'candidate': candidate,
      };
}

class VoteUncheckedUpdateWithoutCandidateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VoteUncheckedUpdateWithoutCandidateInput({
    this.uuid,
    this.userUuid,
    this.votedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? uuid;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? userUuid;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      votedAt;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'user_uuid': userUuid,
        'voted_at': votedAt,
      };
}

class VoteUpdateToOneWithWhereWithoutCandidateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VoteUpdateToOneWithWhereWithoutCandidateInput({
    this.where,
    required this.data,
  });

  final _i2.VoteWhereInput? where;

  final _i1.PrismaUnion<_i2.VoteUpdateWithoutCandidateInput,
      _i2.VoteUncheckedUpdateWithoutCandidateInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class VoteUncheckedUpdateOneWithoutCandidateNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VoteUncheckedUpdateOneWithoutCandidateNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.VoteCreateWithoutCandidateInput,
      _i2.VoteUncheckedCreateWithoutCandidateInput>? create;

  final _i2.VoteCreateOrConnectWithoutCandidateInput? connectOrCreate;

  final _i2.VoteUpsertWithoutCandidateInput? upsert;

  final _i1.PrismaUnion<bool, _i2.VoteWhereInput>? disconnect;

  final _i1.PrismaUnion<bool, _i2.VoteWhereInput>? delete;

  final _i2.VoteWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.VoteUpdateToOneWithWhereWithoutCandidateInput,
      _i1.PrismaUnion<_i2.VoteUpdateWithoutCandidateInput,
          _i2.VoteUncheckedUpdateWithoutCandidateInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
      };
}

class CandidateUncheckedUpdateWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CandidateUncheckedUpdateWithoutUserInput({
    this.uuid,
    this.slogan,
    this.speech,
    this.vote,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? uuid;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? slogan;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? speech;

  final _i2.VoteUncheckedUpdateOneWithoutCandidateNestedInput? vote;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'slogan': slogan,
        'speech': speech,
        'vote': vote,
      };
}

class CandidateUpdateToOneWithWhereWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CandidateUpdateToOneWithWhereWithoutUserInput({
    this.where,
    required this.data,
  });

  final _i2.CandidateWhereInput? where;

  final _i1.PrismaUnion<_i2.CandidateUpdateWithoutUserInput,
      _i2.CandidateUncheckedUpdateWithoutUserInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class CandidateUncheckedUpdateOneWithoutUserNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CandidateUncheckedUpdateOneWithoutUserNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.CandidateCreateWithoutUserInput,
      _i2.CandidateUncheckedCreateWithoutUserInput>? create;

  final _i2.CandidateCreateOrConnectWithoutUserInput? connectOrCreate;

  final _i2.CandidateUpsertWithoutUserInput? upsert;

  final _i1.PrismaUnion<bool, _i2.CandidateWhereInput>? disconnect;

  final _i1.PrismaUnion<bool, _i2.CandidateWhereInput>? delete;

  final _i2.CandidateWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.CandidateUpdateToOneWithWhereWithoutUserInput,
      _i1.PrismaUnion<_i2.CandidateUpdateWithoutUserInput,
          _i2.CandidateUncheckedUpdateWithoutUserInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
      };
}

class UserUncheckedUpdateWithoutVoteInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedUpdateWithoutVoteInput({
    this.uuid,
    this.firstName,
    this.lastName,
    this.email,
    this.password,
    this.image,
    this.grade,
    this.areaOfStudy,
    this.candidate,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? uuid;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      firstName;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? lastName;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? password;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? image;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? grade;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      areaOfStudy;

  final _i2.CandidateUncheckedUpdateOneWithoutUserNestedInput? candidate;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'firstName': firstName,
        'lastName': lastName,
        'email': email,
        'password': password,
        'image': image,
        'grade': grade,
        'areaOfStudy': areaOfStudy,
        'candidate': candidate,
      };
}

class UserUpsertWithoutVoteInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpsertWithoutVoteInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.UserUpdateWithoutVoteInput,
      _i2.UserUncheckedUpdateWithoutVoteInput> update;

  final _i1.PrismaUnion<_i2.UserCreateWithoutVoteInput,
      _i2.UserUncheckedCreateWithoutVoteInput> create;

  final _i2.UserWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class UserUpdateToOneWithWhereWithoutVoteInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateToOneWithWhereWithoutVoteInput({
    this.where,
    required this.data,
  });

  final _i2.UserWhereInput? where;

  final _i1.PrismaUnion<_i2.UserUpdateWithoutVoteInput,
      _i2.UserUncheckedUpdateWithoutVoteInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class UserUpdateOneRequiredWithoutVoteNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateOneRequiredWithoutVoteNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.UserCreateWithoutVoteInput,
      _i2.UserUncheckedCreateWithoutVoteInput>? create;

  final _i2.UserCreateOrConnectWithoutVoteInput? connectOrCreate;

  final _i2.UserUpsertWithoutVoteInput? upsert;

  final _i2.UserWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.UserUpdateToOneWithWhereWithoutVoteInput,
      _i1.PrismaUnion<_i2.UserUpdateWithoutVoteInput,
          _i2.UserUncheckedUpdateWithoutVoteInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class VoteUpdateWithoutCandidateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VoteUpdateWithoutCandidateInput({
    this.uuid,
    this.votedAt,
    this.user,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? uuid;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      votedAt;

  final _i2.UserUpdateOneRequiredWithoutVoteNestedInput? user;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'voted_at': votedAt,
        'user': user,
      };
}

class VoteUpsertWithoutCandidateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VoteUpsertWithoutCandidateInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.VoteUpdateWithoutCandidateInput,
      _i2.VoteUncheckedUpdateWithoutCandidateInput> update;

  final _i1.PrismaUnion<_i2.VoteCreateWithoutCandidateInput,
      _i2.VoteUncheckedCreateWithoutCandidateInput> create;

  final _i2.VoteWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class VoteUpdateOneWithoutCandidateNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VoteUpdateOneWithoutCandidateNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.VoteCreateWithoutCandidateInput,
      _i2.VoteUncheckedCreateWithoutCandidateInput>? create;

  final _i2.VoteCreateOrConnectWithoutCandidateInput? connectOrCreate;

  final _i2.VoteUpsertWithoutCandidateInput? upsert;

  final _i1.PrismaUnion<bool, _i2.VoteWhereInput>? disconnect;

  final _i1.PrismaUnion<bool, _i2.VoteWhereInput>? delete;

  final _i2.VoteWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.VoteUpdateToOneWithWhereWithoutCandidateInput,
      _i1.PrismaUnion<_i2.VoteUpdateWithoutCandidateInput,
          _i2.VoteUncheckedUpdateWithoutCandidateInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
      };
}

class CandidateUpdateWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CandidateUpdateWithoutUserInput({
    this.uuid,
    this.slogan,
    this.speech,
    this.vote,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? uuid;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? slogan;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? speech;

  final _i2.VoteUpdateOneWithoutCandidateNestedInput? vote;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'slogan': slogan,
        'speech': speech,
        'vote': vote,
      };
}

class CandidateUpsertWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CandidateUpsertWithoutUserInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.CandidateUpdateWithoutUserInput,
      _i2.CandidateUncheckedUpdateWithoutUserInput> update;

  final _i1.PrismaUnion<_i2.CandidateCreateWithoutUserInput,
      _i2.CandidateUncheckedCreateWithoutUserInput> create;

  final _i2.CandidateWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class CandidateUpdateOneWithoutUserNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CandidateUpdateOneWithoutUserNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.CandidateCreateWithoutUserInput,
      _i2.CandidateUncheckedCreateWithoutUserInput>? create;

  final _i2.CandidateCreateOrConnectWithoutUserInput? connectOrCreate;

  final _i2.CandidateUpsertWithoutUserInput? upsert;

  final _i1.PrismaUnion<bool, _i2.CandidateWhereInput>? disconnect;

  final _i1.PrismaUnion<bool, _i2.CandidateWhereInput>? delete;

  final _i2.CandidateWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.CandidateUpdateToOneWithWhereWithoutUserInput,
      _i1.PrismaUnion<_i2.CandidateUpdateWithoutUserInput,
          _i2.CandidateUncheckedUpdateWithoutUserInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
      };
}

class UserUpdateWithoutCandidateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateWithoutCandidateInput({
    this.uuid,
    this.firstName,
    this.lastName,
    this.email,
    this.password,
    this.image,
    this.grade,
    this.areaOfStudy,
    this.vote,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? uuid;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      firstName;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? lastName;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? password;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? image;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? grade;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      areaOfStudy;

  final _i2.VoteUpdateOneWithoutUserNestedInput? vote;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'firstName': firstName,
        'lastName': lastName,
        'email': email,
        'password': password,
        'image': image,
        'grade': grade,
        'areaOfStudy': areaOfStudy,
        'vote': vote,
      };
}

class VoteUncheckedUpdateWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VoteUncheckedUpdateWithoutUserInput({
    this.uuid,
    this.candidateUuid,
    this.votedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? uuid;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      candidateUuid;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      votedAt;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'candidate_uuid': candidateUuid,
        'voted_at': votedAt,
      };
}

class VoteUpdateToOneWithWhereWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VoteUpdateToOneWithWhereWithoutUserInput({
    this.where,
    required this.data,
  });

  final _i2.VoteWhereInput? where;

  final _i1.PrismaUnion<_i2.VoteUpdateWithoutUserInput,
      _i2.VoteUncheckedUpdateWithoutUserInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class VoteUncheckedUpdateOneWithoutUserNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VoteUncheckedUpdateOneWithoutUserNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.VoteCreateWithoutUserInput,
      _i2.VoteUncheckedCreateWithoutUserInput>? create;

  final _i2.VoteCreateOrConnectWithoutUserInput? connectOrCreate;

  final _i2.VoteUpsertWithoutUserInput? upsert;

  final _i1.PrismaUnion<bool, _i2.VoteWhereInput>? disconnect;

  final _i1.PrismaUnion<bool, _i2.VoteWhereInput>? delete;

  final _i2.VoteWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.VoteUpdateToOneWithWhereWithoutUserInput,
      _i1.PrismaUnion<_i2.VoteUpdateWithoutUserInput,
          _i2.VoteUncheckedUpdateWithoutUserInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
      };
}

class UserUncheckedUpdateWithoutCandidateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedUpdateWithoutCandidateInput({
    this.uuid,
    this.firstName,
    this.lastName,
    this.email,
    this.password,
    this.image,
    this.grade,
    this.areaOfStudy,
    this.vote,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? uuid;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      firstName;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? lastName;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? password;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? image;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? grade;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      areaOfStudy;

  final _i2.VoteUncheckedUpdateOneWithoutUserNestedInput? vote;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'firstName': firstName,
        'lastName': lastName,
        'email': email,
        'password': password,
        'image': image,
        'grade': grade,
        'areaOfStudy': areaOfStudy,
        'vote': vote,
      };
}

class UserUpsertWithoutCandidateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpsertWithoutCandidateInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.UserUpdateWithoutCandidateInput,
      _i2.UserUncheckedUpdateWithoutCandidateInput> update;

  final _i1.PrismaUnion<_i2.UserCreateWithoutCandidateInput,
      _i2.UserUncheckedCreateWithoutCandidateInput> create;

  final _i2.UserWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class UserUpdateToOneWithWhereWithoutCandidateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateToOneWithWhereWithoutCandidateInput({
    this.where,
    required this.data,
  });

  final _i2.UserWhereInput? where;

  final _i1.PrismaUnion<_i2.UserUpdateWithoutCandidateInput,
      _i2.UserUncheckedUpdateWithoutCandidateInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class UserUpdateOneRequiredWithoutCandidateNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateOneRequiredWithoutCandidateNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.UserCreateWithoutCandidateInput,
      _i2.UserUncheckedCreateWithoutCandidateInput>? create;

  final _i2.UserCreateOrConnectWithoutCandidateInput? connectOrCreate;

  final _i2.UserUpsertWithoutCandidateInput? upsert;

  final _i2.UserWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.UserUpdateToOneWithWhereWithoutCandidateInput,
      _i1.PrismaUnion<_i2.UserUpdateWithoutCandidateInput,
          _i2.UserUncheckedUpdateWithoutCandidateInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class CandidateUpdateWithoutVoteInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CandidateUpdateWithoutVoteInput({
    this.uuid,
    this.slogan,
    this.speech,
    this.user,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? uuid;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? slogan;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? speech;

  final _i2.UserUpdateOneRequiredWithoutCandidateNestedInput? user;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'slogan': slogan,
        'speech': speech,
        'user': user,
      };
}

class CandidateUncheckedUpdateWithoutVoteInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CandidateUncheckedUpdateWithoutVoteInput({
    this.uuid,
    this.slogan,
    this.speech,
    this.userUuid,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? uuid;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? slogan;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? speech;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? userUuid;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'slogan': slogan,
        'speech': speech,
        'user_uuid': userUuid,
      };
}

class CandidateUpsertWithoutVoteInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CandidateUpsertWithoutVoteInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.CandidateUpdateWithoutVoteInput,
      _i2.CandidateUncheckedUpdateWithoutVoteInput> update;

  final _i1.PrismaUnion<_i2.CandidateCreateWithoutVoteInput,
      _i2.CandidateUncheckedCreateWithoutVoteInput> create;

  final _i2.CandidateWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class CandidateUpdateToOneWithWhereWithoutVoteInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CandidateUpdateToOneWithWhereWithoutVoteInput({
    this.where,
    required this.data,
  });

  final _i2.CandidateWhereInput? where;

  final _i1.PrismaUnion<_i2.CandidateUpdateWithoutVoteInput,
      _i2.CandidateUncheckedUpdateWithoutVoteInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class CandidateUpdateOneRequiredWithoutVoteNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CandidateUpdateOneRequiredWithoutVoteNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.CandidateCreateWithoutVoteInput,
      _i2.CandidateUncheckedCreateWithoutVoteInput>? create;

  final _i2.CandidateCreateOrConnectWithoutVoteInput? connectOrCreate;

  final _i2.CandidateUpsertWithoutVoteInput? upsert;

  final _i2.CandidateWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.CandidateUpdateToOneWithWhereWithoutVoteInput,
      _i1.PrismaUnion<_i2.CandidateUpdateWithoutVoteInput,
          _i2.CandidateUncheckedUpdateWithoutVoteInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class VoteUpdateWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VoteUpdateWithoutUserInput({
    this.uuid,
    this.votedAt,
    this.candidate,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? uuid;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      votedAt;

  final _i2.CandidateUpdateOneRequiredWithoutVoteNestedInput? candidate;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'voted_at': votedAt,
        'candidate': candidate,
      };
}

class VoteUpsertWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VoteUpsertWithoutUserInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.VoteUpdateWithoutUserInput,
      _i2.VoteUncheckedUpdateWithoutUserInput> update;

  final _i1.PrismaUnion<_i2.VoteCreateWithoutUserInput,
      _i2.VoteUncheckedCreateWithoutUserInput> create;

  final _i2.VoteWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class VoteUpdateOneWithoutUserNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VoteUpdateOneWithoutUserNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.VoteCreateWithoutUserInput,
      _i2.VoteUncheckedCreateWithoutUserInput>? create;

  final _i2.VoteCreateOrConnectWithoutUserInput? connectOrCreate;

  final _i2.VoteUpsertWithoutUserInput? upsert;

  final _i1.PrismaUnion<bool, _i2.VoteWhereInput>? disconnect;

  final _i1.PrismaUnion<bool, _i2.VoteWhereInput>? delete;

  final _i2.VoteWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.VoteUpdateToOneWithWhereWithoutUserInput,
      _i1.PrismaUnion<_i2.VoteUpdateWithoutUserInput,
          _i2.VoteUncheckedUpdateWithoutUserInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
      };
}

class UserUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateInput({
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

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? uuid;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      firstName;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? lastName;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? password;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? image;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? grade;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      areaOfStudy;

  final _i2.CandidateUpdateOneWithoutUserNestedInput? candidate;

  final _i2.VoteUpdateOneWithoutUserNestedInput? vote;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'firstName': firstName,
        'lastName': lastName,
        'email': email,
        'password': password,
        'image': image,
        'grade': grade,
        'areaOfStudy': areaOfStudy,
        'candidate': candidate,
        'vote': vote,
      };
}

class UserUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedUpdateInput({
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

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? uuid;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      firstName;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? lastName;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? password;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? image;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? grade;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      areaOfStudy;

  final _i2.CandidateUncheckedUpdateOneWithoutUserNestedInput? candidate;

  final _i2.VoteUncheckedUpdateOneWithoutUserNestedInput? vote;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'firstName': firstName,
        'lastName': lastName,
        'email': email,
        'password': password,
        'image': image,
        'grade': grade,
        'areaOfStudy': areaOfStudy,
        'candidate': candidate,
        'vote': vote,
      };
}

class UserUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateManyMutationInput({
    this.uuid,
    this.firstName,
    this.lastName,
    this.email,
    this.password,
    this.image,
    this.grade,
    this.areaOfStudy,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? uuid;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      firstName;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? lastName;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? password;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? image;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? grade;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      areaOfStudy;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'firstName': firstName,
        'lastName': lastName,
        'email': email,
        'password': password,
        'image': image,
        'grade': grade,
        'areaOfStudy': areaOfStudy,
      };
}

class UserUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedUpdateManyInput({
    this.uuid,
    this.firstName,
    this.lastName,
    this.email,
    this.password,
    this.image,
    this.grade,
    this.areaOfStudy,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? uuid;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      firstName;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? lastName;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? password;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? image;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? grade;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      areaOfStudy;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'firstName': firstName,
        'lastName': lastName,
        'email': email,
        'password': password,
        'image': image,
        'grade': grade,
        'areaOfStudy': areaOfStudy,
      };
}

class UserCountAggregateOutputType {
  const UserCountAggregateOutputType({
    this.uuid,
    this.firstName,
    this.lastName,
    this.email,
    this.password,
    this.image,
    this.grade,
    this.areaOfStudy,
    this.$all,
  });

  factory UserCountAggregateOutputType.fromJson(Map json) =>
      UserCountAggregateOutputType(
        uuid: json['uuid'],
        firstName: json['firstName'],
        lastName: json['lastName'],
        email: json['email'],
        password: json['password'],
        image: json['image'],
        grade: json['grade'],
        areaOfStudy: json['areaOfStudy'],
        $all: json['_all'],
      );

  final int? uuid;

  final int? firstName;

  final int? lastName;

  final int? email;

  final int? password;

  final int? image;

  final int? grade;

  final int? areaOfStudy;

  final int? $all;
}

class UserMinAggregateOutputType {
  const UserMinAggregateOutputType({
    this.uuid,
    this.firstName,
    this.lastName,
    this.email,
    this.password,
    this.image,
    this.grade,
    this.areaOfStudy,
  });

  factory UserMinAggregateOutputType.fromJson(Map json) =>
      UserMinAggregateOutputType(
        uuid: json['uuid'],
        firstName: json['firstName'],
        lastName: json['lastName'],
        email: json['email'],
        password: json['password'],
        image: json['image'],
        grade: json['grade'],
        areaOfStudy: json['areaOfStudy'],
      );

  final String? uuid;

  final String? firstName;

  final String? lastName;

  final String? email;

  final String? password;

  final String? image;

  final String? grade;

  final String? areaOfStudy;
}

class UserMaxAggregateOutputType {
  const UserMaxAggregateOutputType({
    this.uuid,
    this.firstName,
    this.lastName,
    this.email,
    this.password,
    this.image,
    this.grade,
    this.areaOfStudy,
  });

  factory UserMaxAggregateOutputType.fromJson(Map json) =>
      UserMaxAggregateOutputType(
        uuid: json['uuid'],
        firstName: json['firstName'],
        lastName: json['lastName'],
        email: json['email'],
        password: json['password'],
        image: json['image'],
        grade: json['grade'],
        areaOfStudy: json['areaOfStudy'],
      );

  final String? uuid;

  final String? firstName;

  final String? lastName;

  final String? email;

  final String? password;

  final String? image;

  final String? grade;

  final String? areaOfStudy;
}

class UserGroupByOutputType {
  const UserGroupByOutputType({
    this.uuid,
    this.firstName,
    this.lastName,
    this.email,
    this.password,
    this.image,
    this.grade,
    this.areaOfStudy,
    this.$count,
    this.$min,
    this.$max,
  });

  factory UserGroupByOutputType.fromJson(Map json) => UserGroupByOutputType(
        uuid: json['uuid'],
        firstName: json['firstName'],
        lastName: json['lastName'],
        email: json['email'],
        password: json['password'],
        image: json['image'],
        grade: json['grade'],
        areaOfStudy: json['areaOfStudy'],
        $count: json['_count'] is Map
            ? _i2.UserCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.UserMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.UserMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final String? uuid;

  final String? firstName;

  final String? lastName;

  final String? email;

  final String? password;

  final String? image;

  final String? grade;

  final String? areaOfStudy;

  final _i2.UserCountAggregateOutputType? $count;

  final _i2.UserMinAggregateOutputType? $min;

  final _i2.UserMaxAggregateOutputType? $max;
}

class UserCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCountOrderByAggregateInput({
    this.uuid,
    this.firstName,
    this.lastName,
    this.email,
    this.password,
    this.image,
    this.grade,
    this.areaOfStudy,
  });

  final _i2.SortOrder? uuid;

  final _i2.SortOrder? firstName;

  final _i2.SortOrder? lastName;

  final _i2.SortOrder? email;

  final _i2.SortOrder? password;

  final _i2.SortOrder? image;

  final _i2.SortOrder? grade;

  final _i2.SortOrder? areaOfStudy;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'firstName': firstName,
        'lastName': lastName,
        'email': email,
        'password': password,
        'image': image,
        'grade': grade,
        'areaOfStudy': areaOfStudy,
      };
}

class UserMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserMaxOrderByAggregateInput({
    this.uuid,
    this.firstName,
    this.lastName,
    this.email,
    this.password,
    this.image,
    this.grade,
    this.areaOfStudy,
  });

  final _i2.SortOrder? uuid;

  final _i2.SortOrder? firstName;

  final _i2.SortOrder? lastName;

  final _i2.SortOrder? email;

  final _i2.SortOrder? password;

  final _i2.SortOrder? image;

  final _i2.SortOrder? grade;

  final _i2.SortOrder? areaOfStudy;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'firstName': firstName,
        'lastName': lastName,
        'email': email,
        'password': password,
        'image': image,
        'grade': grade,
        'areaOfStudy': areaOfStudy,
      };
}

class UserMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserMinOrderByAggregateInput({
    this.uuid,
    this.firstName,
    this.lastName,
    this.email,
    this.password,
    this.image,
    this.grade,
    this.areaOfStudy,
  });

  final _i2.SortOrder? uuid;

  final _i2.SortOrder? firstName;

  final _i2.SortOrder? lastName;

  final _i2.SortOrder? email;

  final _i2.SortOrder? password;

  final _i2.SortOrder? image;

  final _i2.SortOrder? grade;

  final _i2.SortOrder? areaOfStudy;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'firstName': firstName,
        'lastName': lastName,
        'email': email,
        'password': password,
        'image': image,
        'grade': grade,
        'areaOfStudy': areaOfStudy,
      };
}

class UserOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserOrderByWithAggregationInput({
    this.uuid,
    this.firstName,
    this.lastName,
    this.email,
    this.password,
    this.image,
    this.grade,
    this.areaOfStudy,
    this.$count,
    this.$max,
    this.$min,
  });

  final _i2.SortOrder? uuid;

  final _i2.SortOrder? firstName;

  final _i2.SortOrder? lastName;

  final _i2.SortOrder? email;

  final _i2.SortOrder? password;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? image;

  final _i2.SortOrder? grade;

  final _i2.SortOrder? areaOfStudy;

  final _i2.UserCountOrderByAggregateInput? $count;

  final _i2.UserMaxOrderByAggregateInput? $max;

  final _i2.UserMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'firstName': firstName,
        'lastName': lastName,
        'email': email,
        'password': password,
        'image': image,
        'grade': grade,
        'areaOfStudy': areaOfStudy,
        '_count': $count,
        '_max': $max,
        '_min': $min,
      };
}

class NestedIntFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedIntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<int, _i1.Reference<int>>? equals;

  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int, _i2.NestedIntFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class NestedStringWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedStringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i1.PrismaUnion<String, _i2.NestedStringWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedStringFilter? $min;

  final _i2.NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class StringWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i1.PrismaUnion<String, _i2.NestedStringWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedStringFilter? $min;

  final _i2.NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class NestedIntNullableFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedIntNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1
      .PrismaUnion<int, _i1.PrismaUnion<_i1.Reference<int>, _i1.PrismaNull>>?
      equals;

  final _i1.PrismaUnion<Iterable<int>, _i1.PrismaNull>? $in;

  final _i1.PrismaUnion<Iterable<int>, _i1.PrismaNull>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int,
      _i1.PrismaUnion<_i2.NestedIntNullableFilter, _i1.PrismaNull>>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class NestedStringNullableWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedStringNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i1.Reference<String>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<String>, _i1.PrismaNull>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.PrismaNull>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NestedStringNullableWithAggregatesFilter,
          _i1.PrismaNull>>? not;

  final _i2.NestedIntNullableFilter? $count;

  final _i2.NestedStringNullableFilter? $min;

  final _i2.NestedStringNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class StringNullableWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i1.Reference<String>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<String>, _i1.PrismaNull>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.PrismaNull>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NestedStringNullableWithAggregatesFilter,
          _i1.PrismaNull>>? not;

  final _i2.NestedIntNullableFilter? $count;

  final _i2.NestedStringNullableFilter? $min;

  final _i2.NestedStringNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class UserScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.uuid,
    this.firstName,
    this.lastName,
    this.email,
    this.password,
    this.image,
    this.grade,
    this.areaOfStudy,
  });

  final _i1.PrismaUnion<_i2.UserScalarWhereWithAggregatesInput,
      Iterable<_i2.UserScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.UserScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.UserScalarWhereWithAggregatesInput,
      Iterable<_i2.UserScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? uuid;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? firstName;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? lastName;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? email;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? password;

  final _i1.PrismaUnion<_i2.StringNullableWithAggregatesFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? image;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? grade;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? areaOfStudy;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'uuid': uuid,
        'firstName': firstName,
        'lastName': lastName,
        'email': email,
        'password': password,
        'image': image,
        'grade': grade,
        'areaOfStudy': areaOfStudy,
      };
}

class UserCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCountAggregateOutputTypeSelect({
    this.uuid,
    this.firstName,
    this.lastName,
    this.email,
    this.password,
    this.image,
    this.grade,
    this.areaOfStudy,
    this.$all,
  });

  final bool? uuid;

  final bool? firstName;

  final bool? lastName;

  final bool? email;

  final bool? password;

  final bool? image;

  final bool? grade;

  final bool? areaOfStudy;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'firstName': firstName,
        'lastName': lastName,
        'email': email,
        'password': password,
        'image': image,
        'grade': grade,
        'areaOfStudy': areaOfStudy,
        '_all': $all,
      };
}

class UserGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserGroupByOutputTypeCountArgs({this.select});

  final _i2.UserCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UserMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserMinAggregateOutputTypeSelect({
    this.uuid,
    this.firstName,
    this.lastName,
    this.email,
    this.password,
    this.image,
    this.grade,
    this.areaOfStudy,
  });

  final bool? uuid;

  final bool? firstName;

  final bool? lastName;

  final bool? email;

  final bool? password;

  final bool? image;

  final bool? grade;

  final bool? areaOfStudy;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'firstName': firstName,
        'lastName': lastName,
        'email': email,
        'password': password,
        'image': image,
        'grade': grade,
        'areaOfStudy': areaOfStudy,
      };
}

class UserGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserGroupByOutputTypeMinArgs({this.select});

  final _i2.UserMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UserMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserMaxAggregateOutputTypeSelect({
    this.uuid,
    this.firstName,
    this.lastName,
    this.email,
    this.password,
    this.image,
    this.grade,
    this.areaOfStudy,
  });

  final bool? uuid;

  final bool? firstName;

  final bool? lastName;

  final bool? email;

  final bool? password;

  final bool? image;

  final bool? grade;

  final bool? areaOfStudy;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'firstName': firstName,
        'lastName': lastName,
        'email': email,
        'password': password,
        'image': image,
        'grade': grade,
        'areaOfStudy': areaOfStudy,
      };
}

class UserGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserGroupByOutputTypeMaxArgs({this.select});

  final _i2.UserMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UserGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserGroupByOutputTypeSelect({
    this.uuid,
    this.firstName,
    this.lastName,
    this.email,
    this.password,
    this.image,
    this.grade,
    this.areaOfStudy,
    this.$count,
    this.$min,
    this.$max,
  });

  final bool? uuid;

  final bool? firstName;

  final bool? lastName;

  final bool? email;

  final bool? password;

  final bool? image;

  final bool? grade;

  final bool? areaOfStudy;

  final _i1.PrismaUnion<bool, _i2.UserGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.UserGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.UserGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'firstName': firstName,
        'lastName': lastName,
        'email': email,
        'password': password,
        'image': image,
        'grade': grade,
        'areaOfStudy': areaOfStudy,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateUser {
  const AggregateUser({
    this.$count,
    this.$min,
    this.$max,
  });

  factory AggregateUser.fromJson(Map json) => AggregateUser(
        $count: json['_count'] is Map
            ? _i2.UserCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.UserMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.UserMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.UserCountAggregateOutputType? $count;

  final _i2.UserMinAggregateOutputType? $min;

  final _i2.UserMaxAggregateOutputType? $max;
}

class AggregateUserCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUserCountArgs({this.select});

  final _i2.UserCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateUserMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUserMinArgs({this.select});

  final _i2.UserMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateUserMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUserMaxArgs({this.select});

  final _i2.UserMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateUserSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUserSelect({
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateUserCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateUserMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateUserMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

enum CandidateScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  uuid<String>('uuid', 'Candidate'),
  slogan<String>('slogan', 'Candidate'),
  speech<String>('speech', 'Candidate'),
  userUuid<String>('user_uuid', 'Candidate');

  const CandidateScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class CandidateCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CandidateCreateInput({
    required this.uuid,
    required this.slogan,
    required this.speech,
    required this.user,
    this.vote,
  });

  final String uuid;

  final String slogan;

  final String speech;

  final _i2.UserCreateNestedOneWithoutCandidateInput user;

  final _i2.VoteCreateNestedOneWithoutCandidateInput? vote;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'slogan': slogan,
        'speech': speech,
        'user': user,
        'vote': vote,
      };
}

class CandidateUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CandidateUncheckedCreateInput({
    required this.uuid,
    required this.slogan,
    required this.speech,
    required this.userUuid,
    this.vote,
  });

  final String uuid;

  final String slogan;

  final String speech;

  final String userUuid;

  final _i2.VoteUncheckedCreateNestedOneWithoutCandidateInput? vote;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'slogan': slogan,
        'speech': speech,
        'user_uuid': userUuid,
        'vote': vote,
      };
}

class CandidateCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CandidateCreateManyInput({
    required this.uuid,
    required this.slogan,
    required this.speech,
    required this.userUuid,
  });

  final String uuid;

  final String slogan;

  final String speech;

  final String userUuid;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'slogan': slogan,
        'speech': speech,
        'user_uuid': userUuid,
      };
}

class CandidateUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CandidateUpdateInput({
    this.uuid,
    this.slogan,
    this.speech,
    this.user,
    this.vote,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? uuid;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? slogan;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? speech;

  final _i2.UserUpdateOneRequiredWithoutCandidateNestedInput? user;

  final _i2.VoteUpdateOneWithoutCandidateNestedInput? vote;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'slogan': slogan,
        'speech': speech,
        'user': user,
        'vote': vote,
      };
}

class CandidateUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CandidateUncheckedUpdateInput({
    this.uuid,
    this.slogan,
    this.speech,
    this.userUuid,
    this.vote,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? uuid;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? slogan;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? speech;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? userUuid;

  final _i2.VoteUncheckedUpdateOneWithoutCandidateNestedInput? vote;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'slogan': slogan,
        'speech': speech,
        'user_uuid': userUuid,
        'vote': vote,
      };
}

class CandidateUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CandidateUpdateManyMutationInput({
    this.uuid,
    this.slogan,
    this.speech,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? uuid;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? slogan;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? speech;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'slogan': slogan,
        'speech': speech,
      };
}

class CandidateUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CandidateUncheckedUpdateManyInput({
    this.uuid,
    this.slogan,
    this.speech,
    this.userUuid,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? uuid;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? slogan;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? speech;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? userUuid;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'slogan': slogan,
        'speech': speech,
        'user_uuid': userUuid,
      };
}

class CandidateCountAggregateOutputType {
  const CandidateCountAggregateOutputType({
    this.uuid,
    this.slogan,
    this.speech,
    this.userUuid,
    this.$all,
  });

  factory CandidateCountAggregateOutputType.fromJson(Map json) =>
      CandidateCountAggregateOutputType(
        uuid: json['uuid'],
        slogan: json['slogan'],
        speech: json['speech'],
        userUuid: json['user_uuid'],
        $all: json['_all'],
      );

  final int? uuid;

  final int? slogan;

  final int? speech;

  final int? userUuid;

  final int? $all;
}

class CandidateMinAggregateOutputType {
  const CandidateMinAggregateOutputType({
    this.uuid,
    this.slogan,
    this.speech,
    this.userUuid,
  });

  factory CandidateMinAggregateOutputType.fromJson(Map json) =>
      CandidateMinAggregateOutputType(
        uuid: json['uuid'],
        slogan: json['slogan'],
        speech: json['speech'],
        userUuid: json['user_uuid'],
      );

  final String? uuid;

  final String? slogan;

  final String? speech;

  final String? userUuid;
}

class CandidateMaxAggregateOutputType {
  const CandidateMaxAggregateOutputType({
    this.uuid,
    this.slogan,
    this.speech,
    this.userUuid,
  });

  factory CandidateMaxAggregateOutputType.fromJson(Map json) =>
      CandidateMaxAggregateOutputType(
        uuid: json['uuid'],
        slogan: json['slogan'],
        speech: json['speech'],
        userUuid: json['user_uuid'],
      );

  final String? uuid;

  final String? slogan;

  final String? speech;

  final String? userUuid;
}

class CandidateGroupByOutputType {
  const CandidateGroupByOutputType({
    this.uuid,
    this.slogan,
    this.speech,
    this.userUuid,
    this.$count,
    this.$min,
    this.$max,
  });

  factory CandidateGroupByOutputType.fromJson(Map json) =>
      CandidateGroupByOutputType(
        uuid: json['uuid'],
        slogan: json['slogan'],
        speech: json['speech'],
        userUuid: json['user_uuid'],
        $count: json['_count'] is Map
            ? _i2.CandidateCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.CandidateMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.CandidateMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final String? uuid;

  final String? slogan;

  final String? speech;

  final String? userUuid;

  final _i2.CandidateCountAggregateOutputType? $count;

  final _i2.CandidateMinAggregateOutputType? $min;

  final _i2.CandidateMaxAggregateOutputType? $max;
}

class CandidateCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CandidateCountOrderByAggregateInput({
    this.uuid,
    this.slogan,
    this.speech,
    this.userUuid,
  });

  final _i2.SortOrder? uuid;

  final _i2.SortOrder? slogan;

  final _i2.SortOrder? speech;

  final _i2.SortOrder? userUuid;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'slogan': slogan,
        'speech': speech,
        'user_uuid': userUuid,
      };
}

class CandidateMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CandidateMaxOrderByAggregateInput({
    this.uuid,
    this.slogan,
    this.speech,
    this.userUuid,
  });

  final _i2.SortOrder? uuid;

  final _i2.SortOrder? slogan;

  final _i2.SortOrder? speech;

  final _i2.SortOrder? userUuid;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'slogan': slogan,
        'speech': speech,
        'user_uuid': userUuid,
      };
}

class CandidateMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CandidateMinOrderByAggregateInput({
    this.uuid,
    this.slogan,
    this.speech,
    this.userUuid,
  });

  final _i2.SortOrder? uuid;

  final _i2.SortOrder? slogan;

  final _i2.SortOrder? speech;

  final _i2.SortOrder? userUuid;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'slogan': slogan,
        'speech': speech,
        'user_uuid': userUuid,
      };
}

class CandidateOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CandidateOrderByWithAggregationInput({
    this.uuid,
    this.slogan,
    this.speech,
    this.userUuid,
    this.$count,
    this.$max,
    this.$min,
  });

  final _i2.SortOrder? uuid;

  final _i2.SortOrder? slogan;

  final _i2.SortOrder? speech;

  final _i2.SortOrder? userUuid;

  final _i2.CandidateCountOrderByAggregateInput? $count;

  final _i2.CandidateMaxOrderByAggregateInput? $max;

  final _i2.CandidateMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'slogan': slogan,
        'speech': speech,
        'user_uuid': userUuid,
        '_count': $count,
        '_max': $max,
        '_min': $min,
      };
}

class CandidateScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CandidateScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.uuid,
    this.slogan,
    this.speech,
    this.userUuid,
  });

  final _i1.PrismaUnion<_i2.CandidateScalarWhereWithAggregatesInput,
      Iterable<_i2.CandidateScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.CandidateScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.CandidateScalarWhereWithAggregatesInput,
      Iterable<_i2.CandidateScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? uuid;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? slogan;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? speech;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? userUuid;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'uuid': uuid,
        'slogan': slogan,
        'speech': speech,
        'user_uuid': userUuid,
      };
}

class CandidateCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CandidateCountAggregateOutputTypeSelect({
    this.uuid,
    this.slogan,
    this.speech,
    this.userUuid,
    this.$all,
  });

  final bool? uuid;

  final bool? slogan;

  final bool? speech;

  final bool? userUuid;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'slogan': slogan,
        'speech': speech,
        'user_uuid': userUuid,
        '_all': $all,
      };
}

class CandidateGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CandidateGroupByOutputTypeCountArgs({this.select});

  final _i2.CandidateCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class CandidateMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CandidateMinAggregateOutputTypeSelect({
    this.uuid,
    this.slogan,
    this.speech,
    this.userUuid,
  });

  final bool? uuid;

  final bool? slogan;

  final bool? speech;

  final bool? userUuid;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'slogan': slogan,
        'speech': speech,
        'user_uuid': userUuid,
      };
}

class CandidateGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CandidateGroupByOutputTypeMinArgs({this.select});

  final _i2.CandidateMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class CandidateMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CandidateMaxAggregateOutputTypeSelect({
    this.uuid,
    this.slogan,
    this.speech,
    this.userUuid,
  });

  final bool? uuid;

  final bool? slogan;

  final bool? speech;

  final bool? userUuid;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'slogan': slogan,
        'speech': speech,
        'user_uuid': userUuid,
      };
}

class CandidateGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CandidateGroupByOutputTypeMaxArgs({this.select});

  final _i2.CandidateMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class CandidateGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CandidateGroupByOutputTypeSelect({
    this.uuid,
    this.slogan,
    this.speech,
    this.userUuid,
    this.$count,
    this.$min,
    this.$max,
  });

  final bool? uuid;

  final bool? slogan;

  final bool? speech;

  final bool? userUuid;

  final _i1.PrismaUnion<bool, _i2.CandidateGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.CandidateGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.CandidateGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'slogan': slogan,
        'speech': speech,
        'user_uuid': userUuid,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateCandidate {
  const AggregateCandidate({
    this.$count,
    this.$min,
    this.$max,
  });

  factory AggregateCandidate.fromJson(Map json) => AggregateCandidate(
        $count: json['_count'] is Map
            ? _i2.CandidateCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.CandidateMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.CandidateMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.CandidateCountAggregateOutputType? $count;

  final _i2.CandidateMinAggregateOutputType? $min;

  final _i2.CandidateMaxAggregateOutputType? $max;
}

class AggregateCandidateCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateCandidateCountArgs({this.select});

  final _i2.CandidateCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateCandidateMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateCandidateMinArgs({this.select});

  final _i2.CandidateMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateCandidateMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateCandidateMaxArgs({this.select});

  final _i2.CandidateMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateCandidateSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateCandidateSelect({
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateCandidateCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateCandidateMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateCandidateMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

enum VoteScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  uuid<String>('uuid', 'Vote'),
  userUuid<String>('user_uuid', 'Vote'),
  candidateUuid<String>('candidate_uuid', 'Vote'),
  votedAt<DateTime>('voted_at', 'Vote');

  const VoteScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class VoteCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VoteCreateInput({
    required this.uuid,
    this.votedAt,
    required this.user,
    required this.candidate,
  });

  final String uuid;

  final DateTime? votedAt;

  final _i2.UserCreateNestedOneWithoutVoteInput user;

  final _i2.CandidateCreateNestedOneWithoutVoteInput candidate;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'voted_at': votedAt,
        'user': user,
        'candidate': candidate,
      };
}

class VoteUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VoteUncheckedCreateInput({
    required this.uuid,
    required this.userUuid,
    required this.candidateUuid,
    this.votedAt,
  });

  final String uuid;

  final String userUuid;

  final String candidateUuid;

  final DateTime? votedAt;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'user_uuid': userUuid,
        'candidate_uuid': candidateUuid,
        'voted_at': votedAt,
      };
}

class VoteCreateManyInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VoteCreateManyInput({
    required this.uuid,
    required this.userUuid,
    required this.candidateUuid,
    this.votedAt,
  });

  final String uuid;

  final String userUuid;

  final String candidateUuid;

  final DateTime? votedAt;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'user_uuid': userUuid,
        'candidate_uuid': candidateUuid,
        'voted_at': votedAt,
      };
}

class VoteUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VoteUpdateInput({
    this.uuid,
    this.votedAt,
    this.user,
    this.candidate,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? uuid;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      votedAt;

  final _i2.UserUpdateOneRequiredWithoutVoteNestedInput? user;

  final _i2.CandidateUpdateOneRequiredWithoutVoteNestedInput? candidate;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'voted_at': votedAt,
        'user': user,
        'candidate': candidate,
      };
}

class VoteUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VoteUncheckedUpdateInput({
    this.uuid,
    this.userUuid,
    this.candidateUuid,
    this.votedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? uuid;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? userUuid;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      candidateUuid;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      votedAt;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'user_uuid': userUuid,
        'candidate_uuid': candidateUuid,
        'voted_at': votedAt,
      };
}

class VoteUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VoteUpdateManyMutationInput({
    this.uuid,
    this.votedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? uuid;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      votedAt;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'voted_at': votedAt,
      };
}

class VoteUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VoteUncheckedUpdateManyInput({
    this.uuid,
    this.userUuid,
    this.candidateUuid,
    this.votedAt,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? uuid;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? userUuid;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      candidateUuid;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      votedAt;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'user_uuid': userUuid,
        'candidate_uuid': candidateUuid,
        'voted_at': votedAt,
      };
}

class VoteCountAggregateOutputType {
  const VoteCountAggregateOutputType({
    this.uuid,
    this.userUuid,
    this.candidateUuid,
    this.votedAt,
    this.$all,
  });

  factory VoteCountAggregateOutputType.fromJson(Map json) =>
      VoteCountAggregateOutputType(
        uuid: json['uuid'],
        userUuid: json['user_uuid'],
        candidateUuid: json['candidate_uuid'],
        votedAt: json['voted_at'],
        $all: json['_all'],
      );

  final int? uuid;

  final int? userUuid;

  final int? candidateUuid;

  final int? votedAt;

  final int? $all;
}

class VoteMinAggregateOutputType {
  const VoteMinAggregateOutputType({
    this.uuid,
    this.userUuid,
    this.candidateUuid,
    this.votedAt,
  });

  factory VoteMinAggregateOutputType.fromJson(Map json) =>
      VoteMinAggregateOutputType(
        uuid: json['uuid'],
        userUuid: json['user_uuid'],
        candidateUuid: json['candidate_uuid'],
        votedAt: json['voted_at'],
      );

  final String? uuid;

  final String? userUuid;

  final String? candidateUuid;

  final DateTime? votedAt;
}

class VoteMaxAggregateOutputType {
  const VoteMaxAggregateOutputType({
    this.uuid,
    this.userUuid,
    this.candidateUuid,
    this.votedAt,
  });

  factory VoteMaxAggregateOutputType.fromJson(Map json) =>
      VoteMaxAggregateOutputType(
        uuid: json['uuid'],
        userUuid: json['user_uuid'],
        candidateUuid: json['candidate_uuid'],
        votedAt: json['voted_at'],
      );

  final String? uuid;

  final String? userUuid;

  final String? candidateUuid;

  final DateTime? votedAt;
}

class VoteGroupByOutputType {
  const VoteGroupByOutputType({
    this.uuid,
    this.userUuid,
    this.candidateUuid,
    this.votedAt,
    this.$count,
    this.$min,
    this.$max,
  });

  factory VoteGroupByOutputType.fromJson(Map json) => VoteGroupByOutputType(
        uuid: json['uuid'],
        userUuid: json['user_uuid'],
        candidateUuid: json['candidate_uuid'],
        votedAt: json['voted_at'],
        $count: json['_count'] is Map
            ? _i2.VoteCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.VoteMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.VoteMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final String? uuid;

  final String? userUuid;

  final String? candidateUuid;

  final DateTime? votedAt;

  final _i2.VoteCountAggregateOutputType? $count;

  final _i2.VoteMinAggregateOutputType? $min;

  final _i2.VoteMaxAggregateOutputType? $max;
}

class VoteCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VoteCountOrderByAggregateInput({
    this.uuid,
    this.userUuid,
    this.candidateUuid,
    this.votedAt,
  });

  final _i2.SortOrder? uuid;

  final _i2.SortOrder? userUuid;

  final _i2.SortOrder? candidateUuid;

  final _i2.SortOrder? votedAt;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'user_uuid': userUuid,
        'candidate_uuid': candidateUuid,
        'voted_at': votedAt,
      };
}

class VoteMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VoteMaxOrderByAggregateInput({
    this.uuid,
    this.userUuid,
    this.candidateUuid,
    this.votedAt,
  });

  final _i2.SortOrder? uuid;

  final _i2.SortOrder? userUuid;

  final _i2.SortOrder? candidateUuid;

  final _i2.SortOrder? votedAt;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'user_uuid': userUuid,
        'candidate_uuid': candidateUuid,
        'voted_at': votedAt,
      };
}

class VoteMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VoteMinOrderByAggregateInput({
    this.uuid,
    this.userUuid,
    this.candidateUuid,
    this.votedAt,
  });

  final _i2.SortOrder? uuid;

  final _i2.SortOrder? userUuid;

  final _i2.SortOrder? candidateUuid;

  final _i2.SortOrder? votedAt;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'user_uuid': userUuid,
        'candidate_uuid': candidateUuid,
        'voted_at': votedAt,
      };
}

class VoteOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VoteOrderByWithAggregationInput({
    this.uuid,
    this.userUuid,
    this.candidateUuid,
    this.votedAt,
    this.$count,
    this.$max,
    this.$min,
  });

  final _i2.SortOrder? uuid;

  final _i2.SortOrder? userUuid;

  final _i2.SortOrder? candidateUuid;

  final _i2.SortOrder? votedAt;

  final _i2.VoteCountOrderByAggregateInput? $count;

  final _i2.VoteMaxOrderByAggregateInput? $max;

  final _i2.VoteMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'user_uuid': userUuid,
        'candidate_uuid': candidateUuid,
        'voted_at': votedAt,
        '_count': $count,
        '_max': $max,
        '_min': $min,
      };
}

class NestedDateTimeWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedDateTimeWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? equals;

  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<DateTime, _i2.NestedDateTimeWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedDateTimeFilter? $min;

  final _i2.NestedDateTimeFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class DateTimeWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DateTimeWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? equals;

  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<DateTime, _i2.NestedDateTimeWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedDateTimeFilter? $min;

  final _i2.NestedDateTimeFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class VoteScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VoteScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.uuid,
    this.userUuid,
    this.candidateUuid,
    this.votedAt,
  });

  final _i1.PrismaUnion<_i2.VoteScalarWhereWithAggregatesInput,
      Iterable<_i2.VoteScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.VoteScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.VoteScalarWhereWithAggregatesInput,
      Iterable<_i2.VoteScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? uuid;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? userUuid;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? candidateUuid;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? votedAt;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'uuid': uuid,
        'user_uuid': userUuid,
        'candidate_uuid': candidateUuid,
        'voted_at': votedAt,
      };
}

class VoteCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VoteCountAggregateOutputTypeSelect({
    this.uuid,
    this.userUuid,
    this.candidateUuid,
    this.votedAt,
    this.$all,
  });

  final bool? uuid;

  final bool? userUuid;

  final bool? candidateUuid;

  final bool? votedAt;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'user_uuid': userUuid,
        'candidate_uuid': candidateUuid,
        'voted_at': votedAt,
        '_all': $all,
      };
}

class VoteGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VoteGroupByOutputTypeCountArgs({this.select});

  final _i2.VoteCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class VoteMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VoteMinAggregateOutputTypeSelect({
    this.uuid,
    this.userUuid,
    this.candidateUuid,
    this.votedAt,
  });

  final bool? uuid;

  final bool? userUuid;

  final bool? candidateUuid;

  final bool? votedAt;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'user_uuid': userUuid,
        'candidate_uuid': candidateUuid,
        'voted_at': votedAt,
      };
}

class VoteGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VoteGroupByOutputTypeMinArgs({this.select});

  final _i2.VoteMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class VoteMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VoteMaxAggregateOutputTypeSelect({
    this.uuid,
    this.userUuid,
    this.candidateUuid,
    this.votedAt,
  });

  final bool? uuid;

  final bool? userUuid;

  final bool? candidateUuid;

  final bool? votedAt;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'user_uuid': userUuid,
        'candidate_uuid': candidateUuid,
        'voted_at': votedAt,
      };
}

class VoteGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VoteGroupByOutputTypeMaxArgs({this.select});

  final _i2.VoteMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class VoteGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const VoteGroupByOutputTypeSelect({
    this.uuid,
    this.userUuid,
    this.candidateUuid,
    this.votedAt,
    this.$count,
    this.$min,
    this.$max,
  });

  final bool? uuid;

  final bool? userUuid;

  final bool? candidateUuid;

  final bool? votedAt;

  final _i1.PrismaUnion<bool, _i2.VoteGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.VoteGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.VoteGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'user_uuid': userUuid,
        'candidate_uuid': candidateUuid,
        'voted_at': votedAt,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateVote {
  const AggregateVote({
    this.$count,
    this.$min,
    this.$max,
  });

  factory AggregateVote.fromJson(Map json) => AggregateVote(
        $count: json['_count'] is Map
            ? _i2.VoteCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.VoteMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.VoteMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.VoteCountAggregateOutputType? $count;

  final _i2.VoteMinAggregateOutputType? $min;

  final _i2.VoteMaxAggregateOutputType? $max;
}

class AggregateVoteCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateVoteCountArgs({this.select});

  final _i2.VoteCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateVoteMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateVoteMinArgs({this.select});

  final _i2.VoteMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateVoteMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateVoteMaxArgs({this.select});

  final _i2.VoteMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateVoteSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateVoteSelect({
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateVoteCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateVoteMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateVoteMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}
