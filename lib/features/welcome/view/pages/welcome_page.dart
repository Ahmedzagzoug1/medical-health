import 'package:flutter/material.dart';
import 'package:medical_health_app/main.dart';
import 'package:medical_health_app/core/resources/assets_manager.dart';
import 'package:medical_health_app/core/resources/color_manager.dart';
import 'package:medical_health_app/core/resources/routes_manager.dart';
import 'package:medical_health_app/core/resources/strings_manager.dart';
import 'package:medical_health_app/core/resources/style_manager.dart';
import 'package:medical_health_app/core/shared/presentation/shared_widgets/custom_button.dart';
import 'package:medical_health_app/features/welcome/view/widgets/custom_skin_first.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    screenSize=MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            SizedBox(height: screenSize.height*0.2,),
          const  CustomSkinFirst(imageAsset: AssetsManager.welcomeImage, textColor: ColorManager.primary),
           const SizedBox(height: 10,),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: screenSize.width*.08),
          child: Text(
StringsManager.longString,
              style: getRegularStyle(color: ColorManager.black2),
              textAlign: TextAlign.center,),
        ),
          const  SizedBox(height: 20,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center ,
            children: [
               CustomButton(title: 'Log In', onTap: (){
                            Navigator.pushNamed(context, Routes.loginRoute);
            
            }, color: ColorManager.white, backgroundColor: ColorManager.primary,
            ),
           const SizedBox(height: 10,),
            CustomButton(title: 'Sign Up', onTap: (){
              Navigator.pushNamed(context, Routes.signUpRoute);
            }, color: ColorManager.primary, backgroundColor: ColorManager.blue2),
          
            ],
          )
           ],
        ),
      ),
    );
  }
}