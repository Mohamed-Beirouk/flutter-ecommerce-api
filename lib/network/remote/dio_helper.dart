import 'package:dio/dio.dart';

class DioHelper
{
  static late Dio dio;
  static init()
  {
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://sup-er-app.herokuapp.com/apis/',

        receiveDataWhenStatusError: true,
        headers: {
          'Content-Type':'application/json',
        }
      ),
    );
  }
  static Future<Response> getData({
  required String url,
  required Map<String, dynamic> query,
  String lang = 'en',
  String? token,
  })async
  {
    dio.options.headers =
        {
          'lang': lang,
          'Authorization': 'token 5f8fadc4dd7c8f369ef29e8fef61776df2dd3634',
        };
    return await dio.get(
      url,
      queryParameters: query,
    );
  }

  static Future<Response> postData({
    Map<String, dynamic>? query,
    required String url,
    required Map<String, dynamic> data,
    String lang = 'ar',
    String? token,
  })async
{
  dio.options.headers =
  {
    'lang': lang,
    'Authorization': token,
  };
  return dio.post(
    url,
    queryParameters: query,
    data: data,
  );
}
}