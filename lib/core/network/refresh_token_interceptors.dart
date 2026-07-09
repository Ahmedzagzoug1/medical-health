import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../storage/secure_storage_service.dart';
@lazySingleton
class RefreshTokenInterceptor extends Interceptor {
  final Dio dio;
  final SecureStorage secureStorage; 
  RefreshTokenInterceptor(this.dio, this.secureStorage); 

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    if (err.response?.statusCode != 401) {
      return handler.next(err);
    }

    try {
      final refreshToken = await secureStorage.getRefreshToken(); 

      
      final response = await dio.post(
        '/auth/refresh-token',
        data: {
          'refreshToken': refreshToken,         },
      );

      final newAccessToken = response.data['accessToken'];

     
      await secureStorage.saveAccessToken(newAccessToken);

     
      final request = err.requestOptions;

      request.headers['Authorization'] = 'Bearer $newAccessToken';

      final clonedResponse = await dio.fetch(request);

      return handler.resolve(clonedResponse);
    } catch (_) {
      
      await secureStorage.clear();
      
      return handler.next(err);
    }
  }
}