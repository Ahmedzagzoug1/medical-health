// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart'
    as _i161;
import 'package:medical_health_app/core/network/api_client.dart' as _i56;
import 'package:medical_health_app/core/network/network_info.dart' as _i1063;
import 'package:medical_health_app/core/network/refresh_token_interceptors.dart'
    as _i225;
import 'package:medical_health_app/core/storage/secure_storage_service.dart'
    as _i524;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final networkModule = _$NetworkModule();
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i361.Dio>(() => networkModule.dio());
    gh.lazySingleton<_i56.ApiClient>(() => _i56.ApiClient());
    gh.lazySingleton<_i161.InternetConnection>(
      () => registerModule.internetConnection,
    );
    gh.lazySingleton<_i524.SecureStorage>(() => _i524.SecureStorage());
    gh.lazySingleton<_i225.RefreshTokenInterceptor>(
      () => _i225.RefreshTokenInterceptor(
        gh<_i361.Dio>(),
        gh<_i524.SecureStorage>(),
      ),
    );
    gh.lazySingleton<_i1063.NetworkInfo>(
      () => _i1063.NetworkInfoImpl(gh<_i161.InternetConnection>()),
    );
    return this;
  }
}

class _$NetworkModule extends _i56.NetworkModule {}

class _$RegisterModule extends _i1063.RegisterModule {}
