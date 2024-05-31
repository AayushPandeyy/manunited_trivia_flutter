import 'package:flutter/material.dart';
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
        border: Border.all(color: Colors.red, width: 3),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          // Experience Points Section
          Row(
            children: <Widget>[
              Icon(Icons.star, color: Colors.yellow[700]), // Star icon
              SizedBox(width: 8.0),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Exp. Points',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.red)),
                  SizedBox(width: 4.0),
                  Text(
                    '22,352',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              )
              // Experience points
            ],
          ),
          VerticalDivider(),
          // Rank Section
          Row(
            children: <Widget>[
              Icon(Icons.military_tech,
                  color: Colors.yellow[700]), // Medal icon
              SizedBox(width: 8.0),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Your Rank',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.red)),
                  SizedBox(width: 4.0),
                  Text(
                    '135',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              )
              // Rank number
            ],
          ),
        ],
      ),
    );
  }
}
