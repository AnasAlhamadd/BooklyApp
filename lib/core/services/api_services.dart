import 'package:dio/dio.dart';

class ApiServices {
  final Dio dio;
  final String baseUrl = 'https://www.googleapis.com/books/v1';
  ApiServices({required this.dio});

  //! get request
  Future<Response> get({required String endPoints}) async {
    Response response = await dio.get('${baseUrl}/$endPoints}');
    return response.data;
  }
}
