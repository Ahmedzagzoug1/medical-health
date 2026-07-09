import 'package:flutter/material.dart';
import 'package:medical_health_app/core/resources/assets_manager.dart';
import 'package:medical_health_app/core/resources/color_manager.dart';
import 'package:medical_health_app/core/resources/routes_manager.dart';
import 'package:medical_health_app/core/resources/style_manager.dart';
import 'package:medical_health_app/core/shared/presentation/shared_widgets/custom_text_field.dart';

class CustomSearchWidget extends StatelessWidget {
  const CustomSearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 8),
      child: Row(
        spacing: 8,
        children: [
          Column(
            children: [
                      Image.asset(AssetsManager.doctorIcon,),

              
                 Text(
                  'Doctors',
                  style: getLightStyle(color: ColorManager.primary),
                ),
              
            ],
          ),
          Column(children: [
         GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, Routes.favoriteRoute);
                },
          child: const   Icon(Icons.favorite_border, color: ColorManager.primary,size: 35,)),
            Text(
              'Favorite',
              style: getLightStyle(color: ColorManager.primary),
            ),
          ]),
          Expanded(
            child: CustomTextField(
              hint: '',
              borderRedius: 30,
              keyboardType: TextInputType.text,
              prefixIcon: CircleAvatar(
                backgroundColor: ColorManager.white,
                radius: 15,
                child: Image.asset(
                  AssetsManager.changeIcon,
                  color: ColorManager.black,
                ),
              ),
              suffixIcon: Image.asset(AssetsManager.searchIcon, color: ColorManager.primary),
            ),
          ),
        ],
      ),
    );
  }
}

