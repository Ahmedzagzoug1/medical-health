import 'package:flutter/material.dart';
import 'package:medical_health_app/features/favorite/presentation/widgets/rated_item.dart';

class RatedPage extends StatelessWidget {
  const RatedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Expanded(child:  ListView.builder(
      itemCount: 10,
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return const RatedItem();
      },
    ));
  }
}