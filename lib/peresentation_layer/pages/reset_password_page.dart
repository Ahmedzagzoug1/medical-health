import 'package:flutter/material.dart';
import 'package:medical_health_app/peresentation_layer/widgets/custom_app_bar.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Column(
  children: [
    CustomAppBar(title: 'Log In',onPressed: () {
      Navigator.pop(context);
    },),
]),
    );  }
}