import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:manunited_trivia/constants/ColorsToUse.dart';
import 'package:manunited_trivia/constants/ScreenSize.dart';
import 'package:manunited_trivia/screens/HomeScreen.dart';
import 'package:manunited_trivia/screens/ProfileScreen.dart';
import 'package:manunited_trivia/screens/SettingsScreen.dart';
import 'package:manunited_trivia/screens/StatsScreen.dart';

class MainDisplay extends StatefulWidget {
  const MainDisplay({super.key});

  @override
  State<MainDisplay> createState() => _MainDisplayState();
}

class _MainDisplayState extends State<MainDisplay> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    ScreenSize().init(context: context);
    void onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: const [
          HomeScreen(),
          StatsScreen(),
          SettingsScreen(),
          ProfileScreen()
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 0.07 * ScreenSize.screenHeight,
        child: BottomNavigationBar(
          backgroundColor: Colors.black,
          unselectedItemColor: Colors.white,
          selectedItemColor: ColorsToUse().unitedRed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.chart_bar),
              label: 'Stats',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_rounded),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: onItemTapped,
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }
}
