import 'dart:ui_web';

import 'package:flutter/material.dart';
import 'package:medical_health_app/peresentation_layer/resources/assets_manager.dart';
import 'package:medical_health_app/peresentation_layer/resources/color_manager.dart';
import 'package:medical_health_app/peresentation_layer/resources/routes_manager.dart';
import 'package:medical_health_app/peresentation_layer/resources/style_manager.dart';
import 'package:medical_health_app/peresentation_layer/widgets/custom_button.dart';
import 'package:medical_health_app/peresentation_layer/widgets/custom_skin_first.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            SizedBox(height: 40,),
            CustomSkinFirst(imageAsset: AssetsManager.welcomeImage, textColor: ColorManager.primary),
            SizedBox(height: 40,),
        Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
            style: getRegularStyle(color: ColorManager.black2),),
            SizedBox(height: 20,),
            CustomButton(title: 'Log In', onTap: (){
                            Navigator.pushNamed(context, Routes.loginRoute);

            }, color: ColorManager.white, backgroundColor: ColorManager.primary,
            ),
            SizedBox(height: 10,),
            CustomButton(title: 'Sign Up', onTap: (){
              Navigator.pushNamed(context, Routes.signUpRoute);
            }, color: ColorManager.primary, backgroundColor: ColorManager.blue2),
          ],
        ),
      ),
    );
  }
}