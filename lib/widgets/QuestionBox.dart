import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:manunited_trivia/constants/ColorsToUse.dart';
import 'package:manunited_trivia/constants/ScreenSize.dart';

class QuestionBox extends StatefulWidget {
  final String question;
  final int points;
  const QuestionBox({super.key, required this.question, required this.points});

  @override
  State<QuestionBox> createState() => _QuestionBoxState();
}

class _QuestionBoxState extends State<QuestionBox> {
  @override
  Widget build(BuildContext context) {
    ScreenSize().init(context: context);
    return Container(
      height: ScreenSize.screenHeight * 0.2,
      width: ScreenSize.screenWidth * 0.95,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: ColorsToUse().unitedRed),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: AutoSizeText(
                widget.question,
                style: TextStyle(
                    fontFamily: "AldotheApache",
                    fontSize: 30,
                    color: Colors.white),
                maxFontSize: 30,
                maxLines: 2,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 80,
              width: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.black),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(widget.points.toString(),
                      style: TextStyle(
                          fontFamily: "AldotheApache",
                          fontSize: 30,
                          color: Colors.white)),
                  Text("Points",
                      style: TextStyle(
                          fontFamily: "AldotheApache",
                          fontSize: 20,
                          color: Colors.white)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
