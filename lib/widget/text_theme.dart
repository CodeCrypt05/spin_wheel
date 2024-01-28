import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TextDesign extends StatelessWidget {
  const TextDesign({
    super.key,
    required this.text,
    required this.fontSize,
    this.textColor,
    this.fontWeight,
  });

  final String text;
  final double fontSize;
  final Color? textColor;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        fontSize: fontSize.sp,
        fontWeight: fontWeight,
        color: textColor,
      ),
    );
  }
}
