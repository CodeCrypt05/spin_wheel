import 'package:democracy_app_sample/widget/custom_dropdown.dart';
import 'package:flutter/material.dart';

class DropdownScreen extends StatelessWidget {
  const DropdownScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: 38,
          left: 24,
          right: 24,
        ),
        child: CustomDropdown(text: 'call to nothing'),
      ),
    );
  }
}
