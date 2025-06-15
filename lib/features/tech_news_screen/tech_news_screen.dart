import 'package:flutter/material.dart';
import 'package:news_app/core/widgets/shared/app_exception_handler.dart';
import 'package:news_app/core/widgets/shared/app_list_item.dart';
import 'package:news_app/features/tech_news_screen/controller/tech_news_controller.dart';

class TechNewsScreen extends StatefulWidget {
  const TechNewsScreen({super.key});

  @override
  State<TechNewsScreen> createState() => _TechNewsScreenState();
}

class _TechNewsScreenState extends State<TechNewsScreen> {
  var controller = TechNewsController.instance;
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
                            return AppListItem(
                              article: controller.articles[index],
                            );
                          },
                        ),
              )
              : AppExceptionHandler(errText: controller.errors.toString()),
    );
  }
}
