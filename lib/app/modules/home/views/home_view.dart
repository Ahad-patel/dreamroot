import 'package:dreamroots/app/modules/home/views/reviews_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var names = ['Dr. Nancy Stevens','Dr. Derrick Malone','Dr. Meghan Stella'];
    return Scaffold(
      backgroundColor:  NeumorphicColors.background,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: names.length,
              itemBuilder: (context,index) {
                return GestureDetector(
                  onTap: () => Get.to(() => ReviewsView()),
                  child: Neumorphic(
                    padding: EdgeInsets.all(2.h),
                    margin: EdgeInsets.all(2.h),
                    style: NeumorphicStyle(boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(30))),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                 height: 15.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    gradient: LinearGradient(
                                      colors: [
                                        Get.theme.colorScheme.primary ,
                                        NeumorphicColors.background
                                      ]
                                    )
                                  ),
                                  padding: EdgeInsets.all(0.75.h),
                                  child: Row(
                                    children: [
                                      ClipRRect(
                                          borderRadius: BorderRadius.circular(15),
                                          child: Image.asset('assets/img${index+ 1}.png')),
                                      Padding(
                                        padding:  EdgeInsets.symmetric(horizontal: 4.w),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(names[index],style: Get.textTheme.subtitle1!.copyWith(fontWeight: FontWeight.bold),),
                                            SizedBox(height: 1.h,),
                                            Text('BDS, MDS',style: Get.textTheme.bodyText2!.copyWith(fontWeight: FontWeight.bold,color: Get.theme.disabledColor),),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )),
                            ),
                            SizedBox(width: 5.w ,),
                            Icon(Icons.more_horiz)
                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [

                            Container(

                              padding: EdgeInsets.all(0.75.h),
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(20)
                              ),
                                child: Row(
                                  children: [
                                    Icon(Icons.access_time,color: Get.theme.primaryColor,),

                                    Text('09:00 am - 06:30 pm',style: Get.textTheme.caption!.copyWith(color: Get.theme.primaryColor,fontWeight: FontWeight.bold),).paddingOnly(left: 2.w,right: 4.w),
                                  ],
                                )),

                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                elevation: 5,
                                shadowColor: Get.theme.errorColor,
                                backgroundColor: Get.theme.errorColor,
                                padding: EdgeInsets.symmetric(horizontal: 8.w),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)
                                )
                              ),
                              child: Text('Book'),),
                          ],
                        )

                      ],
                    ),
                  ),
                );
              }
            ),
          ),
        ],
      ),
    );
  }
}