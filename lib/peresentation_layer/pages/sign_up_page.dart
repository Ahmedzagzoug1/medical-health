import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medical_health_app/peresentation_layer/resources/assets_manager.dart';
import 'package:medical_health_app/peresentation_layer/resources/color_manager.dart';
import 'package:medical_health_app/peresentation_layer/resources/routes_manager.dart';
import 'package:medical_health_app/peresentation_layer/resources/strings_manager.dart';
import 'package:medical_health_app/peresentation_layer/resources/style_manager.dart';
import 'package:medical_health_app/peresentation_layer/widgets/custom_app_bar.dart';
import 'package:medical_health_app/peresentation_layer/widgets/custom_button.dart';
import 'package:medical_health_app/peresentation_layer/widgets/custom_rounded_image.dart';
import 'package:medical_health_app/peresentation_layer/widgets/custom_text_field.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

     bool isVaisiable=true;
  @override
  void initState() {
   
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body:SingleChildScrollView(child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,

children: [
  CustomAppBar(title: 'New Account',onPressed: () {
    Navigator.pop(context);
  },),
  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 24.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
     //full Name
    Text('Full Name',style: getBoldtStyle(color: ColorManager.black,fontSize: 20),),
    const SizedBox(height: 10,),
      CustomTextField(hint: 'User Name',keyboardType: TextInputType.name,),
          const SizedBox(height: 5,),
       //password    
           Text('Password',style: getBoldtStyle(color: ColorManager.black,fontSize: 20),),
      const SizedBox(height: 5,),
       CustomTextField(hint: StringsManager.passwordHint,isPassword: isVaisiable,
       suffixIcon: _getSuffixIcon(),keyboardType: TextInputType.visiblePassword,),
       const SizedBox(height: 5,),
       //Email
       Text('Email',style: getBoldtStyle(color: ColorManager.black,fontSize: 20),),
    const SizedBox(height: 5,),
      CustomTextField(hint: StringsManager.emailHint,keyboardType: TextInputType.emailAddress,),
          const SizedBox(height: 5,),
          //phone number
          Text('Mobile Number',style: getBoldtStyle(color: ColorManager.black,fontSize: 20),),
    const SizedBox(height: 5,),
      CustomTextField(hint: '010222222',keyboardType: TextInputType.phone,),
          const SizedBox(height: 5,),
          // Date of birth
          Text('Date of Birth',style: getBoldtStyle(color: ColorManager.black,fontSize: 20),),
          CustomTextField(hint: 'DD / MM /YYY',keyboardType: TextInputType.none,
          
          onTap: () {
            
           showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(1920),
          lastDate: DateTime(2070),
        );}
          ),
    const SizedBox(height: 5,),
    //text
    Text('By continuing, you agree to ',style: getMediumStyle(color: ColorManager.black),),
     const Text.rich( TextSpan(children: [
    TextSpan(text: 'Terms and Conditions',style: TextStyle(color: ColorManager.primary),),
    TextSpan(text: ' and ',style: TextStyle(color: ColorManager.black),),
    TextSpan(text: 'Privacy Policy',style: TextStyle(color: ColorManager.primary),),
    ]),
    ),
    SizedBox(height: 5,),
    Center(
    child: CustomButton(title: 'Sign Up', onTap: (){},
     color: ColorManager.white, backgroundColor: ColorManager.primary,),
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
     Text('Already have an account? ',style: getLightStyle(color: ColorManager.black,fontSize: 16),),
     InkWell(child: Text('Log In',style: getBoldtStyle(color: ColorManager.primary,fontSize: 16),),
     onTap: () {
     Navigator.pushNamed(context, Routes.loginRoute);
     },),
    ]),
    
    ]),
  )
    ],
  ),
  ));  }
   Widget _getSuffixIcon() {
    return InkWell(
        onTap: () {
          setState(() {
            isVaisiable = !isVaisiable;
          });
        },
        child: isVaisiable
            ?const Icon(
                Icons.visibility_off,
                size: 20,
              ):
             const Icon(
                Icons.visibility,
                size: 20,
              ));
  }
}