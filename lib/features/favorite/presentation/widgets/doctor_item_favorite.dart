import 'package:flutter/material.dart';
import 'package:medical_health_app/core/resources/assets_manager.dart';
import 'package:medical_health_app/core/resources/color_manager.dart';
import 'package:medical_health_app/core/resources/style_manager.dart';
import 'package:medical_health_app/core/shared_widgets/circle_widget.dart';
import 'package:medical_health_app/core/shared_widgets/custom_button.dart';
import 'package:medical_health_app/main.dart';

class DoctorItemFavorite extends StatelessWidget {
  const DoctorItemFavorite({super.key});

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
                    image: AssetImage(
                      AssetsManager.doctor1Image,
                    ),
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
                    child: Row(spacing: 8, children: [
                       CircleWidget(
                        widget: Image.asset(AssetsManager.itemList,height: 20,),
                        backgroundColor: ColorManager.primary,
                        redius: 15,
                      ),
                      Text(
                        'Professional Doctor',
                        style: getRegularStyle(color: ColorManager.primary),
                      ),
                    ]),
                  ),
                  Container(
                    width: screenSize.width * .6,
                    decoration: BoxDecoration(
                        color: ColorManager.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                'Dr. Olivia Turner, M.D.',
                                style: getRegularStyle(
                                    color: ColorManager.primary),
                              ),
                              Text(
                                'Dermato-Endocrinology',
                                style: getLightStyle(color: ColorManager.black),
                              ),
                            ],
                          ),
                         const Center(
                              child: Icon(
                            Icons.favorite,
                            color: ColorManager.primary,
                            size: 35,
                          )),
                        ],
                      ),
                    ),
                  ),
            CustomButton(title: 'Make Appointment', onTap: (){}, color: ColorManager.white,
             backgroundColor: ColorManager.primary,textStyle: getLightStyle(color: Colors.white),)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
