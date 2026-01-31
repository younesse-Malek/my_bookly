import 'package:dio/dio.dart';

class ServiceApi {
  final String _baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio dio;

  ServiceApi({required this.dio});

  Future<Map<String, dynamic>> get(String endPoint) async {
    Response response = await dio.get('$_baseUrl$endPoint');

    return response.data;
  }
}
