import 'package:flutter/material.dart';
import 'package:manunited_trivia/utilities/PopupDialog.dart';
import 'package:manunited_trivia/utilities/Questions.dart';
import 'package:manunited_trivia/widgets/AnswerBox.dart';
import 'package:manunited_trivia/widgets/QuestionBox.dart';

class CorrectAnswer extends StatefulWidget {
  const CorrectAnswer({super.key});

  @override
  State<CorrectAnswer> createState() => _CorrectAnswerState();
}

class _CorrectAnswerState extends State<CorrectAnswer> {
  int selectedAnswer = 0;
  static int quesIndex = 0;
  int correctAnswerIndex = Questions().correctAnswerIndexes[quesIndex];

  Future<void> displayAlert(BuildContext context, String message) {
    return showDialog<String>(
        context: context,
        builder: ((context) => AlertDialog(
              title: Text(message),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      setState(() {
                        quesIndex = quesIndex + 1;
                        correctAnswerIndex =
                            Questions().correctAnswerIndexes[quesIndex];
                        colors = [
                          Colors.black,
                          Colors.black,
                          Colors.black,
                          Colors.black
                        ];
                      });
                    },
                    child: const Text("Next Question"))
              ],
            )));
  }

  List<Color> colors = [Colors.black, Colors.black, Colors.black, Colors.black];

  void changeColor(int index) {
    setState(() {
      selectedAnswer = index;
      if (index != correctAnswerIndex) {
        colors[correctAnswerIndex] = Colors.green;
        colors[index] = Colors.red;
        displayAlert(context, "Wrong Answer!");
      } else {
        colors[correctAnswerIndex] = Colors.green;
        displayAlert(context, "Correct Answer!");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        QuestionBox(
          question: Questions().questionsOnly[quesIndex],
          points: 10,
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
                    data: Questions().optionsOnly[quesIndex][index],
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
