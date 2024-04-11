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
          child: Column(children: [
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
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(5),
              height: 0.2 * ScreenSize.screenHeight,
              width: 0.9 * ScreenSize.screenWidth,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: ColorsToUse().unitedRed),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(
                      image: AssetImage('assets/images/dq_logo.png'),
                      height: 110,
                    ),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Daily quiz',
                            style: TextStyle(
                              fontFamily: "Gabarito",
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            '20 questions',
                            style: TextStyle(
                              fontFamily: "Gabarito",
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.white)),
                        child: Icon(Icons.arrow_right_alt_rounded),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ])),
    ));
  }
}
