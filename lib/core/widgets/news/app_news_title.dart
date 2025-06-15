import 'package:flutter/material.dart';
import 'package:news_app/core/model/news_model.dart';

class AppNewsTitle extends StatelessWidget {
  final Articles article;
  const AppNewsTitle({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Text(
        article.title.toString(),
        maxLines: 2,
        textAlign: TextAlign.start,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
      ),
    );
  }
}
