import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:manunited_trivia/constants/CarouselItems.dart';
import 'package:manunited_trivia/constants/ColorsToUse.dart';
import 'package:manunited_trivia/constants/ScreenSize.dart';
import 'package:manunited_trivia/models/User.dart';
import 'package:manunited_trivia/services/auth_service.dart';
import 'package:manunited_trivia/widgets/AchievementsWidget.dart';
import 'package:manunited_trivia/widgets/AverageScoreWidget.dart';
import 'package:manunited_trivia/widgets/PointsWidget.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isLoading = false;
  User? user;
  final AuthService authService = AuthService();

  Future<void> _getUser() async {
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
    _getUser();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    _getUser();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    ScreenSize().init(context: context);
    return isLoading
        ? Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LoadingAnimationWidget.stretchedDots(
                  color: ColorsToUse().unitedRed,
                  size: 100,
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Loading...",
                  style: TextStyle(fontFamily: "AldoTheApache", fontSize: 20),
                )
              ],
            ),
          )
        : SafeArea(
            child: Scaffold(
            body: RefreshIndicator(
              color: ColorsToUse().unitedRed,
              backgroundColor: Colors.black,
              onRefresh: _getUser,
              child: SingleChildScrollView(
                child: SizedBox(
                    height: ScreenSize.screenHeight,
                    width: ScreenSize.screenWidth,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    'Good Morning',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontFamily: "Gabarito"),
                                  ),
                                  Text(user!.username,
                                      style: TextStyle(
                                        fontSize: 30,
                                        fontFamily: "AldotheApache",
                                        color: ColorsToUse().unitedRed,
                                        // color: Colors.black,
                                      ))
                                ],
                              ),
                            ),
                          ),
                          // const SizedBox(
                          //   height: 20,
                          // ),
                          PointsBox(
                            points: user!.points,
                            level: (user!.points) ~/ 100,
                          ),
                          // const SizedBox(
                          //   height: 20,
                          // ),
                          const Center(
                            child: Text(
                              "Avaiable Quizzes",
                              style: TextStyle(
                                  fontFamily: "AldotheApache", fontSize: 30),
                            ),
                          ),
                          // const SizedBox(
                          //   height: 10,
                          // ),
                          CarouselSlider(
                              items: CarouselItems().items1,
                              options: CarouselOptions(
                                height: ScreenSize.screenHeight * 0.2,
                                initialPage: 0,
                                enableInfiniteScroll: true,
                                reverse: false,
                                enlargeCenterPage: true,
                                enlargeFactor: 0.3,
                                scrollDirection: Axis.horizontal,
                              )),
                          // const SizedBox(
                          //   height: 10,
                          // ),
                          const Center(
                            child: Text(
                              "Your Performance",
                              style: TextStyle(
                                  fontFamily: "AldotheApache", fontSize: 30),
                            ),
                          ),
                          // const SizedBox(
                          //   height: 5,
                          // ),
                          AverageScoreWidget(
                            data: user!.averageScore,
                          ),
                          // const SizedBox(
                          //   height: 10,
                          // ),
                          const AchievementsWidget()
                        ])),
              ),
            ),
          ));
  }
}
