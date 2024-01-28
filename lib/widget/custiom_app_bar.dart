import 'package:democracy_app_sample/theme/colors.dart';
import 'package:democracy_app_sample/widget/text_theme.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.title});

  final String title;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        ),
        border: Border(
          bottom: BorderSide(
            color: dividerColor,
            width: 1.0,
          ),
        ),
      ),
      child: AppBar(
        backgroundColor: backgroundColor,
        title: TextDesign(
          text: title,
          fontSize: 18,
          textColor: Colors.white,
        ),
      ),
    );
  }
}
