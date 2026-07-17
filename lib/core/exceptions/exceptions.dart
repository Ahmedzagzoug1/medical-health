class ServerException implements Exception {
  final String message;

  ServerException(this.message);

  @override
  String toString() => 'ServerException: $message';
}
class UnAuthorizedException implements Exception {
  final String message;

  UnAuthorizedException(this.message);

  @override
  String toString() => 'UnAuthorizedException: $message';
}
class NetworkException implements Exception {
  final String message;

  NetworkException(this.message);

  @override
  String toString() => 'NetworkException: $message';
}
class CacheException implements Exception {
  final String message;

  CacheException(this.message);

  @override
  String toString() => 'CacheException: $message';
}
class ValidationException implements Exception {
  final String message;

  ValidationException(this.message);

  @override
  String toString() => 'CacheException: $message';
}