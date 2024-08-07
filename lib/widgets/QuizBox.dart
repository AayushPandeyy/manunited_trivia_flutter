import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:manunited_trivia/constants/ColorsToUse.dart';
import 'package:manunited_trivia/constants/ScreenSize.dart';
import 'package:manunited_trivia/screens/QuizScreen.dart';

class QuizBox extends StatefulWidget {
  final String title;
  final String number;
  final List<Map<String, dynamic>> questions;
  const QuizBox(
      {super.key,
      required this.title,
      required this.number,
      required this.questions});

  @override
  State<QuizBox> createState() => _QuizBoxState();
}

class _QuizBoxState extends State<QuizBox> {
  @override
  Widget build(BuildContext context) {
    ScreenSize().init(context: context);
    return Container(
      padding: const EdgeInsets.all(5),
      height: 0.2 * ScreenSize.screenHeight,
      width: 0.9 * ScreenSize.screenWidth,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          color: ColorsToUse().unitedRed),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Image(
              image: AssetImage('assets/images/dq_logo.png'),
              height: 110,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      AutoSizeText(
                        widget.title,
                        style: const TextStyle(
                          fontFamily: "Gabarito",
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        maxLines: 1,
                        minFontSize: 20,
                        overflow: TextOverflow.ellipsis,
                      ),
                      AutoSizeText(
                        "${widget.number} questions",
                        style: const TextStyle(
                          fontFamily: "Gabarito",
                          // fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // height: 50,
                  // width: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.black, width: 2)),
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => QuizScreen(
                                quizTitle: widget.title,
                                questions: widget.questions,
                              )));
                    },
                    child: const Text(
                      "Join the quiz",
                      style: TextStyle(
                          fontFamily: "Gabarito",
                          fontSize: 18,
                          color: Colors.black),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
