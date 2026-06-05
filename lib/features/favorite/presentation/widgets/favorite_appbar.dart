
import 'package:flutter/material.dart';
import 'package:medical_health_app/core/resources/assets_manager.dart';
import 'package:medical_health_app/core/resources/color_manager.dart';
import 'package:medical_health_app/core/resources/font_manager.dart';
import 'package:medical_health_app/core/resources/style_manager.dart';

class FavoriteAppbar extends StatelessWidget {
  final String title;

  const FavoriteAppbar({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: ColorManager.primary,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        const Spacer(),
        Text(
          title,
          style: getSemiBoldStyle(
              color: ColorManager.primary, fontSize: FontSize.s24),
        ),
        const Spacer(),
        Row(children: 
         [CircleAvatar(backgroundColor: ColorManager.blue2, child: Image.asset(AssetsManager.searchIcon)),
          const SizedBox(width: 4),
CircleAvatar(backgroundColor: ColorManager.blue2, child: Image.asset(AssetsManager.changeIcon)),    
  ],
        )]
    );
  }
}