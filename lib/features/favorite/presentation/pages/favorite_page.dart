import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_health_app/core/resources/color_manager.dart';
import 'package:medical_health_app/core/resources/style_manager.dart';
import 'package:medical_health_app/features/favorite/presentation_layer/controller/cubits/pages_cubit/pages_cubit.dart';
import 'package:medical_health_app/features/favorite/presentation_layer/controller/cubits/pages_cubit/pages_states.dart';
import 'package:medical_health_app/features/favorite/presentation_layer/pages/doctor_gender_list.dart';
import 'package:medical_health_app/features/favorite/presentation_layer/pages/favorite_doctors_list.dart';
import 'package:medical_health_app/features/favorite/presentation_layer/pages/favorite_list.dart';
import 'package:medical_health_app/features/favorite/presentation_layer/pages/rated_page.dart';
import 'package:medical_health_app/features/favorite/presentation_layer/pages/sorted_doctor_list.dart';
import 'package:medical_health_app/features/favorite/presentation_layer/widgets/favorite_appbar.dart';
import 'package:medical_health_app/core/shared_widgets/circle_widget.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(24.0),
            child: BlocBuilder<PagesCubit, PagesStates>(
              builder: (context, state) {
                return Column(children: [
                  FavoriteAppbar(
                    title: BlocProvider.of<PagesCubit>(context).title ??
                        'Favorite',
                  ),
                  Row(spacing: 8,
                    children: [
                    const Text('Sorted by'),
                    GestureDetector(
                      onTap: () {
                        BlocProvider.of<PagesCubit>(context).moveToSortedPage();
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color:   state is SortedState ? ColorManager.primary : ColorManager.blue2,
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding:const  EdgeInsets.all(8.0),
                          child:  Align(
                            alignment: Alignment.center,
                            child: Text('A - Z',
                            style:getBoldtStyle(color: 
                            state is SortedState ? ColorManager.white : ColorManager.primary) ,),
                          ),
                        ),
                      ),
                    ),
                    _circleIcon(state is RatedState ? Icons.star: Icons.star_border,
                    
                     () {
                      BlocProvider.of<PagesCubit>(context).moveToRatedPage();
                    
                    },state is RatedState,), 
                      _circleIcon(state is DoctorsFavoriteState ? Icons.favorite: Icons.favorite_border, () {
                      BlocProvider.of<PagesCubit>(context).moveToFavoriteDoctorsPage();
                                            print('state');

                    },state is DoctorsFavoriteState,),
                       _circleIcon(Icons.male, () {
                      BlocProvider.of<PagesCubit>(context).moveToMalePage();
                    },                    state is MaleState), 
                      _circleIcon(Icons.female, () {
                      BlocProvider.of<PagesCubit>(context).moveToFemalePage();
                    
                    },                    state is FemaleState,
),
            
                  ]),
                  BlocBuilder<PagesCubit, PagesStates>(
                      builder: (context, state) {
                    switch (state) {
                      case SortedState():
                        return const SortedDoctorList();
                      case RatedState():
                        return const RatedPage();
                      case MaleState():
                        return const DoctorGenderList(gender: 'male',);
                      case FemaleState():
                        return const DoctorGenderList(gender: 'female',);
                      case DoctorsFavoriteState():
                        return const FavoriteList();
                        case ServicesFavoriteState():
                        return const FavoriteList();

                      default:
                        return const SortedDoctorList();
                    }
                  })
                ]);
              },
            )),
      

    );



}
  _circleIcon(icon, onTap ,bool isSelected) {
  return  GestureDetector(
        onTap: onTap,
        child: CircleWidget(
          
          widget: Icon(icon , color: isSelected ? ColorManager.white : ColorManager.primary,),
          backgroundColor: isSelected ? ColorManager.primary : ColorManager.blue2,
          redius: 20,
        ));
  }
  }