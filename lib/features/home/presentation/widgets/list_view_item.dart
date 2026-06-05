import 'package:flutter/material.dart';
import 'package:medical_health_app/core/resources/assets_manager.dart';
import 'package:medical_health_app/core/resources/color_manager.dart';
import 'package:medical_health_app/core/resources/style_manager.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: ColorManager.blue2
      ),
      child:  Padding(
        padding: const EdgeInsets.all(8.0),
        child:Row(
          spacing: 20,
          children: [

        const  Flexible(
            flex: 1,
            child: CircleAvatar(backgroundImage: 
            AssetImage(AssetsManager.doctor1Image,),radius: 40,),
          ),
          Flexible(
            flex: 3,
            child: Column(
              spacing: 5,
              children: [
              Flexible(
                
                flex: 2,
                child: Container(decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: ColorManager.white
                ),
                child:Padding(padding: const EdgeInsets.only(left: 16),
                child:  Column(

                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                               Text('Dr. Ahmed Mohamed',style: getBoldtStyle(color: ColorManager.primary),
                               textAlign: TextAlign.left,),
                               Text('Cardiologist',style: getRegularStyle(color: ColorManager.black2),),
                
                ]))
                ),
              ),
              Flexible(
                flex: 1,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  spacing: 5,
                  children: [
                Container(decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: ColorManager.white
                ),child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    spacing: 5,
                    children: [
                      const Icon(Icons.star,color: ColorManager.primary,size: 10,),
                  
                      Text('4.5',style: getBoldtStyle(color: ColorManager.primary),),
                    ]
                  ),
                ),)  ,
                Container(decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: ColorManager.white
                ),child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    spacing: 5,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Icon(Icons.comment_rounded,color: ColorManager.primary,size: 10,),
                  
                      Text('60',style: getBoldtStyle(color: ColorManager.primary),),
                    ]
                  ),
                ),) ,
                const Spacer(),               
                Container(decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: ColorManager.white
                ),child: IconButton(
                  onPressed: (){}, 
                  icon: const Icon(Icons.question_mark_rounded,color: ColorManager.primary,size: 16,),
                )),
                    Container(decoration:const BoxDecoration(
                  shape: BoxShape.circle,
                  color: ColorManager.white
                ),child: IconButton(
                  onPressed: (){}, 
                  icon: const Icon(Icons.favorite,color: ColorManager.primary,size: 16,),
                )),                           
                  ],
                ),
              )
            ]),
          )
        ]),
      ),
    );
  }
}