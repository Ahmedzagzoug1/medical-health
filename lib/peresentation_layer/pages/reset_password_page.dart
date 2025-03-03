import 'package:flutter/material.dart';
import 'package:medical_health_app/peresentation_layer/resources/color_manager.dart';
import 'package:medical_health_app/peresentation_layer/resources/strings_manager.dart';
import 'package:medical_health_app/peresentation_layer/resources/style_manager.dart';
import 'package:medical_health_app/peresentation_layer/widgets/custom_app_bar.dart';
import 'package:medical_health_app/peresentation_layer/widgets/custom_button.dart';
import 'package:medical_health_app/peresentation_layer/widgets/custom_text_field.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({super.key});

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  late bool isVaisiable;
  @override
  void initState() {
     isVaisiable = true;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column( children: [
        CustomAppBar(
          title: 'Reset Password',
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text(StringsManager.longString
          ,
          style: getRegularStyle(color: ColorManager.black2),
        ),
        Text('Password',
            style: getBoldtStyle(color: ColorManager.black, fontSize: 20)),
        const SizedBox(
          height: 10,
        ),
        CustomTextField(
          hint: StringsManager.passwordHint,
          isPassword: isVaisiable,
          keyboardType: TextInputType.visiblePassword,
          suffixIcon: _getSuffixIcon(),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'Confirm Password',
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
        SizedBox(
          width: 500,
          child: CustomButton(
            title: 'Create New Password',
            onTap: () {},
            color: ColorManager.white,
            backgroundColor: ColorManager.primary,
          ),
        ),
          ],
        )
       
      ]),
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
