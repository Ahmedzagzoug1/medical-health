import 'package:flutter/material.dart';
import 'package:medical_health_app/core/resources/color_manager.dart';
import 'package:medical_health_app/features/schedule/presentation/widgets/calendar_picker.dart';
import 'package:medical_health_app/features/schedule/presentation/widgets/schedule_app_bar.dart';
import 'package:medical_health_app/features/schedule/presentation/widgets/schedule_bottom_nav_bar.dart';
import 'package:medical_health_app/features/schedule/presentation/widgets/time_slots_grid.dart';
import 'package:medical_health_app/features/schedule/presentation/widgets/patient_details_form.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({super.key});

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  DateTime _selectedDate = DateTime(2026, 7, 24); // Default to Wednesday 24th from screenshot
  String _selectedTime = '10:00 AM'; // Default to 10:00 AM from screenshot

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      appBar: const ScheduleAppBar(),
      bottomNavigationBar: const ScheduleBottomNavBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            CalendarPicker(
              selectedDate: _selectedDate,
              onDateChanged: (date) {
                setState(() {
                  _selectedDate = date;
                });
              },
            ),
            TimeSlotsGrid(
              selectedTime: _selectedTime,
              onTimeSelected: (time) {
                setState(() {
                  _selectedTime = time;
                });
              },
            ),
            const PatientDetailsForm(),
          ],
        ),
      ),
    );
  }
}
