import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:news_app/core/model/news_model.dart';
import 'package:news_app/core/widgets/shared/app_divider.dart';
import 'package:url_launcher/url_launcher.dart';

class AppNewsDetail extends StatelessWidget {
  final Articles article;
  AppNewsDetail({super.key, required this.article});

  @override
  Widget build(BuildContext context)  {
    DateTime dt = DateTime.parse(article.publishedAt.toString());
    String vDate = DateFormat.yMMMMd().format(dt);
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.close),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(5),
              child: CachedNetworkImage(
                imageUrl: article.image.toString(),
                imageBuilder:
                    (context, imageProvider) => Container(
                      width: double.infinity,
                      height: 300,
                      decoration: BoxDecoration(
                        // shape: BoxShape.circle,
                        borderRadius: BorderRadius.circular(2),
                        image: DecorationImage(
                          image: imageProvider,
                          fit: BoxFit.cover,
                          //colorFilter:  ColorFilter.mode(Colors.red, BlendMode.colorBurn)
                        ),
                      ),
                    ),
              ),
            ),

            Text(
              article.title.toString(),
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            Text(
              article.description.toString(),
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16),
            ),
            AppDivider(),
            Text(article.content.toString()),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text(article.author.toString()), Text(vDate,style: TextStyle(color: Colors.blue),)],
            ),
            AppDivider(),
            SizedBox(height: 50),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
              onPressed: ()  async {
                final Uri _url = Uri.parse(article.url.toString());
                  if (!await launchUrl(_url)) {
                  throw Exception('Could not launch $_url');
                  }
              },
              child: Text(
                'Read Full Article on the website',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
