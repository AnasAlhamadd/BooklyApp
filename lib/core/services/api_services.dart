import 'package:dio/dio.dart';

class ApiServices {
  final Dio _dio;
  final String _baseUrl = 'https://www.googleapis.com/books/v1';
  ApiServices(this._dio);

  //! get request
  Future<Map<String, dynamic>> get({required String endPoints}) async {
    Response response = await _dio.get('$_baseUrl/$endPoints');
    return response.data;
  }
}
