import 'package:flutter/material.dart';
import 'package:medical_health_app/peresentation_layer/resources/color_manager.dart';
import 'package:medical_health_app/peresentation_layer/resources/font_manager.dart';
import 'package:medical_health_app/peresentation_layer/resources/style_manager.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  void Function()? onPressed;
   CustomAppBar({super.key, required this.title, required this.onPressed});

  @override
/*************  ✨ Codeium Command ⭐  *************/
  /// Builds an [AppBar] widget with a centered title and a back button.
  ///
  /// The title of the app bar is displayed using a semi-bold style with a primary color.
  /// The leading icon is an arrow pointing back, also styled with the primary color.
  ///
  /// [context] is the build context in which the widget is built.

/******  4ce675c4-fc96-4172-8672-b8e3b30b86fd  *******/
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: getSemiBoldStyle(
            color: ColorManager.primary, fontSize: FontSize.s24),
      ),
      centerTitle: true,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios,
          color: ColorManager.primary,
        ),
        onPressed: onPressed,
      ),
    );
  }
}
