library prisma.namespace.model;

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
