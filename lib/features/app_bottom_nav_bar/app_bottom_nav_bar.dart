import 'package:flutter/material.dart';


import 'package:news_app/features/sport_news_screen/sport_news_ctrl.dart';
import 'package:news_app/features/sport_news_screen/sport_news_screen.dart';
import 'package:news_app/features/tech_news_screen/tech_news_screen.dart';

import '../economy_news_screen/economy _news_screen.dart';

class AppBottomNavBar extends StatefulWidget {
  AppBottomNavBar({super.key});

  @override
  State<AppBottomNavBar> createState() => _AppBottomNavBarState();
}

class _AppBottomNavBarState extends State<AppBottomNavBar> {
  var controller = SportNewsCtrl.instance;
  List<Widget> screens = [
    SportNewsScreen(),
    TechNewsScreen(),
    EconomyNewsScreen(),
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (i) {
          setState(() {
            index = i;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_bar_outlined),
            label: 'Sports',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.computer_outlined),
            label: 'Tech',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.money_outlined),
            label: 'Economy',
          ),
        ],
        selectedFontSize: 20,
        selectedItemColor: Colors.teal,
      ),

      body: SafeArea(child: screens[index]),
    );
  }
}
