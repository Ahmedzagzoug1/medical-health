import 'package:flutter/material.dart';
import 'package:medical_health_app/peresentation_layer/widgets/custom_app_bar.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Column(
  children: [
    CustomAppBar(title: 'Sign Up',onPressed: () {
      Navigator.pop(context);
    },),
]),
    );  }
}