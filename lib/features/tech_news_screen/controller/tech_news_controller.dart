import 'package:flutter/cupertino.dart';
import 'package:news_app/core/utils/DioUtils.dart';
import 'package:news_app/core/utils/app_constants.dart';
import 'package:news_app/core/model/news_model.dart';

class TechNewsController extends ChangeNotifier {
  TechNewsController._();

  static TechNewsController instance = TechNewsController._();
  bool isLoading = false;
  String errors = "";
  List<Articles> articles = [];

  void getData() async {
    isLoading = true;
    errors = "";
    notifyListeners();
    try {
      String url = AppConstants.getUrl(searchKey: "technology");
      final response = await DioUtils.findByKey(url: url);
      NewsModel model = NewsModel.fromJson(response.data);
      articles = model.articles;
    } catch (e) {
      errors = e.toString();
      print(e.toString());
      isLoading = false;
      notifyListeners();
    }
    isLoading = false;
    notifyListeners();
  }
}