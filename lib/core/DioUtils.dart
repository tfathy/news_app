import 'package:dio/dio.dart';


class DioUtils {
  static final _dio = Dio();
  static Future<dynamic> findByKey({required String url}) async {
    final response = await _dio.get(url);
    return response;
  }
}
