//https://newsapi.org/v2/top-headlines?country=us&apiKey=35f1e13f6a7f497e8dcb4b51350fec47
import 'package:flutter/material.dart';

abstract class AppConstants {
  static String _baseUrl = "https://newsapi.org/v2/";
  static String _newsEndPont = "everything";
  static String _apiKey = "35f1e13f6a7f497e8dcb4b51350fec47";


  static String getUrl({required String searchKey}) {
    return "$_baseUrl$_newsEndPont?qInTitle=$searchKey&apiKey=$_apiKey";
  }
  static ValueNotifier<bool> isSwitched = ValueNotifier(false);
}
