import 'package:flutter/material.dart';
import 'package:news_app/core/widgets/shared/app_exception_handler.dart';
import 'package:news_app/core/widgets/shared/app_list_item.dart';
import 'package:news_app/features/sport_news_screen/controller/sport_news_controller.dart';

class SportNewsScreen extends StatefulWidget {
  SportNewsScreen({super.key});

  @override
  State<SportNewsScreen> createState() => _SportNewsScreenState();
}

class _SportNewsScreenState extends State<SportNewsScreen> {
  var controller = SportNewsController.instance;
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
