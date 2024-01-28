import 'package:democracy_app_sample/theme/colors.dart';
import 'package:democracy_app_sample/utils/constants.dart';
import 'package:democracy_app_sample/widget/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.label,
    this.prefixIc,
    this.suffixIc,
    this.controller,
    this.textInputType,
    this.prefixText,
  });

  final String label;
  final String? prefixIc;
  final String? suffixIc;
  final TextEditingController? controller;
  final TextInputType? textInputType;
  final String? prefixText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: textFieldBoderColor,
          width: 1,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          prefixIc == null
              ? Container()
              : SvgPicture.asset(
                  prefixIc!,
                  fit: BoxFit.cover,
                ),
          const SizedBox(width: 10),
          Expanded(
            child: TextFormField(
              controller: controller,
              decoration: InputDecoration(
                hintText: label,
                hintStyle: const TextStyle(color: subTextColor),
                border: InputBorder.none,
              ),
              keyboardType: textInputType,
              style: const TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(width: 10),
          suffixIc == null
              ? Container()
              : SvgPicture.asset(
                  suffixIc!,
                  fit: BoxFit.cover,
                ),
        ],
      ),
    );
  }
}
