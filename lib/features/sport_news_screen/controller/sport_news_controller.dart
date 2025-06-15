import 'package:flutter/cupertino.dart';
import 'package:news_app/core/utils/DioUtils.dart';
import 'package:news_app/core/utils/app_constants.dart';
import 'package:news_app/core/model/news_model.dart';

class SportNewsController extends ChangeNotifier{
  SportNewsController._();
  static  SportNewsController instance = SportNewsController._();
  bool isLoading = false;
  String errors = "";
  List<Articles>  articles = [];

  void getData() async{
    isLoading = true;
    errors="";
    notifyListeners();
    try{
      String url = AppConstants.getUrl(searchKey: "football");
      final response = await DioUtils.findByKey(url: url);
      NewsModel model = NewsModel.fromJson(response.data);
      articles = model.articles;
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