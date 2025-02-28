import 'package:flutter/material.dart';
import 'package:medical_health_app/peresentation_layer/resources/assets_manager.dart';
import 'package:medical_health_app/peresentation_layer/resources/color_manager.dart';
import 'package:medical_health_app/peresentation_layer/resources/font_manager.dart';
import 'package:medical_health_app/peresentation_layer/resources/strings_manager.dart';
import 'package:medical_health_app/peresentation_layer/resources/style_manager.dart';
import 'package:medical_health_app/peresentation_layer/widgets/custom_app_bar.dart';
import 'package:medical_health_app/peresentation_layer/widgets/custom_button.dart';
import 'package:medical_health_app/peresentation_layer/widgets/custom_rounded_image.dart';
import 'package:medical_health_app/peresentation_layer/widgets/custom_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body:  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      CustomAppBar(title: 'Log In',onPressed: () {
        Navigator.pop(context);
      },),
      Padding(
  padding: const EdgeInsets.symmetric(horizontal: 16.0),
  child:Column(
crossAxisAlignment: CrossAxisAlignment.start,
        children: [
     const SizedBox(height: 10,),
      Text('Welcome',style: getBoldtStyle(color: ColorManager.primary,fontSize: 24),),
      Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
        style: getRegularStyle(color: ColorManager.black2),),
       const SizedBox(height: 20,),
       Text('Email or Mobile Number',style: getBoldtStyle(color: ColorManager.black,fontSize: 20),),
      const SizedBox(height: 10,),
       CustomTextField(hint: StringsManager.emailHint,),
           const SizedBox(height: 10,),
           Text('Password',style: getBoldtStyle(color: ColorManager.black,fontSize: 20),),
      const SizedBox(height: 10,),
       CustomTextField(hint: StringsManager.passwordHint,isPassword: true,),
       const SizedBox(height: 10,),
       Align(alignment: Alignment.topRight,
       child: Text('Forgot Password?',style: getBoldtStyle(color: ColorManager.primary,fontSize: 16),),),
Center(
  child: SizedBox(
    width: 100,
    child: CustomButton(title: 'Log In', onTap: (){},
     color: ColorManager.white, backgroundColor: ColorManager.primary,),
  ),
),
SizedBox(height: 10,),
Center(child: Text('or sign up with',style: getLightStyle(color: ColorManager.black,fontSize: 16),)),
SizedBox(height: 10,),
const Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
CustomRoundedImage(image: AssetsManager.googleImage),
     SizedBox(width: 10,),
CustomRoundedImage(image: AssetsManager.facebookImage),
     SizedBox(width: 10,),
CustomRoundedImage(image: AssetsManager.fingerPrintImage),
  ],
),
SizedBox(height: 10,),
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
 Text('Don\'t have an account? ',style: getLightStyle(color: ColorManager.black,fontSize: 16),),
 InkWell(child: Text('Sign Up',style: getBoldtStyle(color: ColorManager.primary,fontSize: 16),),
 onTap: () {},),
  ])
        
        ],),),
  ]
),
    );
  }
}

