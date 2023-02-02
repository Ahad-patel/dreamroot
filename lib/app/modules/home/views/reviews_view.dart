import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ReviewsView extends GetView {
  const ReviewsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var names = ['Andrews Jettpace','Stacy Stone'];
    return Scaffold(
      // backgroundColor:  NeumorphicColors.background,
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 5.w,vertical: 3.h),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Reviews',style: Get.textTheme.headline4!.copyWith(fontWeight: FontWeight.bold,color: Colors.white),),
                        SizedBox(height: 1.h,),
                        Text('Patients reviews on doctors.',style: Get.textTheme.subtitle1!.copyWith(color: Colors.white),),
                      ],
                    ),
                  Image.asset('assets/icon1.png',height: 8.h,),
                ],
              ),

              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: names.length,
                  itemBuilder: (context,index) {
                    return Container(
                      padding: EdgeInsets.all(3.h),
                      margin: EdgeInsets.symmetric(vertical: 1.5.h),
                      decoration: BoxDecoration(
                        color: Get.theme.colorScheme.background,
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                  radius: 6.h,
                                  foregroundImage: AssetImage('assets/rev${index+1}.png')),
                              SizedBox(width: 2.h,),

                              Expanded(
                                child: Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur tempus urna at turpis condimentum lobortis. Ut commodo efficitur neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum.',
                                  style: Get.textTheme.caption!.copyWith(fontSize: 12,fontWeight: FontWeight.w300),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  padding: EdgeInsets.symmetric(vertical: 1.h,horizontal: 2.5.h),
                                  decoration: BoxDecoration(
                                      color: Get.theme.colorScheme.tertiary,
                                      borderRadius: BorderRadius.circular(30)
                                  ),
                                  child: Text('4.5',style: Get.textTheme.bodyText2!.copyWith(fontWeight: FontWeight.bold, color: Colors.white),)),
                              Text(names[index],style: Get.textTheme.subtitle1!.copyWith(fontWeight: FontWeight.bold),),
                            ],
                          )
                        ],
                      ),
                    );
                  }
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
