import 'package:flutter/cupertino.dart';
import 'package:news_app/core/utils/DioUtils.dart';
import 'package:news_app/core/utils/app_constants.dart';
import 'package:news_app/core/model/news_model.dart';

class EconomyNewsController extends ChangeNotifier {
  EconomyNewsController._();
  static EconomyNewsController instance = EconomyNewsController._();
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
