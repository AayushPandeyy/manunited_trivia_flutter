import 'package:flutter/material.dart';
import 'package:manunited_trivia/constants/ColorsToUse.dart';
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
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                height: 0.12 * ScreenSize.screenHeight,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Good Morning',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: "Gabarito"),
                      ),
                      Text("Red Devil",
                          style: TextStyle(
                              fontSize: 30,
                              fontFamily: "Gabarito",
                              color: ColorsToUse().unitedRed,
                              // color: Colors.black,
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
              ),
            ],
          )),
    ));
  }
}
