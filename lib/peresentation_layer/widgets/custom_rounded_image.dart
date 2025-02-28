import 'package:flutter/material.dart';
import 'package:medical_health_app/peresentation_layer/resources/color_manager.dart';

class CustomRoundedImage extends StatelessWidget {
  final String image;
  const CustomRoundedImage({super.key,required this.image});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 80,
        height: 80,
        decoration:const BoxDecoration(
          shape: BoxShape.circle,
          color: ColorManager.blue2,
        ),
        child:Image.asset( image,height: 100,width: 100,) )
    );
  }
}