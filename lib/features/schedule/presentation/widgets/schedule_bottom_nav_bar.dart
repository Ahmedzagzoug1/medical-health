import 'package:flutter/material.dart';
import 'package:medical_health_app/core/resources/assets_manager.dart';
import 'package:medical_health_app/core/resources/color_manager.dart';

class ScheduleBottomNavBar extends StatelessWidget {
  const ScheduleBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          height: 60,
          margin: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: ColorManager.primary,
            borderRadius: BorderRadius.circular(32),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  // Return to Home
                  Navigator.pop(context);
                },
                child: Image.asset(
                  AssetsManager.homeIcon,
                  color: ColorManager.white.withOpacity(0.6),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Image.asset(
                  AssetsManager.messageIcon,
                  color: ColorManager.white.withOpacity(0.6),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Image.asset(
                  AssetsManager.profileIcon,
                  color: ColorManager.white.withOpacity(0.6),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Image.asset(
                  AssetsManager.calenderIcon,
                  color: ColorManager.white, // Selected state highlighted
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
