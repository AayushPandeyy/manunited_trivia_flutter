import 'package:flutter/material.dart';
import 'package:manunited_trivia/constants/ColorsToUse.dart';
import 'package:manunited_trivia/constants/ScreenSize.dart';
import 'package:manunited_trivia/models/User.dart';
import 'package:manunited_trivia/services/auth_service.dart';
import 'package:manunited_trivia/widgets/AverageScoreWidget.dart';
import 'package:manunited_trivia/widgets/StatsBox.dart';

class StatsScreen extends StatefulWidget {
  const StatsScreen({super.key});

  @override
  State<StatsScreen> createState() => _StatsScreenState();
}

class _StatsScreenState extends State<StatsScreen> {
  bool isLoading = false;
  User? user;
  final AuthService authService = AuthService();

  void _getUser() async {
    setState(() {
      isLoading = true;
    });
    final token = await authService.getToken();

    if (token != null) {
      User? fetchedUser = await authService.getUser();
      setState(() {
        user = fetchedUser;
        isLoading = false;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _getUser();
  }

  @override
  Widget build(BuildContext context) {
    ScreenSize().init(context: context);
    return isLoading
        ? const CircularProgressIndicator()
        : SafeArea(
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
                            style:
                                TextStyle(fontFamily: "Gabarito", fontSize: 20),
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
                          icon: Icons.question_answer,
                          title: "Total Questions",
                          data: user!.totalQuestionsAttempted.toString(),
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
                        StatsBox(
                          icon: Icons.close_outlined,
                          title: "Missed Questions",
                          data: user!.allTimeIncorrectAnswers.toString(),
                          color: Colors.black,
                        ),
                        StatsBox(
                          icon: Icons.check_box_rounded,
                          title: "Correct Questions",
                          data: user!.allTimeCorrectAnswers.toString(),
                          color: ColorsToUse().unitedRed,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                     AverageScoreWidget(data: user!.averageScore.toDouble(),),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ),
          ));
  }
}
