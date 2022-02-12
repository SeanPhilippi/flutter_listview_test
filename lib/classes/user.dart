import '../app_core.dart';

class User {
  String firstName;
  String lastName;
  String email;

  User({
    @required this.firstName,
    @required this.lastName,
    @required this.email,
  });

  factory User.fromJson(user) {
    return User(
      firstName: user['firstName'] as String,
      lastName: user['lastName'] as String,
      email: user['email'] as String,
    );
  }

  @override
  String toString() {
    return '{firstName: $firstName, lastName: $lastName, email: $email';
  }
}
