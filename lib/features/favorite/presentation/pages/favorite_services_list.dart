import 'package:flutter/material.dart';
import 'package:medical_health_app/features/favorite/presentation/widgets/custom_expansion_list.dart';

class FavoriteServicesList extends StatelessWidget {
  const FavoriteServicesList({super.key});

  @override
  Widget build(BuildContext context) {
    print('build'); 
    return  ListView.builder(
      itemCount: 10,
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return const CustomExpansionList();
      },
    );
  }
}