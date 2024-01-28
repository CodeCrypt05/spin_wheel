import 'package:democracy_app_sample/theme/colors.dart';
import 'package:flutter/material.dart';

class DeviderLine extends StatelessWidget {
  const DeviderLine({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 1,
      color: dividerColor,
    );
  }
}
