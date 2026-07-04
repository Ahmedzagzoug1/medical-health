import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:medical_health_app/core/resources/constants_manager.dart';
import 'package:medical_health_app/core/resources/routes_manager.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_health_app/favorite_bloc_observer.dart';
import 'package:medical_health_app/features/favorite/presentation/bloc/pages_cubit/pages_cubit.dart';
import 'core/di/service_locators.dart';
late Size screenSize;
void main()async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  Bloc.observer =  FavoriteBlocObserver();
  await configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: AppConstants.timer_delay), () {
      FlutterNativeSplash.remove();
      Navigator.of(context).popAndPushNamed(Routes.welcomeRoute);
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PagesCubit>(
        create: (context) => PagesCubit(),
        child: const MaterialApp(
          initialRoute: Routes.homeRoute,
          onGenerateRoute: RouteGenerator.getRoute,
          debugShowCheckedModeBanner: false,
        ));
  }
}
