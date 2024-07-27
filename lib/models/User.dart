// models/user.dart
class User {
  final String id;
  final String email;
  final String username;
  final int points;
  final double averageScore;
  final int totalQuestionsAttempted;
  final int allTimeCorrectAnswers;
  final int allTimeIncorrectAnswers;

  User({
    required this.id,
    required this.email,
    required this.username,
    required this.points,
    required this.averageScore,
    required this.totalQuestionsAttempted,
    required this.allTimeCorrectAnswers,
    required this.allTimeIncorrectAnswers,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        id: json['id'],
        username: json['username'],
        email: json['email'],
        points: json['points'],
        averageScore: json['averageScore'],
        totalQuestionsAttempted: json['totalQuestionsAttempted'],
        allTimeCorrectAnswers: json['allTimeCorrectAnswers'],
        allTimeIncorrectAnswers: json['allTimeIncorrectAnswers']);
  }
}
