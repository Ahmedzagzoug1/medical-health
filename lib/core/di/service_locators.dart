import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'service_locators.config.dart';
final getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() => getIt.init();