import 'package:flutter/material.dart';
import 'package:manunited_trivia/screens/LoginScreen.dart';
import 'package:manunited_trivia/services/auth_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

final AuthService authService = AuthService();

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: TextButton(
            onPressed: () {
              authService.logout();
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => LoginScreen()));
            },
            child: Text("Log Out")),
      ),
    ));
  }
}
