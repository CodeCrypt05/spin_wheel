import 'package:democracy_app_sample/theme/colors.dart';
import 'package:democracy_app_sample/utils/constants.dart';
import 'package:democracy_app_sample/widget/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg_flutter.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.label,
    this.ic,
    this.backgroundColor,
    this.borderColor,
    this.borderRaduis,
    this.boderWidth,
    required this.height,
    required this.width,
  });

  final String label;
  final String? ic;
  final Color? backgroundColor;
  final Color? borderColor;
  final double? borderRaduis;
  final double? boderWidth;
  final int height;
  final int width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height.h,
      width: width.w,
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.all(color: borderColor!, width: boderWidth!),
        borderRadius: BorderRadius.circular(borderRaduis!),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            ic!,
            fit: BoxFit.cover,
            height: 18,
            width: 18,
          ),
          const SizedBox(width: 4),
          TextDesign(
            text: label,
            fontSize: 14,
            fontWeight: FontWeight.w600,
            textColor: purpleColor,
          )
        ],
      ),
    );
  }
}
