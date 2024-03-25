// ignore_for_file: non_constant_identifier_names

library prisma.namespace.prisma; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:orm/orm.dart' as _i1;

import 'prisma.dart' as _i2;

enum QueryMode implements _i1.PrismaEnum {
  $default._('default'),
  insensitive._('insensitive');

  const QueryMode._(this.name);

  @override
  final String name;
}

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

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>?
      notIn;

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
    this.mode,
    this.not,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>?
      notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i2.QueryMode? mode;

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
        'mode': mode,
        'not': not,
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
  });

  final _i1.PrismaUnion<_i2.UserWhereInput, Iterable<_i2.UserWhereInput>>? AND;

  final Iterable<_i2.UserWhereInput>? OR;

  final _i1.PrismaUnion<_i2.UserWhereInput, Iterable<_i2.UserWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? uuid;

  final _i1.PrismaUnion<_i2.StringFilter, String>? firstName;

  final _i1.PrismaUnion<_i2.StringFilter, String>? lastName;

  final _i1.PrismaUnion<_i2.StringFilter, String>? email;

  final _i1.PrismaUnion<_i2.StringFilter, String>? password;

  final _i1.PrismaUnion<_i2.StringFilter, String>? image;

  final _i1.PrismaUnion<_i2.StringFilter, String>? grade;

  final _i1.PrismaUnion<_i2.StringFilter, String>? areaOfStudy;

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
  });

  final String? uuid;

  final _i1.PrismaUnion<_i2.UserWhereInput, Iterable<_i2.UserWhereInput>>? AND;

  final Iterable<_i2.UserWhereInput>? OR;

  final _i1.PrismaUnion<_i2.UserWhereInput, Iterable<_i2.UserWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? firstName;

  final _i1.PrismaUnion<_i2.StringFilter, String>? lastName;

  final _i1.PrismaUnion<_i2.StringFilter, String>? email;

  final _i1.PrismaUnion<_i2.StringFilter, String>? password;

  final _i1.PrismaUnion<_i2.StringFilter, String>? image;

  final _i1.PrismaUnion<_i2.StringFilter, String>? grade;

  final _i1.PrismaUnion<_i2.StringFilter, String>? areaOfStudy;

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

enum SortOrder implements _i1.PrismaEnum {
  asc._('asc'),
  desc._('desc');

  const SortOrder._(this.name);

  @override
  final String name;
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

class UserCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateInput({
    required this.uuid,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
    required this.image,
    required this.grade,
    required this.areaOfStudy,
  });

  final String uuid;

  final String firstName;

  final String lastName;

  final String email;

  final String password;

  final String image;

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

class UserUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedCreateInput({
    required this.uuid,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
    required this.image,
    required this.grade,
    required this.areaOfStudy,
  });

  final String uuid;

  final String firstName;

  final String lastName;

  final String email;

  final String password;

  final String image;

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
    required this.image,
    required this.grade,
    required this.areaOfStudy,
  });

  final String uuid;

  final String firstName;

  final String lastName;

  final String email;

  final String password;

  final String image;

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
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? uuid;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      firstName;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? lastName;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? password;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? image;

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
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? uuid;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      firstName;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? lastName;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? password;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? image;

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

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? image;

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

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? image;

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

  final _i2.SortOrder? image;

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

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? $in;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? notIn;

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

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>?
      notIn;

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
    this.mode,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>?
      notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i2.QueryMode? mode;

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
        'mode': mode,
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

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? image;

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
