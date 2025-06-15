import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool value = false;
    return Scaffold(
      appBar: AppBar(),
      body: Center(child:Switch(value: value, onChanged: (change){}),),
    );
  }
}
