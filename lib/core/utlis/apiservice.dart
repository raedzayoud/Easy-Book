import 'package:dio/dio.dart';

class Apiservice {
  final Dio dio;
  final String _baseUrl = "https://www.googleapis.com/books/v1";
  Apiservice(this.dio);

  Future<Map<String, dynamic>> get({required String endPoints}) async {
    var response = await dio.get("$_baseUrl/$endPoints");
    return response.data;
  }
}
