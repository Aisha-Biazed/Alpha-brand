import 'package:dio/dio.dart';

class DioHelper {
  static Dio dio = Dio();

  static init() {
    dio = Dio(BaseOptions(
      baseUrl: 'http://52.91.25.191:85/',
      receiveDataWhenStatusError: true,
       receiveTimeout: const Duration(seconds: 5),
      connectTimeout:  const Duration(seconds: 6),
      headers: {
        'Content-Type':'multipart/form-data',
        'Accept' :'text/plain'
      }
    ));
  }

  static Future<Response> getData(
      {required String url, required Map<String, dynamic> query}) async {
    return await dio.get(url, queryParameters: query);
  }

  static Future<Response> postData({
    required String url,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,
  }) async {
    return dio.post(
      url,
      queryParameters: query,
      data: data,
    );
  }
}
