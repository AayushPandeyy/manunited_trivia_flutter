// services/auth_service.dart
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:manunited_trivia/models/User.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  final String baseUrl = "http://192.168.1.25:8081/api/auth";

  Future<String?> register(
      String email, String username, String password) async {
    try {
      var headers = {'Content-Type': 'application/json'};
      var request = http.Request('POST', Uri.parse('$baseUrl/register'));
      request.body = json
          .encode({"email": email, "username": username, "password": password});
      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        var res = await http.Response.fromStream(response);
        final data = jsonDecode(res.body);
        return data['token'];
      } else {
        return null;
      }
    } catch (e) {
      print('Error: $e');
      return null;
    }
  }

  Future<String?> login(String email, String password) async {
    try {
      var headers = {'Content-Type': 'application/json'};
      var request = http.Request('POST', Uri.parse('$baseUrl/login'));
      request.body = json.encode({"email": email, "password": password});
      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        var res = await http.Response.fromStream(response);
        final data = jsonDecode(res.body) as Map<String, dynamic>;
        final token = data['token'];
        return token;
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }

  Future<void> updatePoints(int points) async {
    
    
    
    final String? token = await getToken();
    final response = await http.post(
      Uri.parse('$baseUrl/user/points'),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': 'Bearer $token',
      },
      body: jsonEncode({'points': points}),
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to update points');
    }
  }

  Future<User?> getUser() async {
    final String? token = await getToken();

    if (token == null) {
      return null;
    }

    final response = await http.get(
      Uri.parse('$baseUrl/user'),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> userData = json.decode(response.body);
      final user = User.fromJson(userData);
      return user;
    } else {
      return null;
    }

    
  }

  Future<void> logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('token');
  }

  Future<String?> getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('token');
  }
}
