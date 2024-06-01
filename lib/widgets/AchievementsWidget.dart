import 'package:flutter/material.dart';
import 'package:manunited_trivia/constants/ColorsToUse.dart';
import 'package:manunited_trivia/constants/ScreenSize.dart';

class AchievementsWidget extends StatelessWidget {
  const AchievementsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    
    ScreenSize().init(context: context);
    return Container(
      height: ScreenSize.screenHeight * 0.12,
      width: ScreenSize.screenWidth * 0.9,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: ColorsToUse().unitedRed),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.military_tech,
                size: 60,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Achievements",
                    style: TextStyle(
                        fontFamily: "Gabarito",
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See what you have earned!!",
                    style: TextStyle(
                      fontFamily: "Gabarito",
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Text(
            "3/23",
            style: TextStyle(
                fontFamily: "AldotheApache",
                fontSize: 35,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
