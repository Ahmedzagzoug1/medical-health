import 'package:flutter/material.dart';
import 'package:medical_health_app/core/resources/assets_manager.dart';
import 'package:medical_health_app/core/resources/color_manager.dart';
import 'package:medical_health_app/core/resources/style_manager.dart';
import 'package:medical_health_app/core/shared_widgets/circle_widget.dart';
import 'package:medical_health_app/main.dart';

class DoctorItem extends StatelessWidget {
  const DoctorItem({super.key});

  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    return Container(
height: screenSize.height * .2,
width: screenSize.width * .9,
margin: EdgeInsets.symmetric(vertical: screenSize.width * .01),
decoration: BoxDecoration(
  color: ColorManager.blue2,
  borderRadius: BorderRadius.circular(10),),
  child: Row(children: [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: const BoxDecoration(shape: BoxShape.circle),
        width: screenSize.width*.2,
                child: const CircleAvatar(backgroundImage: AssetImage( AssetsManager.doctor1Image,),radius: 60,),

      ),

    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Dr. Olivia Turner, M.D.', style: getRegularStyle(color: ColorManager.primary),),
        Text('Dermato-Endocrinology', style: getLightStyle(color: ColorManager.black),),
        SizedBox(height: screenSize.height * .01),
        Row( spacing: 5,
          children: [
          Container(
            height: screenSize.height * .03,
            width: screenSize.width * .14,
            decoration: BoxDecoration(
              color: ColorManager.primary,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(20),),
              child: Center(child: Text('Info',
               style: getRegularStyle(color: ColorManager.white),),),
          ),

          const SizedBox(width: 8),
         const CircleWidget(widget: ImageIcon(
            AssetImage(AssetsManager.calenderIcon,),color: ColorManager.primary,size: 15,), redius:15),
          CircleWidget(widget: Text('i',style: getRegularStyle(color: ColorManager.primary),), redius:15),
         const CircleWidget
         (widget: Icon(Icons.question_mark_outlined,color: ColorManager.primary,size: 15,), redius:15),
                  const CircleWidget(widget: Icon(Icons.favorite_border  ,color: ColorManager.primary,size: 15,), 
                  redius:15),

        
      ])
  ],)
  ]) );
  }
}