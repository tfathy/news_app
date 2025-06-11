import 'package:flutter/material.dart';
import 'package:news_app/features/computer_news_screen/computer_news_screen.dart';
import 'package:news_app/features/currency_news_screen/currency_news_screen.dart';
import 'package:news_app/features/sport_news_screen/sport_news_ctrl.dart';
import 'package:news_app/features/sport_news_screen/sport_news_screen.dart';

class AppBottomNavBar extends StatefulWidget {
  AppBottomNavBar({super.key});

  @override
  State<AppBottomNavBar> createState() => _AppBottomNavBarState();
}

class _AppBottomNavBarState extends State<AppBottomNavBar> {
  var controller = SportNewsCtrl.instance;
  List<Widget> screens = [
    SportNewsScreen(),
    ComputerNewsScreen(),
    CurrencyNewsScreen(),
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
            label: 'Computers',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.currency_bitcoin_rounded),
            label: 'Currencies',
          ),
        ],
        selectedFontSize: 20,
        selectedItemColor: Colors.teal,
      ),

      body: SafeArea(child: screens[index]),
    );
  }
}
