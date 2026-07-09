import 'package:flutter/material.dart';
import 'package:medical_health_app/core/resources/assets_manager.dart';
import 'package:medical_health_app/core/resources/color_manager.dart';
import 'package:medical_health_app/core/resources/style_manager.dart';
import 'package:medical_health_app/core/shared/presentation/shared_widgets/circle_widget.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
      child: SizedBox(
        height: 40,
        child: Row(
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage(
                AssetsManager.doctor1Image,
              ),
              radius: 40,
            ),
            Column(
              children: [
                Text(
                  'Hi, WelcomeBack',
                  style: getMediumStyle(
                    color: ColorManager.primary,
                  ),
                ),
                Text(
                  'John Doe',
                  style: getRegularStyle(color: ColorManager.black),
                ),
              ],
            ),
            const Spacer(),
          const  Badge(
              backgroundColor: ColorManager.primary,
              child: CircleWidget(
                widget: Badge(backgroundColor: ColorManager.primary,
                child: Icon(Icons.notifications_outlined,size: 19,color: ColorManager.black,),
                ),redius: 15,
              )
              
            ),


            
            const SizedBox(
              width: 10,
            ),
           const CircleWidget(
              backgroundColor: ColorManager.blue2,
              redius: 15,
              widget:Icon( Icons.settings,size:19,color: ColorManager.black,) ,
            ),
          ],
        ),
      ),
    );
  }
}
