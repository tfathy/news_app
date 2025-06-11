import 'package:flutter/material.dart';

class ComputerNewsScreen extends StatelessWidget {
  const ComputerNewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Computer news',
          style: TextStyle(color:Colors.teal,fontSize: 20, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
    );
  }
}
