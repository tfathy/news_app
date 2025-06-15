import 'package:flutter/material.dart';

class AppExceptionHandler extends StatelessWidget {
  final String errText;

  const AppExceptionHandler({super.key, required this.errText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(

        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover ,
                image: AssetImage('assets/images/error.png'),
              ),
            ),
          ),
          Text(
            errText,
            textAlign: TextAlign.justify,
            style: TextStyle(color: Colors.red, fontSize: 18),
          ),
        ],
      ),
    );
  }
}
