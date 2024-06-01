import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:manunited_trivia/constants/CarouselItems.dart';
import 'package:manunited_trivia/constants/ColorsToUse.dart';
import 'package:manunited_trivia/constants/ScreenSize.dart';
import 'package:manunited_trivia/widgets/PointsWidget.dart';
import 'package:manunited_trivia/widgets/QuizBox.dart';

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
              decoration: const BoxDecoration(
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
                    const Text(
                      'Good Morning',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: "Gabarito"),
                    ),
                    Text("Red Devil",
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: "AldotheApache",
                          color: ColorsToUse().unitedRed,
                          // color: Colors.black,
                        ))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            PointsBox(),
            SizedBox(
              height: 20,
            ),
            CarouselSlider(
                items: CarouselItems().items1,
                options: CarouselOptions(
                  height: ScreenSize.screenHeight * 0.2,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  scrollDirection: Axis.horizontal,
                ))
          ])),
    ));
  }
}
