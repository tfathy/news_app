import 'package:flutter/material.dart';
import 'package:news_app/core/model/news_model.dart';
import 'package:news_app/core/widgets/app_divider.dart';
import 'package:news_app/core/widgets/app_news_image.dart';

class AppNewsDtl extends StatelessWidget {
  final Articles article;
  const AppNewsDtl({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.close))
      ],),
      backgroundColor: Colors.white,
      body:Column(
        children: [
          AppNewsImage(imageUrl: article.image.toString()),
          AppDivider(),
          Text(article.title.toString()),
          AppDivider(),
          Text(article.description.toString()),
          AppDivider(),
          Text(article.content.toString()),
          AppDivider(),
          Text(article.author.toString()),
          AppDivider(),
          Text(article.source!.name.toString()),
          AppDivider(),
          Text(article.publishedAt.toString()),
          AppDivider(),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.teal,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),

            ),
            onPressed: () {},
            child: Text(
              'Read Full Article on the website',
              style: TextStyle(fontWeight: FontWeight.w700, color: Colors.white),
            ),
          ),
        ],
      )
    );
  }
}
