import 'package:democracy_app_sample/pages/drawer_menu_screen.dart';
import 'package:democracy_app_sample/pages/dropdown_screen.dart';
import 'package:democracy_app_sample/pages/edit_profile_screen.dart';
import 'package:democracy_app_sample/pages/profile_screen.dart';
import 'package:democracy_app_sample/pages/spin_wheel.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: Size(360, 800),
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primaryColor: Color.fromARGB(255, 166, 216, 0),
          ),
          home: SpinWheelScreen(),
        );
      },
    );
  }
}
