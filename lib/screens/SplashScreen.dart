import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 4), () {
      Navigator.of(context).pushNamed('loginScreen');
    });
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
            LinearProgressIndicator(
              // color: ,
              backgroundColor: Colors.black,
              valueColor: new AlwaysStoppedAnimation<Color>(Colors.red),
            )
          ],
        )),
      ),
    ));
  }
}
