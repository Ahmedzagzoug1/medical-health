import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_health_app/core/resources/color_manager.dart';
import 'package:medical_health_app/core/resources/style_manager.dart';
import 'package:medical_health_app/features/favorite/presentation/bloc/pages_cubit/pages_cubit.dart';
import 'package:medical_health_app/features/favorite/presentation/bloc/pages_cubit/pages_states.dart';
import 'package:medical_health_app/features/favorite/presentation/widgets/doctor_item.dart';
import 'package:medical_health_app/features/favorite/presentation/widgets/doctor_item_favorite.dart';

class FavoriteDoctorsList extends StatelessWidget {
  const FavoriteDoctorsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
          itemCount: 10,
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
    return DoctorItemFavorite();
          },
        );
  }
}
