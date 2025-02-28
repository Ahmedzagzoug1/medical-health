import 'dart:async';

import 'package:flutter/material.dart';
import 'package:medical_health_app/peresentation_layer/resources/assets_manager.dart';
import 'package:medical_health_app/peresentation_layer/resources/color_manager.dart';
import 'package:medical_health_app/peresentation_layer/resources/constants_manager.dart';
import 'package:medical_health_app/peresentation_layer/resources/routes_manager.dart';
import 'package:medical_health_app/peresentation_layer/resources/style_manager.dart';
import 'package:medical_health_app/peresentation_layer/widgets/custom_skin_first.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: AppConstants.timer_delay), () {
      Navigator.of(context).pushReplacementNamed(Routes.welcomeRoute);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: ColorManager.primary,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomSkinFirst(
                imageAsset: AssetsManager.splashImage,
                textColor: ColorManager.white,
              ),
            ],
          ),
        ));
  }
}
