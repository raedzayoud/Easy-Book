import 'package:dio/dio.dart';

class Apiservice {
  final Dio _dio;
  final String _baseUrl = "https://www.googleapis.com/books/v1/";
  Apiservice(this._dio);

  Future<Map<String, dynamic>> get({required String endPoints}) async {
    var response = await _dio.get("$_baseUrl$endPoints");
    return response.data;
  }
}
