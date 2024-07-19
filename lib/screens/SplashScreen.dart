import 'dart:async';

import 'package:flutter/material.dart';
import 'package:manunited_trivia/screens/LoginScreen.dart';
import 'package:manunited_trivia/screens/MainDisplay.dart';
import 'package:manunited_trivia/services/auth_service.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  Future<void> _checkTokenAndNavigate() async {
    final token = await AuthService().getToken();

    if (token != null) {
      // If token exists, navigate to Home screen
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) =>const MainDisplay()),
      );
    } else {
      // If token does not exist, navigate to Login screen
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) =>const LoginScreen()),
      );
    }
  }

  @override
  void initState() {
    super.initState();

      _checkTokenAndNavigate();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        // color: Color(0xffFEF9E6),
        color: Colors.black,
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo-2.jpg'),
            const LinearProgressIndicator(
              // color: ,
              backgroundColor: Colors.black,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
            )
          ],
        )),
      ),
    ));
  }
}
