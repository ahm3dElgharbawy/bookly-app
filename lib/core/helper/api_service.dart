import 'package:dio/dio.dart';

class ApiService {
  final String _baseUrl = "https://www.googleapis.com/books/v1/";
  late Dio dio;
  ApiService(this.dio);

  Future<Map<String, dynamic>> get({required String endPoints}) async {
    Response response = await dio.get('$_baseUrl$endPoints');
    return response.data;
  }
}
