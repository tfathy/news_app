import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:news_app/core/model/news_model.dart';
import 'package:news_app/core/widgets/news/app_news_detail.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AppNewsDetailButton extends StatelessWidget {
  final Articles article;
  const AppNewsDetailButton({super.key, required this.article});

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
                        Dialog.fullscreen(child: AppNewsDetail(article: article)),
              );
            },
            child: Text(
             AppLocalizations.of(context)!.read_more.toString(),
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
