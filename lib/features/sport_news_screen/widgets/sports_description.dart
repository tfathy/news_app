import 'package:flutter/material.dart';
import 'package:news_app/features/sport_news_screen/model/sport_news_model.dart';

class SportsDescription extends StatelessWidget {
  final Articles article;
  const SportsDescription({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Text(
        article.description.toString(),
        maxLines: 2,
        textAlign: TextAlign.start,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontSize: 14),
      ),
    );
  }
}
