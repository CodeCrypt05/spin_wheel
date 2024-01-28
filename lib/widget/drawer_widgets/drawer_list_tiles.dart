import 'package:democracy_app_sample/widget/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';

class DrawerListTiles extends StatelessWidget {
  const DrawerListTiles({
    super.key,
    required this.ic,
    required this.tags,
    this.color,
  });

  final String ic;
  final String tags;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16, bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset(
                ic,
                fit: BoxFit.cover,
              ),
              const SizedBox(width: 16),
              TextDesign(
                text: tags,
                fontSize: 16,
                textColor: color,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: color,
            size: 14,
          )
        ],
      ),
    );
  }
}
