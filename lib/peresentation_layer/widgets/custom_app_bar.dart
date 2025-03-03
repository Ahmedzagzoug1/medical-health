import 'package:flutter/material.dart';
import 'package:medical_health_app/peresentation_layer/resources/color_manager.dart';
import 'package:medical_health_app/peresentation_layer/resources/font_manager.dart';
import 'package:medical_health_app/peresentation_layer/resources/style_manager.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  void Function()? onPressed;
   CustomAppBar({super.key, required this.title, required this.onPressed});

  @override

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: AppBar(
        
        title: Text(
          title,
          style: getSemiBoldStyle(
              color: ColorManager.primary, fontSize: FontSize.s24),
        ),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: ColorManager.primary,
            ),
            onPressed: onPressed,
          ),
        ),
      ),
    );
  }
}
