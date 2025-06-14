import 'package:flutter/cupertino.dart';
import 'package:news_app/core/DioUtils.dart';
import 'package:news_app/core/app_constants.dart';
import 'package:news_app/core/model/news_model.dart';

class EconomyNewsCtrl extends ChangeNotifier {
  EconomyNewsCtrl._();
  static EconomyNewsCtrl instance = EconomyNewsCtrl._();
  bool isLoading = false;
  String errors = "";
  List<Articles> articles = [];
  void getData() async {
    isLoading = true;
    errors = "";
    notifyListeners();
    try {
      String url = AppConstants.getUrl(searchKey: "economy");
      final response = await DioUtils.findByKey(url: url);
      NewsModel model = NewsModel.fromJson(response.data);
      articles = model.articles;
    } catch (e) {
      errors = e.toString();
      print(e.toString());
      isLoading = false;
    }
    isLoading = false;
    notifyListeners();
  }
}
