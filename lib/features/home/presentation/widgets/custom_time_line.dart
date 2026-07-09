import 'package:flutter/material.dart';
import 'package:medical_health_app/core/resources/color_manager.dart';
import 'package:medical_health_app/core/resources/style_manager.dart';
import 'package:medical_health_app/core/shared/presentation/shared_widgets/circle_widget.dart';
import 'package:medical_health_app/main.dart';

class CustomTimeLine extends StatefulWidget {
  const CustomTimeLine({
    super.key,
  });

  @override
  State<CustomTimeLine> createState() => _CustomTimeLineState();
}

class _CustomTimeLineState extends State<CustomTimeLine> {
  final DateTime _selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
  List<int> days =  List.generate(7, (index) => DateTime.now().day + index);
    List<String> weekdays = ['MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT', 'SUN'];
    return Container(
        height: screenSize.height * .3,
        color: ColorManager.blue2,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 8),
          child: Column(children: [
            SizedBox(
              

              
              height: 60,
              child: ListView.builder(
                itemCount: 7,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Container(
                      width: 50,
                      decoration: BoxDecoration(
                          color: ColorManager.white,
                          borderRadius: BorderRadius.circular(24)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0,horizontal: 8),
                        child: Column(
                          children: [
                            Text(
                              days[index].toString(),
                              style: getMediumStyle(color: ColorManager.black,fontSize: 24),
                            ),
                            Text(
                              weekdays[index],
                              style: getLightStyle(color: ColorManager.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Container(
              decoration: BoxDecoration(
                color: ColorManager.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(children: [
                  Row(
                    children: [
                      Text(
                        '9 AM',
                        style: getLightStyle(color: ColorManager.primary),
                      ),
                      Column(
                        children: [
                          Text(
                            '9 AM',
                            style: getLightStyle(color: ColorManager.primary),
                          ),
                          const Divider(height: 1,),
                        ],
                      )
                    ],
                  ),
                  Row(children: [
                    Flexible(
                      flex: 1,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            '9 AM',
                            style: getLightStyle(color: ColorManager.primary),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            '9 AM',
                            style: getLightStyle(color: ColorManager.primary),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Flexible(flex: 4, child: innerContainer()),
                  ]),
                    Row(
                      children: [
                        Text(
                          '9 AM',
                          style: getLightStyle(color: ColorManager.primary),
                        ),
                    
                      ],
                    ),
                  
                ]),
              ),
            )
          ]),
        ));
  }

  Container innerContainer() {
    return Container(
                        decoration: BoxDecoration(
                            color: ColorManager.blue2,
                            borderRadius: BorderRadius.circular(16)),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8,right: 4,top: 4,bottom: 4),
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Dr. Olivia Turner, M.D.',
                                      style: getMediumStyle(color: ColorManager.primary),),
                                       Text('Treatment and prevention of skin\n and photodermatitis.'
                                                                      ,  softWrap: true,style:getLightStyle(color: ColorManager.black) ,)
                                      
                                     
                                    ],
                                  ),
                                 const Spacer(),
                               const   Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    spacing: 4,
                                    children: [ CircleWidget(
                                      widget:Icon( Icons.done,color: ColorManager.primary,size: 8),redius: 7, ),

                                  CircleWidget(widget:Icon( Icons.close,color: ColorManager.primary,size: 8,),redius: 7,
                                   ),],
                                  )
                                ],
                              ),
                            ),
                            
                      );
  }
}
