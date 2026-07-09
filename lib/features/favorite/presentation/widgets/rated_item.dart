import 'package:flutter/material.dart';
import 'package:medical_health_app/core/resources/assets_manager.dart';
import 'package:medical_health_app/core/resources/color_manager.dart';
import 'package:medical_health_app/core/resources/style_manager.dart';
import 'package:medical_health_app/core/shared/presentation/shared_widgets/circle_widget.dart';
import 'package:medical_health_app/main.dart';

class RatedItem extends StatelessWidget {
  const RatedItem({super.key});

  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: screenSize.width * .01),
        decoration: BoxDecoration(
          color: ColorManager.blue2,
          borderRadius: BorderRadius.circular(10),
        
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            spacing: 8,
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(AssetsManager.doctor1Image,),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Column(
          spacing: 16,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
          SizedBox(
            width: screenSize.width * .6,
            child: Row(spacing: 8,
              children: [
              const CircleWidget(widget:
               Icon(Icons.female_outlined,size: 24,color: ColorManager.white,),
               backgroundColor: ColorManager.primary,redius: 15,),
               Text('Professional Doctor',style: getRegularStyle(color: ColorManager.primary),),
               const Spacer() ,
               Container(
                 decoration: BoxDecoration(
                   color: ColorManager.white,
                   
                   borderRadius: BorderRadius.circular(10)
                 ),
                 child: Padding(
                   padding: const EdgeInsets.all(4.0),
                   child:Row( children: [
                      const Icon(Icons.star,color: ColorManager.primary,size: 12,),
                      Text('4.5',style: getRegularStyle(color: ColorManager.primary),)
                   ]) 
                 ),
               )
            ]),
          ),
          Container(
            width: screenSize.width * .6,
            decoration: BoxDecoration(
              color: ColorManager.white,
              borderRadius: BorderRadius.circular(10)
            ),child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text('Dr. Olivia Turner, M.D.',style: getRegularStyle(color: ColorManager.primary),),
                  Text('Dermato-Endocrinology',style: getLightStyle(color: ColorManager.black),),
                ],
              ),
            ),
          )  ,
          SizedBox(width: screenSize.width * .6,
            child: Row( spacing: 5,
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
            
              const Expanded(child: SizedBox()),
             const CircleWidget(widget: ImageIcon(
                AssetImage(AssetsManager.calenderIcon,),color: ColorManager.primary,size: 15,), redius:15),
              CircleWidget(widget: Text('i',style: getRegularStyle(color: ColorManager.primary),), redius:15),
             const CircleWidget
             (widget: Icon(Icons.question_mark_outlined,color: ColorManager.primary,size: 15,), redius:15),
                      const CircleWidget(widget: Icon(Icons.favorite_border  ,color: ColorManager.primary,size: 15,), 
                      redius:15),
            
            
                  ]),
          )    
                  ]),
          
                  ]),
        ),
      )      
      ,
    );
  }
}