import 'package:flutter/material.dart';
import 'package:medical_health_app/main.dart';
import 'package:medical_health_app/peresentation_layer/resources/assets_manager.dart';
import 'package:medical_health_app/peresentation_layer/resources/color_manager.dart';
import 'package:medical_health_app/peresentation_layer/resources/font_manager.dart';
import 'package:medical_health_app/peresentation_layer/resources/style_manager.dart';

class CustomSkinFirst extends StatelessWidget {
 final String imageAsset;
 final Color textColor;
   const CustomSkinFirst({
    super.key, required this.imageAsset,required this.textColor
  });

  @override
  Widget build(BuildContext context) {
    screenSize=MediaQuery.of(context).size;
    return Container(
      width: screenSize.width*.35,
      height: screenSize.height*.4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            imageAsset,
            height: screenSize.width*.3,
            width: screenSize.width*.3,
          ),
        const  SizedBox(height: 10,),
        Container(
          
         padding: EdgeInsets.zero,
          child: Text(
          
                      'Skin \nFirst',
                      style: TextStyle(
                        height: .8,
                        color: textColor,
                        fontSize: FontSize.s48,
                        fontWeight: FontWeightManager.thin,
                        fontFamily: FontConstants.fontFamily,
                        overflow: TextOverflow.visible
                      ),
                    ),
        ),
               const   SizedBox(height: 10,),
          
          Text(
            'Dermatology center',
            style: getBoldtStyle(color: textColor,),
          ),
        ],
      ),
    );
  }
}
