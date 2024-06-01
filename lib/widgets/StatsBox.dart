import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:manunited_trivia/constants/ColorsToUse.dart';

class StatsBox extends StatelessWidget {
  final Color color;
  final String title;
  final String data;
  final IconData icon;
  const StatsBox(
      {super.key,
      required this.title,
      required this.data,
      required this.icon,
      required this.color});

  @override
  Widget build(BuildContext context) {
    Color textAndIconColor =
        color == Colors.black ? ColorsToUse().unitedRed : Colors.white;
    return Container(
      height: 140,
      width: 140,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 35,
              color: textAndIconColor,
            ),
            AutoSizeText(
              title,
              style: TextStyle(
                  color: textAndIconColor,
                  fontFamily: "Gabarito",
                  fontSize: 20),
              maxFontSize: 20,
              minFontSize: 10,
              maxLines: 1,
            ),
            AutoSizeText(
              data,
              style: TextStyle(
                  color: textAndIconColor,
                  fontFamily: "AldotheApache",
                  fontSize: 30),
              maxFontSize: 30,
              minFontSize: 20,
              maxLines: 1,
            )
          ],
        ),
      ),
    );
  }
}
