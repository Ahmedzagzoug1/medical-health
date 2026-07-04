import 'package:flutter/material.dart';
import 'package:medical_health_app/core/resources/color_manager.dart';

class CircleWidget extends StatelessWidget {
  final Widget widget;
  final Color backgroundColor;
  final double redius;

 const CircleWidget({super.key, required this.widget,  this.backgroundColor=ColorManager.white,
      this.redius=21 });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor:   backgroundColor,
      radius: redius,
      child: widget
    );
  }
}