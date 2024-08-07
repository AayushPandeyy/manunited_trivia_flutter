import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:manunited_trivia/constants/ScreenSize.dart';
import 'package:manunited_trivia/widgets/CorrectAnswerWidget.dart';

class QuizScreen extends StatefulWidget {
  final String quizTitle;
  final List<Map<String, dynamic>> questions;
  const QuizScreen({super.key, required this.quizTitle, required this.questions});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(BuildContext context) {
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
                  child: Center(
                    child: AutoSizeText(
                      widget.quizTitle,
                      style: const TextStyle(
                          fontFamily: "AldotheApache", color: Colors.white),
                      maxFontSize: 30,
                      minFontSize: 10,
                      maxLines: 1,
                    ),
                  )),
              const SizedBox(
                height: 20,
              ),
              const CorrectAnswer()
            ],
          )),
    ));
  }
}
