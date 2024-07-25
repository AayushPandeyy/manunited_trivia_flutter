import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:manunited_trivia/constants/ScreenSize.dart';
import 'package:manunited_trivia/models/User.dart';
import 'package:manunited_trivia/screens/QuizScreen.dart';
import 'package:manunited_trivia/services/auth_service.dart';
import 'package:pie_chart/pie_chart.dart';

class ResultScreen extends StatefulWidget {
  final int totalQues;
  final int correctAns;
  final int incorrectAns;
  final int totalPoints;
  const ResultScreen(
      {super.key,
      required this.totalQues,
      required this.correctAns,
      required this.incorrectAns,
      required this.totalPoints});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  User? user;
  final AuthService authService = AuthService();

  void _updateStats(int total, int correct, int incorrect, int points) async {
    try {
      await authService.updateStats(total, correct, incorrect, points);
    } catch (error) {
      print('Failed to update points: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    final dataMap = <String, double>{
      "correctQ": widget.correctAns.toDouble(),
      "wrongQ": widget.incorrectAns.toDouble(),
    };
    ScreenSize().init(context: context);
    return SafeArea(
        child: Scaffold(
      body: SizedBox(
        height: ScreenSize.screenHeight,
        width: ScreenSize.screenWidth,
        child: Column(
          children: [
            Container(
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                height: 0.12 * ScreenSize.screenHeight,
                width: ScreenSize.screenWidth * 0.3,
                child: const Center(
                  child: AutoSizeText(
                    "Results",
                    style: TextStyle(
                        fontFamily: "AldotheApache", color: Colors.white),
                    maxFontSize: 30,
                    minFontSize: 20,
                    maxLines: 1,
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: ScreenSize.screenHeight * 0.31,
              width: ScreenSize.screenWidth * 0.72,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: ScreenSize.screenHeight * 0.15,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration:
                              const BoxDecoration(color: Color(0xff241c35)),
                          width: ScreenSize.screenWidth * 0.35,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Total Questions",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "SpaceGrotesk",
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                this.widget.totalQues.toString(),
                                style: const TextStyle(
                                    fontSize: 30,
                                    color: Colors.blue,
                                    fontFamily: "SpaceGrotesk",
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Container(
                          decoration:
                              const BoxDecoration(color: Color(0xff291f3e)),
                          width: ScreenSize.screenWidth * 0.35,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Correct Answers",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "SpaceGrotesk",
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                this.widget.correctAns.toString(),
                                style: const TextStyle(
                                    fontSize: 30,
                                    color: Colors.green,
                                    fontFamily: "SpaceGrotesk",
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: ScreenSize.screenHeight * 0.15,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration:
                              const BoxDecoration(color: Color(0xff242337)),
                          width: ScreenSize.screenWidth * 0.35,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Wrong Answers",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "SpaceGrotesk",
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                this.widget.incorrectAns.toString(),
                                style: const TextStyle(
                                    fontSize: 30,
                                    color: Colors.red,
                                    fontFamily: "SpaceGrotesk",
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Container(
                          decoration:
                              const BoxDecoration(color: Color(0xff2a1d31)),
                          width: ScreenSize.screenWidth * 0.35,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Total Points",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "SpaceGrotesk",
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                this.widget.totalPoints.toString(),
                                style: const TextStyle(
                                    fontSize: 30,
                                    color: Colors.pink,
                                    fontFamily: "SpaceGrotesk",
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            PieChart(
              dataMap: dataMap,
              animationDuration: const Duration(milliseconds: 1200),
              colorList: const [
                Color.fromARGB(255, 124, 194, 127),
                Color.fromARGB(255, 227, 110, 101),
              ],
              chartRadius: MediaQuery.of(context).size.width / 3,
              chartType: ChartType.ring,
              centerWidget: Text(
                widget.totalQues.toString(),
                style: const TextStyle(fontSize: 50, color: Colors.blue),
              ),
              ringStrokeWidth: 22,
              legendOptions: const LegendOptions(
                showLegends: false,
              ),
              chartValuesOptions: const ChartValuesOptions(
                showChartValues: false,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  // height: 50,
                  // width: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.black, width: 2)),
                  child: TextButton(
                    onPressed: () {
                      print(widget.totalQues);
                      _updateStats(widget.totalQues, widget.correctAns,
                          widget.incorrectAns, widget.totalPoints);
                      Navigator.of(context).pushReplacementNamed('mainDisplay');
                    },
                    child: const Text(
                      "Okay",
                      style: TextStyle(
                          fontFamily: "Gabarito",
                          fontSize: 18,
                          color: Colors.black),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
