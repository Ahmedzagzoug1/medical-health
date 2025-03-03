import 'package:flutter/material.dart';
import 'package:medical_health_app/peresentation_layer/resources/assets_manager.dart';
import 'package:medical_health_app/peresentation_layer/resources/color_manager.dart';
import 'package:medical_health_app/peresentation_layer/resources/font_manager.dart';
import 'package:medical_health_app/peresentation_layer/resources/routes_manager.dart';
import 'package:medical_health_app/peresentation_layer/resources/strings_manager.dart';
import 'package:medical_health_app/peresentation_layer/resources/style_manager.dart';
import 'package:medical_health_app/peresentation_layer/widgets/custom_app_bar.dart';
import 'package:medical_health_app/peresentation_layer/widgets/custom_button.dart';
import 'package:medical_health_app/peresentation_layer/widgets/custom_rounded_image.dart';
import 'package:medical_health_app/peresentation_layer/widgets/custom_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late bool isVaisiable;
  @override
  void initState() {
    isVaisiable = true;
    _getSuffixIcon();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomAppBar(
            title: 'Log In',
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Welcome',
                  style:
                      getBoldtStyle(color: ColorManager.primary, fontSize: 24),
                ),
                Text(
                  StringsManager.longString,
                  style: getRegularStyle(color: ColorManager.black2),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Email or Mobile Number',
                  style: getBoldtStyle(color: ColorManager.black, fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  hint: StringsManager.emailHint,
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Password',
                  style: getBoldtStyle(color: ColorManager.black, fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  hint: StringsManager.passwordHint,
                  isPassword: isVaisiable,
                  suffixIcon: _getSuffixIcon(),
                  keyboardType: TextInputType.visiblePassword,
                ),
                const SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: InkWell(
                    child: Text(
                      'Forgot Password',
                      style: getBoldtStyle(
                          color: ColorManager.primary, fontSize: 16),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, Routes.resetPasswordRoute);
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: CustomButton(
                    title: 'Log In',
                    onTap: () {},
                    color: ColorManager.white,
                    backgroundColor: ColorManager.primary,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                    child: Text(
                  'or log in with',
                  style: getLightStyle(color: ColorManager.black, fontSize: 16),
                )),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomRoundedImage(image: AssetsManager.googleImage),
                    SizedBox(
                      width: 13,
                    ),
                    CustomRoundedImage(image: AssetsManager.facebookImage),
                    SizedBox(
                      width: 13,
                    ),
                    CustomRoundedImage(image: AssetsManager.fingerPrintImage),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    'Don\'t have an account? ',
                    style:
                        getLightStyle(color: ColorManager.black, fontSize: 16),
                  ),
                  InkWell(
                    child: Text(
                      'Sign Up',
                      style: getBoldtStyle(
                          color: ColorManager.primary, fontSize: 16),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, Routes.signUpRoute);
                    },
                  ),
                ])
              ],
            ),
          ),
        ]),
      ),
    );
  }

  Widget _getSuffixIcon() {
    return InkWell(
        onTap: () {
          setState(() {
            isVaisiable = !isVaisiable;
          });
        },
        child: isVaisiable
            ? const Icon(
                Icons.visibility_off,
                
              )
            : const Icon(
                Icons.visibility,
              ));
  }
}
