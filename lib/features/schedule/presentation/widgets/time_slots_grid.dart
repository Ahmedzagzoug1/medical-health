import 'package:flutter/material.dart';
import 'package:medical_health_app/core/resources/color_manager.dart';
import 'package:medical_health_app/core/resources/style_manager.dart';

class TimeSlotsGrid extends StatelessWidget {
  final String selectedTime;
  final ValueChanged<String> onTimeSelected;

  const TimeSlotsGrid({
    super.key,
    required this.selectedTime,
    required this.onTimeSelected,
  });

  @override
  Widget build(BuildContext context) {
    // List of time slots matching the screenshot layout
    final List<Map<String, dynamic>> slots = [
      {'time': '9:00 AM', 'status': 'available'},
      {'time': '9:30 AM', 'status': 'available'},
      {'time': '10:00 AM', 'status': 'available'},
      {'time': '10:30 AM', 'status': 'available'},
      {'time': '11:00 AM', 'status': 'available'},
      {'time': '11:30 AM', 'status': 'unavailable'},
      {'time': '12:00 PM', 'status': 'available'},
      {'time': '12:30 PM', 'status': 'available'},
      {'time': '1:00 PM', 'status': 'unavailable'},
      {'time': '1:30 PM', 'status': 'unavailable'},
      {'time': '2:00 PM', 'status': 'available'},
      {'time': '2:30 PM', 'status': 'unavailable'},
      {'time': '3:00 PM', 'status': 'unavailable'},
      {'time': '3:30 PM', 'status': 'available'},
      {'time': '4:00 PM', 'status': 'available'},
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Available Time',
            style: getBoldtStyle(color: ColorManager.primary, fontSize: 16),
          ),
          const SizedBox(height: 12),
          Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            alignment: WrapAlignment.start,
            children: slots.map((slot) {
              final String time = slot['time'];
              final String status = slot['status'];
              final bool isSelected = time == selectedTime;
              final bool isAvailable = status == 'available';

              Color bg;
              Color textCol;
              BoxBorder? border;

              if (isSelected) {
                bg = ColorManager.primary;
                textCol = ColorManager.white;
              } else if (isAvailable) {
                bg = ColorManager.white;
                textCol = ColorManager.primary;
                border = Border.all(color: ColorManager.blue2);
              } else {
                // Booked/Unavailable slots
                bg = ColorManager.textFieldBackgroundColor;
                textCol = ColorManager.black.withOpacity(0.5);
              }

              return GestureDetector(
                onTap: () {
                  if (isAvailable) {
                    onTimeSelected(time);
                  }
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                    color: bg,
                    border: border,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    time,
                    style: getMediumStyle(
                      color: textCol,
                      fontSize: 12,
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
          const SizedBox(height: 16),
          const Divider(color: ColorManager.blue2, thickness: 1),
        ],
      ),
    );
  }
}
