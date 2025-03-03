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
        width: 60,
        height: 60,
        decoration:const BoxDecoration(
          shape: BoxShape.circle,

          color: ColorManager.blue2,
        ),
        child:Padding(padding: const EdgeInsets.all(8.0),child: Image.asset( image,height: 30,width: 30,) )
      )
    );
  }
}