import 'package:democracy_app_sample/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class SvgScreen extends StatelessWidget {
  const SvgScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(16, 19, 27, 1),
      body: Column(
        children: [
          SizedBox(
            height: 233.h,
            width: double.infinity,
            child: SvgPicture.asset(
              drawerBackgroundImg,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
