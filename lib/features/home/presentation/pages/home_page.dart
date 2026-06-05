import 'package:flutter/material.dart';
import 'package:medical_health_app/core/resources/assets_manager.dart';
import 'package:medical_health_app/core/resources/color_manager.dart';
import 'package:medical_health_app/features/home/presentation_layer/widgets/custom_appbar.dart' show CustomAppBar;
import 'package:medical_health_app/features/home/presentation_layer/widgets/custom_search_widget.dart';
import 'package:medical_health_app/features/home/presentation_layer/widgets/custom_time_line.dart';
import 'package:medical_health_app/features/home/presentation_layer/widgets/list_view_item.dart';
import 'package:medical_health_app/main.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    screenSize=MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            height: 60,
            margin: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
                      color: ColorManager.primary,
          
              borderRadius: BorderRadius.circular(32),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                 Image.asset(AssetsManager.homeIcon,),
                  Image.asset(AssetsManager.messageIcon,), 
               Image.asset(AssetsManager.profileIcon,),
                                 Image.asset(AssetsManager.calenderIcon,),

              ],
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
        const  CustomAppBar(),
       const   CustomSearchWidget(),
         const CustomTimeLine(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: SizedBox(
              height: screenSize.height*.4,
              child: ListView.builder(
                            itemBuilder: (context, index) => const ListViewItem(),
                            itemCount: 10,
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                          ),
            ),
          )
        ],
      ),
    );
  }
}

