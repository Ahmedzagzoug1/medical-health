import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'storage_keys.dart';

@LazySingleton()
class SecureStorage {
  final FlutterSecureStorage _storage = const FlutterSecureStorage();

  static const String accessTokenKey = StorageKeys.accessToken;
  static const String refreshTokenKey = StorageKeys.refreshToken;

  Future<void> saveAccessToken(String token) async {
    await _storage.write(
      key: accessTokenKey,
      value: token,
    );
  }

  Future<String?> getAccessToken() async {
    return await _storage.read(
      key: accessTokenKey,
    );
  }

  Future<void> saveRefreshToken(String token) async {
    await _storage.write(
      key: refreshTokenKey,
      value: token,
    );
  }

  Future<String?> getRefreshToken() async {
    return await _storage.read(
      key: refreshTokenKey,
    );
  }

  Future<void> deleteAccessToken() async {
    await _storage.delete(
      key: accessTokenKey,
    );
  }

  Future<void> deleteRefreshToken() async {
    await _storage.delete(
      key: refreshTokenKey,
    );
  }

  Future<void> clear() async {
    await _storage.deleteAll();
  }
}