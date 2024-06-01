import 'package:flutter/material.dart';
import 'package:manunited_trivia/constants/ColorsToUse.dart';
import 'package:manunited_trivia/constants/ScreenSize.dart';
import 'package:manunited_trivia/widgets/AverageScoreWidget.dart';
import 'package:manunited_trivia/widgets/StatsBox.dart';

class StatsScreen extends StatefulWidget {
  const StatsScreen({super.key});

  @override
  State<StatsScreen> createState() => _StatsScreenState();
}

class _StatsScreenState extends State<StatsScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenSize().init(context: context);
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: ScreenSize.screenHeight,
          width: ScreenSize.screenWidth,
          child: Column(
            children: [
              SizedBox(
                height: ScreenSize.screenHeight * 0.1,
                width: ScreenSize.screenWidth * 0.9,
                // decoration:
                //     BoxDecoration(border: Border.all(color: Colors.red)),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Your Stats",
                      style: TextStyle(
                          fontFamily: "AldotheApache",
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "All time stats",
                      style: TextStyle(fontFamily: "Gabarito", fontSize: 20),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  StatsBox(
                    icon: Icons.timelapse,
                    title: "Total Time",
                    data: "22:17",
                    color: ColorsToUse().unitedRed,
                  ),
                  const StatsBox(
                    icon: Icons.bar_chart,
                    title: "Longest Streak",
                    data: "17",
                    color: Colors.black,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const StatsBox(
                    icon: Icons.close_outlined,
                    title: "Missed Questions",
                    data: "34",
                    color: Colors.black,
                  ),
                  StatsBox(
                    icon: Icons.check_box_rounded,
                    title: "Correct Questions",
                    data: "238",
                    color: ColorsToUse().unitedRed,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const AverageScoreWidget()
            ],
          ),
        ),
      ),
    ));
  }
}
