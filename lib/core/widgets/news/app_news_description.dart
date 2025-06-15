import 'package:flutter/material.dart';
import 'package:news_app/core/model/news_model.dart';

class AppNewsDescription extends StatelessWidget {
  final Articles article;
  const AppNewsDescription({super.key, required this.article});

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
