import 'package:flutter/material.dart';
import 'package:medical_health_app/features/favorite/presentation/widgets/doctor_item.dart';

class DoctorGenderList extends StatelessWidget {
 final String gender;
  const DoctorGenderList({super.key , required this.gender});

  @override
  Widget build(BuildContext context) {
    return Expanded(child:  ListView.builder(
      itemCount: 10,
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return const DoctorItem();
      },
    ));
  }
}