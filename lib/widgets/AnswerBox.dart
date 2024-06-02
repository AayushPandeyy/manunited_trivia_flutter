import 'package:flutter/material.dart';
import 'package:manunited_trivia/constants/ColorsToUse.dart';
import 'package:manunited_trivia/constants/ScreenSize.dart';

class AnswerBox extends StatefulWidget {

  final String data;
  final Color color;
  const AnswerBox({super.key, required this.data, required this.color});

  @override
  State<AnswerBox> createState() => _AnswerBoxState();
}

class _AnswerBoxState extends State<AnswerBox> {
  
  @override
  Widget build(BuildContext context) {
    ScreenSize().init(context: context);

    return Container(
      height: ScreenSize.screenHeight * 0.1,
      width: ScreenSize.screenWidth * 0.9,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: widget.color),
      child: Center(
        child: Text(
          widget.data,
          style: const TextStyle(
              fontFamily: "AldotheApache",
              fontSize: 35,
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
    ;
  }
}
