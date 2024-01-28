import 'package:flutter/material.dart';

class ArrowPainter extends CustomPainter {
  final double indicatorSize;

  ArrowPainter({required this.indicatorSize});

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.fill;

    var arrowPath = Path();
    arrowPath.moveTo(size.width / 2, 2); // Top center of the canvas
    arrowPath.lineTo(size.width / 2 - indicatorSize,
        indicatorSize); // Left point of the arrow
    arrowPath.lineTo(size.width / 2 + indicatorSize,
        indicatorSize); // Right point of the arrow
    arrowPath.close();

    canvas.drawPath(arrowPath, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
