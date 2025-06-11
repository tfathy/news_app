import 'package:flutter/material.dart';
import 'package:news_app/features/sport_news_screen/model/sport_news_model.dart';
import 'package:news_app/features/sport_news_screen/widgets/sports_description.dart';
import 'package:news_app/features/sport_news_screen/widgets/sports_dtl_btn.dart';
import 'package:news_app/features/sport_news_screen/widgets/sports_title.dart';

import '../../features/sport_news_screen/widgets/sports_image.dart';

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
          SportsImage(imageUrl: article.image.toString()),
          Expanded(
            child: Column(
              children: [
                SportsTitle(article: article),
                Divider(color: Colors.grey, thickness: 1),
                SportsDescription(article: article),
                Divider(color: Colors.grey, thickness: 1),
                SportsDtlBtn(article: article),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
