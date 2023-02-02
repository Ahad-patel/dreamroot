import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context,orientation,constraints) {
        return GetMaterialApp(
          title: "Application",
          initialRoute: AppPages.INITIAL,
          getPages: AppPages.routes,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: const Color(0XFFAECD63),
            errorColor: const Color(0XFFE43F5A),
            colorScheme: ColorScheme.fromSeed(
                seedColor: const Color(0XFFAECD63),
                primary: const Color(0XFFAECD63),
                secondary: const Color(0XFFE43F5A),
                tertiary: const Color(0XFF1F4068),
                background: const Color(0XFFF3F5F9),


            )
          ),
        );
      }
    );
  }
}

