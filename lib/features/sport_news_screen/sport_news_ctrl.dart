import 'package:flutter/cupertino.dart';
import 'package:news_app/core/DioUtils.dart';
import 'package:news_app/core/app_constants.dart';
import 'package:news_app/features/sport_news_screen/model/sport_news_model.dart';

class SportNewsCtrl extends ChangeNotifier{
  SportNewsCtrl._();
  static  SportNewsCtrl instance = SportNewsCtrl._();
  bool isLoading = false;
  String errors = "";
  List<Articles>  articles = [];

  void getData() async{
    isLoading = true;
    errors="";
    notifyListeners();
    try{
      String url = AppConstants.getUrl(searchKey: "sports");
      final response = await DioUtils.findByKey(url: url);
      SportNewsModel model = SportNewsModel.fromJson(response.data);
      articles = model.articles;
      print(articles[0].description);
    }catch(e){
      errors = e.toString();
      print(e.toString());
      isLoading = false;
      notifyListeners();
    }
    isLoading = false;
    notifyListeners();
  }
}