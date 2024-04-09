import 'package:flutter/material.dart';
import 'package:manunited_trivia/constants/ScreenSize.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenSize().init(context: context);
    return SafeArea(
        child: Scaffold(
      body: Container(
        height: ScreenSize.screenHeight,
        width: ScreenSize.screenWidth,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 0.06 * ScreenSize.screenHeight,
              // decoration: BoxDecoration(border: Border.all(color: Colors.red)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.menu),
                  Text(
                    "Hello , Red Devil",
                    style: TextStyle(color: Colors.red),
                  ),
                  Icon(Icons.settings)
                ],
              ),
            ),
          )
        ]),
      ),
    ));
  }
}
