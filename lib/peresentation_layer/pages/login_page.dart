import 'package:flutter/material.dart';
import 'package:medical_health_app/peresentation_layer/resources/color_manager.dart';
import 'package:medical_health_app/peresentation_layer/resources/font_manager.dart';
import 'package:medical_health_app/peresentation_layer/resources/style_manager.dart';
import 'package:medical_health_app/peresentation_layer/widgets/custom_app_bar.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Column(
  children: [
    CustomAppBar(title: 'Log In',onPressed: () {
      Navigator.pop(context);
    },),
]),
    );
  }
}

