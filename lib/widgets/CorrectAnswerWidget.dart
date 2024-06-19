import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:manunited_trivia/screens/HomeScreen.dart';
import 'package:manunited_trivia/utilities/PopupDialog.dart';
import 'package:manunited_trivia/utilities/Questions.dart';
import 'package:manunited_trivia/widgets/AnswerBox.dart';
import 'package:manunited_trivia/widgets/NumberWidget.dart';
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
  int size = Questions().questionsOnly.length;
  final CarouselController _controller = CarouselController();

  final List<Widget> numberList = [];

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
                        if (quesIndex < size - 1) {
                          quesIndex = quesIndex + 1;
                          correctAnswerIndex =
                              Questions().correctAnswerIndexes[quesIndex];
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
                                  builder: (context) => HomeScreen()));
                        }
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
