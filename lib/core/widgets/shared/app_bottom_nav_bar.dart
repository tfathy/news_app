import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:news_app/features/settings_screen/settings_screen.dart';

import 'package:news_app/features/sport_news_screen/controller/sport_news_controller.dart';
import 'package:news_app/features/sport_news_screen/sport_news_screen.dart';
import 'package:news_app/features/tech_news_screen/tech_news_screen.dart';

import '../../../features/economy_news_screen/economy _news_screen.dart';

class AppBottomNavBar extends StatefulWidget {
  AppBottomNavBar({super.key});

  @override
  State<AppBottomNavBar> createState() => _AppBottomNavBarState();
}

class _AppBottomNavBarState extends State<AppBottomNavBar> {
  var controller = SportNewsController.instance;
  List<Widget> screens = [
    SportNewsScreen(),
    TechNewsScreen(),
    EconomyNewsScreen(),
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context)!.welcome),
      actions: [
        IconButton(onPressed: (){
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => SettingsScreen(),));
        }, icon: Icon(Icons.settings,size: 30,),),
      ],),
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
