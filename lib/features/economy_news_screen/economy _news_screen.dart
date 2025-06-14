import 'package:flutter/material.dart';
import 'package:news_app/core/widgets/app_exception_handler.dart';
import 'package:news_app/core/widgets/app_list_item.dart';

import 'economy _news_ctrl.dart';

class EconomyNewsScreen extends StatefulWidget {
  const EconomyNewsScreen({super.key});

  @override
  State<EconomyNewsScreen> createState() => _EconomyNewsScreenState();
}

class _EconomyNewsScreenState extends State<EconomyNewsScreen> {
  var controller = EconomyNewsCtrl.instance;
  @override
  void initState() {
    super.initState();
    if (mounted) {
      controller.getData();
      controller.addListener(() {
        setState(() {});
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
