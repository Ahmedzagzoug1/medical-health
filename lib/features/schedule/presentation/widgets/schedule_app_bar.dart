import 'package:flutter/material.dart';
import 'package:medical_health_app/core/resources/color_manager.dart';
import 'package:medical_health_app/core/resources/style_manager.dart';
import 'package:medical_health_app/core/shared/presentation/shared_widgets/circle_widget.dart';

class ScheduleAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ScheduleAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Row(
          children: [
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: const Icon(
                Icons.arrow_back_ios,
                color: ColorManager.primary,
                size: 24,
              ),
            ),
            const SizedBox(width: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: ColorManager.primary,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                'Dr. Olivia Turner, M.D.',
                style: getMediumStyle(color: ColorManager.white, fontSize: 14),
              ),
            ),
            const Spacer(),
            const CircleWidget(
              backgroundColor: ColorManager.primary,
              redius: 14,
              widget: Icon(Icons.phone, color: ColorManager.white, size: 14),
            ),
            const SizedBox(width: 4),
            const CircleWidget(
              backgroundColor: ColorManager.primary,
              redius: 14,
              widget: Icon(Icons.videocam, color: ColorManager.white, size: 14),
            ),
            const SizedBox(width: 4),
            const CircleWidget(
              backgroundColor: ColorManager.primary,
              redius: 14,
              widget: Icon(Icons.message, color: ColorManager.white, size: 14),
            ),
            const SizedBox(width: 4),
            const CircleWidget(
              backgroundColor: ColorManager.blue2,
              redius: 14,
              widget: Icon(Icons.help_outline, color: ColorManager.primary, size: 14),
            ),
            const SizedBox(width: 4),
            const CircleWidget(
              backgroundColor: ColorManager.blue2,
              redius: 14,
              widget: Icon(Icons.favorite, color: ColorManager.primary, size: 14),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
