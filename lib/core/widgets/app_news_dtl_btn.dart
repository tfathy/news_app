import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:news_app/core/model/news_model.dart';
import 'package:news_app/core/widgets/app_news_dtl.dart';

class AppNewsDtlBtn extends StatelessWidget {
  final Articles article;
  const AppNewsDtlBtn({super.key, required this.article});

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
            onPressed: () {
              showAdaptiveDialog(
                context: context,
                builder:
                    (context) =>
                        Dialog.fullscreen(child: AppNewsDtl(article: article)),
              );
            },
            child: Text(
              'read more...',
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
