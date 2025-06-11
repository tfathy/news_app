import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:news_app/features/sport_news_screen/model/sport_news_model.dart';

class SportsDtlBtn extends StatelessWidget {
  final Articles article;
  const SportsDtlBtn({super.key, required this.article});


  @override
  Widget build(BuildContext context) {
    DateTime dt = DateTime.parse(article.publishedAt.toString());
    String vDate = DateFormat.yMMMMd().format(dt);
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(vDate),
          TextButton(
            onPressed: () {},
            child: Text(
              'more details',
              style: TextStyle(
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
