import 'package:flutter/material.dart';
import 'package:manunited_trivia/constants/ScreenSize.dart';

class AverageScoreWidget extends StatelessWidget {
  final int data;
  const AverageScoreWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    ScreenSize().init(context: context);
    return Container(
      height: ScreenSize.screenHeight * 0.12,
      width: ScreenSize.screenWidth * 0.9,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.black),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.emoji_events,
                size: 60,
                color: Colors.white,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Average Score",
                    style: TextStyle(
                        fontFamily: "Gabarito",
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Across all quizzes",
                    style: TextStyle(
                      fontFamily: "Gabarito",
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Text(
            "$data %",
            style: const TextStyle(
                fontFamily: "AldotheApache",
                fontSize: 35,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
