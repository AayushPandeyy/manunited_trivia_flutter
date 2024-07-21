import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:manunited_trivia/screens/ResultScreen.dart';
import 'package:manunited_trivia/utilities/GeneralKnowledgeQuestions.dart';
import 'package:manunited_trivia/widgets/AnswerBox.dart';
import 'package:manunited_trivia/widgets/NumberWidget.dart';
import 'package:manunited_trivia/widgets/QuestionBox.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

class CorrectAnswer extends StatefulWidget {
  // final List<Map<String, dynamic>> questions;
  const CorrectAnswer({super.key});

  @override
  State<CorrectAnswer> createState() => _CorrectAnswerState();
}

class _CorrectAnswerState extends State<CorrectAnswer> {

  int selectedAnswer = 0;

  int points = 0;
  int incorrectAns = 0;
  static int quesIndex = 0;
  int correctAnswerIndex =
      GeneralKnowledgeQuestions().correctAnswerIndexes[quesIndex];
  int size = GeneralKnowledgeQuestions().questionsOnly.length;

  final CarouselController _controller = CarouselController();
  void reset() {
    setState(() {
      points = 0;
      incorrectAns = 0;
      quesIndex = 0;
    });
  }

  final List<Widget> numberList = [];

  List<Color> colors = [Colors.black, Colors.black, Colors.black, Colors.black];

  void changeColor(int index) {
    setState(() {
      selectedAnswer = index;
      if (index != correctAnswerIndex) {
        colors[correctAnswerIndex] = Colors.green;
        colors[index] = Colors.red;
        QuickAlert.show(
          context: context,
          type: QuickAlertType.error,
          text: GeneralKnowledgeQuestions().infoOnly[quesIndex],
          confirmBtnText: "Next Question",
          title: "Incorrect Answer",
          onConfirmBtnTap: () {
            Navigator.of(context).pop();
            setState(() {
              if (quesIndex < size - 1) {
                quesIndex = quesIndex + 1;
                correctAnswerIndex =
                    GeneralKnowledgeQuestions().correctAnswerIndexes[quesIndex];
                colors = [
                  Colors.black,
                  Colors.black,
                  Colors.black,
                  Colors.black
                ];
                _controller.nextPage();
              } else {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultScreen(
                              totalQues: size,
                              incorrectAns: incorrectAns,
                              correctAns: size - incorrectAns,
                              totalPoints: points,
                            )));
                reset();
              }
            });
          },
        );
        incorrectAns++;
      } else {
        colors[correctAnswerIndex] = Colors.green;
        QuickAlert.show(
          context: context,
          type: QuickAlertType.success,
          text: GeneralKnowledgeQuestions().infoOnly[quesIndex],
          confirmBtnText: "Next Question",
          title: "Correct Answer",
          onConfirmBtnTap: () {
            Navigator.of(context).pop();
            setState(() {
              if (quesIndex < size - 1) {
                quesIndex = quesIndex + 1;
                correctAnswerIndex =
                    GeneralKnowledgeQuestions().correctAnswerIndexes[quesIndex];
                colors = [
                  Colors.black,
                  Colors.black,
                  Colors.black,
                  Colors.black
                ];
                _controller.nextPage();
              } else {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultScreen(
                              totalQues: size,
                              incorrectAns: incorrectAns,
                              correctAns: size - incorrectAns,
                              totalPoints: points,
                            )));
              }
            });
          },
        );
        points = points + GeneralKnowledgeQuestions().pointsOnly[quesIndex];
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    for (var i = 1; i <= size; i++) {
      numberList.add(NumberWidget(data: i));
    }

    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CarouselSlider(
            items: numberList,
            carouselController: _controller,
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
          height: 20,
        ),
        QuestionBox(
          question: GeneralKnowledgeQuestions().questionsOnly[quesIndex],
          points: GeneralKnowledgeQuestions().pointsOnly[quesIndex],
        ),
        const SizedBox(
          height: 20,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(4, (index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () => changeColor(index),
                  child: AnswerBox(
                    data: GeneralKnowledgeQuestions().optionsOnly[quesIndex]
                        [index],
                    color: colors[index],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            );
          }),
        ),
      ],
    );
  }
}
