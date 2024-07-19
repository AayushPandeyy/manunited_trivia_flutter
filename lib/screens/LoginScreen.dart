import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:manunited_trivia/constants/ColorsToUse.dart';
import 'package:manunited_trivia/screens/HomeScreen.dart';
import 'package:manunited_trivia/screens/MainDisplay.dart';
import 'package:manunited_trivia/screens/RegisterScreen.dart';
import 'package:manunited_trivia/services/auth_service.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isLoading = false;
  bool obscure = true;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final AuthService authService = AuthService();

  void _login(BuildContext context) async {
    setState(() {
      isLoading = true;
    });
    String username = _emailController.text.trim();
    String password = _passwordController.text.trim();

    String? token = await authService.login(username, password);

    if (token != null) {
      // Store token in shared preferences for persistent login
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('token', token);

      // Navigate to home screen
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const MainDisplay()));
      setState(() {
        isLoading = false;
      });
    } else {
      setState(() {
        isLoading = false;
      });
      // Handle login failure
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Login failed')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Background color
      body: Stack(
        children: <Widget>[
          Image.asset(
            'assets/images/header_bg.jpg', // Custom background image
            width: double.infinity,
            height: double.infinity,
            // opacity: const AlwaysStoppedAnimation(.85),

            fit: BoxFit.cover,
          ),
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      'Welcome to',
                      style: TextStyle(
                        fontFamily: "AldotheApache",
                        color: Colors.white,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                            blurRadius: 5.0,
                            color: Colors.black.withOpacity(0.5),
                            offset: Offset(2.0, 2.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    'The Theatre of Quiz',
                    style: TextStyle(
                      fontFamily: "AldotheApache",
                      color: ColorsToUse().unitedRed,
                      fontSize: 36.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,
                      shadows: [
                        Shadow(
                          blurRadius: 5.0,
                          color: Colors.black.withOpacity(0.5),
                          offset: Offset(2.0, 2.0),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30.0),
                  TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.9),
                      hintText: 'Enter your email',
                      prefixIcon: const Icon(Icons.email),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  TextField(
                    controller: _passwordController,
                    obscureText: obscure,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.9),
                      hintText: 'Enter your password',
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              obscure = !obscure;
                            });
                          },
                          icon: const Icon(
                            Icons.remove_red_eye,
                            size: 20,
                          )),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  ElevatedButton(
                      onPressed: () {
                        _login(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Colors.white, // Manchester United's primary color
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        shadowColor: Colors.black,
                        elevation: 5,
                      ),
                      child: isLoading
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Logging In',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      color: ColorsToUse().unitedRed),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                CircularProgressIndicator(
                                  color: ColorsToUse().unitedRed,
                                )
                              ],
                            )
                          : Text(
                              'Login',
                              style: TextStyle(
                                  fontSize: 18.0,
                                  color: ColorsToUse().unitedRed),
                            )),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => RegisterScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Colors.white, // Manchester United's primary color
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      shadowColor: Colors.black,
                      elevation: 5,
                    ),
                    child: Text(
                      'Register',
                      style: TextStyle(
                          fontSize: 18.0, color: ColorsToUse().unitedRed),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
