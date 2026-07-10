import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:medical_health_app/core/exceptions/exceptions.dart';
import 'package:medical_health_app/core/network/api_client.dart';
import 'package:medical_health_app/core/network/api_endpoints.dart';
import 'package:medical_health_app/features/auth/data/models/login_request_model.dart';
import 'package:medical_health_app/features/auth/data/models/login_response_model.dart';
import 'package:medical_health_app/features/auth/data/models/register_request_model.dart';
import 'package:medical_health_app/features/auth/data/models/register_response_model.dart';

abstract class AuthRemoteDataSource {
  Future<LoginResponseModel> login(LoginRequestModel loginRequest);
  Future<RegisterResponseModel> register(RegisterRequestModel registerRequest);

}

@LazySingleton(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final ApiClient _apiClient;

  AuthRemoteDataSourceImpl(this._apiClient);

  @override
  Future<LoginResponseModel> login(LoginRequestModel loginRequest) async {
    try {
      final response = await _apiClient.post(
        ApiEndpoints.login,
        data: loginRequest.toJson(),
      );

      return LoginResponseModel.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        throw UnAuthorizedException(
          e.response?.data['message'] as String? ?? 'Unauthorized',
        );
      } else if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.sendTimeout ||
          e.type == DioExceptionType.receiveTimeout ||
          e.type == DioExceptionType.connectionError) {
        throw NetworkException(e.message ?? 'Network error');
      } else {
        throw ServerException(
          e.response?.data['message'] as String? ?? e.message ?? 'Server error',
        );
      }
    } catch (e) {
      throw ServerException(e.toString());
    }
  }
@override
  Future<RegisterResponseModel> register(RegisterRequestModel registerRequest) async {
    try {
      final response = await _apiClient.post(
        ApiEndpoints.register,
        data: registerRequest.toJson(),
      );

      return RegisterResponseModel.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      if (e.response?.statusCode == 400) {
        throw ValidationException(
          e.response?.data['message'] as String? ?? 'validation',
        );
      } else if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.sendTimeout ||
          e.type == DioExceptionType.receiveTimeout ||
          e.type == DioExceptionType.connectionError) {
        throw NetworkException(e.message ?? 'Network error');
      } else {
        throw ServerException(
          e.response?.data['message'] as String? ?? e.message ?? 'Server error',
        );
      }
    } catch (e) {
      throw ServerException(e.toString());
    }
  }
}
