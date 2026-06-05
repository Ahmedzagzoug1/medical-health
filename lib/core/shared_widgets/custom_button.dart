import 'package:flutter/material.dart';
import 'package:medical_health_app/main.dart';
import 'package:medical_health_app/core/resources/font_manager.dart';
import 'package:medical_health_app/core/resources/style_manager.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final Color color;
  final Color backgroundColor;
final TextStyle? textStyle;
final double? width;
  const CustomButton(
      {super.key,
      required this.title,
      required this.onTap,
      required this.color,
      required this.backgroundColor,
      this.textStyle,
      this.width});

  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    return InkWell(
      onTap: onTap,
      child: Container(
        width:width?? screenSize.width*.6,
        height: 50,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Center(
            child: Text(
              title,
              style:textStyle?? getMediumStyle(color: color, fontSize: FontSize.s24),
            ),
          ),
        ),
      ),
    );
  }
}
