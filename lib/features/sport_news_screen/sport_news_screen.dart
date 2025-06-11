import 'package:flutter/material.dart';
import 'package:news_app/core/widgets/app_exception_handler.dart';
import 'package:news_app/core/widgets/app_list_item.dart';
import 'package:news_app/features/sport_news_screen/sport_news_ctrl.dart';

class SportNewsScreen extends StatefulWidget {
  SportNewsScreen({super.key});

  @override
  State<SportNewsScreen> createState() => _SportNewsScreenState();
}

class _SportNewsScreenState extends State<SportNewsScreen> {
  var controller = SportNewsCtrl.instance;
  @override
  void initState() {
    super.initState();
    if(mounted){
      controller.getData();
      controller.addListener(() {
        setState(() {
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.black.withValues(alpha: 0.1),
      appBar: AppBar(
        title: Text(
          'Sports news',
          style: TextStyle(
            color: Colors.teal,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body:
          controller.errors.isEmpty
              ? Center(
                child:
                    controller.isLoading
                        ? CircularProgressIndicator()
                        : ListView.builder(
                          itemCount: controller.articles.length,
                          itemBuilder: (context, index) {
                            return AppListItem(article:
                              controller.articles[index],
                            );
                          },
                        ),
              )
              : AppExceptionHandler(errText:controller.errors.toString()),
    );
  }
}
