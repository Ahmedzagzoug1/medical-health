import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_health_app/core/resources/color_manager.dart';
import 'package:medical_health_app/core/resources/style_manager.dart';
import 'package:medical_health_app/core/shared_widgets/custom_button.dart';
import 'package:medical_health_app/features/favorite/presentation/bloc/pages_cubit/pages_cubit.dart';
import 'package:medical_health_app/features/favorite/presentation/bloc/pages_cubit/pages_states.dart';
import 'package:medical_health_app/features/favorite/presentation/pages/favorite_doctors_list.dart';
import 'package:medical_health_app/features/favorite/presentation/pages/favorite_services_list.dart';
import 'package:medical_health_app/main.dart';

class FavoriteList extends StatelessWidget {
  const FavoriteList({super.key});

  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    return BlocBuilder<PagesCubit, PagesStates>(
      builder: (context, state) {
        print('$state');
        return Column(
          children: [
            SizedBox(
              height: screenSize.height * .1,
              child: Row(
                children: [
                  CustomButton(
                    title: 'Doctors',
                    onTap: () {
                      if (state is DoctorsFavoriteState) return;
                      BlocProvider.of<PagesCubit>(context)
                          .moveToFavoriteDoctorsPage();
                    },
                    color: state is DoctorsFavoriteState
                        ? ColorManager.white
                        : ColorManager.primary,
                    backgroundColor: state is DoctorsFavoriteState
                        ? ColorManager.primary
                        : ColorManager.blue2,
                    width: screenSize.width * .3,
                  ),
                  SizedBox(width: 8),
                  CustomButton(
                    title: 'Services',
                    onTap: () {
                      if (state is ServicesFavoriteState) return;
                      BlocProvider.of<PagesCubit>(context)
                          .moveToFavoriteServicesPage();
                    },
                    color: state is ServicesFavoriteState
                        ? ColorManager.white
                        : ColorManager.primary,
                    backgroundColor: state is ServicesFavoriteState
                        ? ColorManager.primary
                        : ColorManager.blue2,
                    width: screenSize.width * .3,
                  ),
                ],
              ),
            ),
            SizedBox(width: 8),
            SizedBox(
                height: screenSize.height * .6,
                child: (state is ServicesFavoriteState)
                    ? const FavoriteServicesList()
                    : const FavoriteDoctorsList())
          ],
        );
      },
    );
  }
}
