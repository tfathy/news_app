import 'package:flutter/material.dart';
import 'package:news_app/features/app_bottom_nav_bar/app_bottom_nav_bar.dart';

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AppBottomNavBar(),
    );
  }
}
