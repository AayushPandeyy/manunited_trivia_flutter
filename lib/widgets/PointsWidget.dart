import 'package:flutter/material.dart';
import 'package:manunited_trivia/constants/ColorsToUse.dart';
import 'package:manunited_trivia/constants/ScreenSize.dart';

class PointsBox extends StatelessWidget {
  const PointsBox({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize().init(context: context);
    return Container(
      height: ScreenSize.screenHeight * 0.12,
      width: ScreenSize.screenWidth * 0.9,
      decoration: BoxDecoration(
        color: Colors.black,
        border: Border.all(color: ColorsToUse().unitedRed, width: 3),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(Icons.star, color: Colors.yellow[700]),
              const SizedBox(width: 8.0),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Exp. Points',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: ColorsToUse().unitedRed)),
                  const SizedBox(width: 4.0),
                  Text(
                    '22,352',
                    style: TextStyle(
                        color: ColorsToUse().unitedRed,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              )
              // Experience points
            ],
          ),
          const VerticalDivider(),
          // Rank Section
          Row(
            children: <Widget>[
              Icon(Icons.military_tech,
                  color: Colors.yellow[700]), // Medal icon
              const SizedBox(width: 8.0),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Your Rank',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: ColorsToUse().unitedRed)),
                  const SizedBox(width: 4.0),
                  Text(
                    '135',
                    style: TextStyle(
                        color: ColorsToUse().unitedRed,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
