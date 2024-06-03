import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:manunited_trivia/constants/ScreenSize.dart';
import 'package:manunited_trivia/widgets/CorrectAnswerWidget.dart';
import 'package:manunited_trivia/widgets/NumberWidget.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  final List<Widget> numberList = [];

  @override
  Widget build(BuildContext context) {
    for (var i = 1; i <= 10; i++) {
      numberList.add(NumberWidget(data: i));
    }
    ScreenSize().init(context: context);
    return SafeArea(
        child: Scaffold(
      body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/quizbg.jpg"),
                  fit: BoxFit.cover)),
          height: ScreenSize.screenHeight,
          width: ScreenSize.screenWidth,
          child: Column(
            children: [
              Container(
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  height: 0.12 * ScreenSize.screenHeight,
                  width: ScreenSize.screenWidth * 0.3,
                  child: const Center(
                    child: AutoSizeText(
                      "Historical Quiz",
                      style: TextStyle(
                          fontFamily: "AldotheApache", color: Colors.white),
                      maxFontSize: 30,
                      minFontSize: 20,
                      maxLines: 1,
                    ),
                  )),
              const SizedBox(
                height: 20,
              ),
              CarouselSlider(
                  items: numberList,
                  options: CarouselOptions(
                    height: 70,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.8,
                    enableInfiniteScroll: false,
                    reverse: false,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.5,
                    scrollDirection: Axis.horizontal,
                  )),
              const SizedBox(
                height: 15,
              ),
              const CorrectAnswer()
            ],
          )),
    ));
  }
}
