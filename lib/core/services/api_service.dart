import 'package:cvision/core/services/token_service.dart';
import 'package:dio/dio.dart';

abstract class ApiService {
  static final Dio _dio = Dio(
    BaseOptions(
      baseUrl: 'https://cvision-api.onrender.com/api',
    ),
  );

  static String get _token {
    return TokenService.currentToken;
  }

  static Future<Response> get(String endPoint) async {
    Response response = await _dio.get(
      endPoint,
      options: Options(
        headers: {
          'Authorization': 'Bearer $_token',
        },
      ),
    );
    return response;
  }

  static Future<Response> post(
    String endPoint, {
    required dynamic data,
    required String contentType,
  }) async {
    Response response = await _dio.post(
      endPoint,
      data: data,
      options: Options(
        headers: {
          'Authorization': 'Bearer $_token',
          'Content-Type': contentType,
        },
      ),
    );
    return response;
  }
}
