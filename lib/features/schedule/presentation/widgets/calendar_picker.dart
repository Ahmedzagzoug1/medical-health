import 'package:flutter/material.dart';
import 'package:medical_health_app/core/resources/color_manager.dart';
import 'package:medical_health_app/core/resources/style_manager.dart';

class CalendarPicker extends StatelessWidget {
  final DateTime selectedDate;
  final ValueChanged<DateTime> onDateChanged;

  const CalendarPicker({
    super.key,
    required this.selectedDate,
    required this.onDateChanged,
  });

  @override
  Widget build(BuildContext context) {
    // Generate dates matching July 22 to July 27
    final List<DateTime> dates = List.generate(
      6,
      (index) => DateTime(2026, 7, 22 + index),
    );

    final List<String> weekdays = ['MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT'];

    return Container(
      color: ColorManager.blue2.withOpacity(0.3),
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Month',
                style: getMediumStyle(color: ColorManager.primary, fontSize: 16),
              ),
              const Icon(
                Icons.keyboard_arrow_down,
                color: ColorManager.primary,
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              const Icon(
                Icons.arrow_back_ios_new,
                color: ColorManager.primary,
                size: 18,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: SizedBox(
                  height: 70,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: dates.length,
                    itemBuilder: (context, index) {
                      final date = dates[index];
                      final isSelected = date.day == selectedDate.day;
                      // Match screenshot: 24 is selected, 25 is available, others are faded/unselected.
                      final isAvailable = date.day == 24 || date.day == 25;

                      return GestureDetector(
                        onTap: () {
                          if (isAvailable) {
                            onDateChanged(date);
                          }
                        },
                        child: Container(
                          width: 50,
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          decoration: BoxDecoration(
                            color: isSelected
                                ? ColorManager.primary
                                : ColorManager.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.05),
                                blurRadius: 4,
                                offset: const Offset(0, 2),
                              )
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                date.day.toString(),
                                style: getBoldtStyle(
                                  fontSize: 18,
                                  color: isSelected
                                      ? ColorManager.white
                                      : (isAvailable
                                          ? ColorManager.black
                                          : ColorManager.TextFieldHintColor),
                                ),
                              ),
                              const SizedBox(height: 2),
                              Text(
                                weekdays[index],
                                style: getRegularStyle(
                                  fontSize: 10,
                                  color: isSelected
                                      ? ColorManager.white
                                      : ColorManager.TextFieldHintColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(width: 8),
              const Icon(
                Icons.arrow_forward_ios,
                color: ColorManager.primary,
                size: 18,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
