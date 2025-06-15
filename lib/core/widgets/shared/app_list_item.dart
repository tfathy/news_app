import 'package:flutter/material.dart';
import 'package:news_app/core/model/news_model.dart';
import 'package:news_app/core/widgets/news/app_news_image.dart';
import 'package:news_app/core/widgets/shared/app_divider.dart';
import 'package:news_app/core/widgets/news/app_news_description.dart';
import 'package:news_app/core/widgets/news/app_news_detail_button.dart';
import 'package:news_app/core/widgets/news/app_news_title.dart';



class AppListItem extends StatelessWidget {
  final Articles article;
  const AppListItem({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 160,
      margin: EdgeInsets.only(top: 4, bottom: 4, left: 3, right: 3),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.5), // Shadow color
            spreadRadius: 2, // How much the shadow should spread
            blurRadius: 5, // How much to blur the shadow
            offset: Offset(0, 3), // Changes position of shadow (x, y)
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          width: 1,
          color: Colors.black.withValues(alpha: 0.3),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // put it in sized box
          SizedBox(width: 150, child: AppNewsImage(imageUrl: article.image.toString())),
          Expanded(
            child: Column(
              children: [
                AppNewsTitle(article: article),
                AppDivider(),
                AppNewsDescription(article: article),
                AppDivider(),
                AppNewsDetailButton(article: article),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
