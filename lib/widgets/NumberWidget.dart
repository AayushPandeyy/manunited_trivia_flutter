import 'package:flutter/material.dart';
import 'package:manunited_trivia/constants/ColorsToUse.dart';

class NumberWidget extends StatelessWidget {
  final int data;
  const NumberWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
          color: ColorsToUse().unitedRed,
          borderRadius: BorderRadius.circular(50)),
      child: Center(
        child: Text(
          "$data",
          style: TextStyle(fontFamily: "AldotheApache", fontSize: 60),
        ),
      ),
    );
  }
}
