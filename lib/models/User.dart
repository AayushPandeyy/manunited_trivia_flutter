// models/user.dart
class User {
  final String id;
  final String username;
  final String email;
  final int points;
  final int level;

  User(
      {required this.id,
      required this.username,
      required this.email,
      required this.points,
      required this.level});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      username: json['username'],
      email: json['email'],
      points: json['points'],
      level: json['level'],
    );
  }
}
