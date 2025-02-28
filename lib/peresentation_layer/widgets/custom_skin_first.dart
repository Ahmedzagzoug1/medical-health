import 'package:flutter/material.dart';
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
/*************  ✨ Codeium Command ⭐  *************/
  /// Build a widget that displays the logo of the app.
  ///
  /// The widget is a column with three children: an image of the logo, a text widget
  /// displaying 'Skin First', and a text widget displaying 'Dermatology center'.
  ///
  /// The logo is displayed with a height and width of 100.
  ///
  /// The 'Skin First' text is displayed with a height of 150 and a font size of 48.
  ///
  /// The 'Dermatology center' text is displayed with a font size of 16.
  ///
  /// The color of the text is determined by the [textColor] property of the widget.
  ///
  /// The font style of the text is determined by the [FontWeightManager.thin] and
  /// [FontConstants.fontFamily] constants.
/******  45a88610-0298-4131-a8c2-35c99112290d  *******/
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(
          imageAsset,
          height: 100,
          width: 100,
        ),
        SizedBox(height: 10,),
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
                
        
        Text(
          'Dermatology center',
          style: getBoldtStyle(color: ColorManager.white,fontSize: FontSize.s16),
        ),
      ],
    );
  }
}
