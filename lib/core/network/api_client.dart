import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
@lazySingleton
class ApiClient {
  final Dio _dio;


  ApiClient._internal()
      : _dio = Dio(
          BaseOptions(
            //emulator baseUrl: 'http://10.0.2.2:3000/';
            //real device baseUrl: 'http://192.168.1.5:3000/'
            baseUrl: 'https://localhost:3000/',
            connectTimeout: const Duration(seconds: 30),
            receiveTimeout: const Duration(seconds: 30),
            headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
            },
          ),
        ) {
    _dio.interceptors.add(LogInterceptor(responseBody: true, requestBody: true));
  }

  // GET Request
  Future<Response> get(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final response = await _dio.get(
        path,
        queryParameters: queryParameters,
        options: options,
      );
      return response;
    } on DioException catch (e) {
      _handleDioError(e);
      rethrow;
    }
  }

  // POST Request
  Future<Response> post(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final response = await _dio.post(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
      return response;
    } on DioException catch (e) {
      _handleDioError(e);
      rethrow;
    }
  }

Future<Response> put(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final response = await _dio.put(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
      return response;
    } on DioException catch (e) {
      _handleDioError(e);
      rethrow;
    }
  } 
  Future<Response> delete(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final response = await _dio.delete(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
      return response;
    } on DioException catch (e) {
      _handleDioError(e);
      rethrow;
    }
  }
  void _handleDioError(DioException error) {
    if (error.type == DioExceptionType.connectionTimeout) {
      print('Connection Timeout Error');
    } else if (error.type == DioExceptionType.badResponse) {
      print('Server Error: ${error.response?.statusCode}');
    } else {
      print('Something went wrong: ${error.message}');
    }
  }
}