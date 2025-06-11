import 'package:flutter/material.dart';

class CurrencyNewsScreen extends StatelessWidget {
  const CurrencyNewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        title: Text(
          'Currencies news',
          style: TextStyle(color:Colors.teal,fontSize: 20, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
    );
  }
}
