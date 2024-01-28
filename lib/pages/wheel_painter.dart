import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:math' as math;

class WheelPainter extends CustomPainter {
  final double wheelSize;
  final List<String> labels;

  WheelPainter({
    required this.wheelSize,
    required this.labels,
  });

  @override
  void paint(Canvas canvas, Size size) {
    var segments = labels.length;
    var angle = (2 * math.pi) / segments;
    var radius = wheelSize / 2;
    var rect = Rect.fromCircle(center: Offset(radius, radius), radius: radius);
    var paint = Paint()..style = PaintingStyle.fill;

    for (int i = 0; i < segments; i++) {
      // Draw the segment
      paint.color = (i % 2 == 0) ? Colors.purple : Colors.purple[300]!;
      canvas.drawArc(rect, angle * i, angle, true, paint);

      // Text style
      TextStyle textStyle = TextStyle(
        color: Colors.white,
        fontSize: radius / 10, // Adjust the size accordingly
      );

      // Calculate the text angle and position
      double textAngle = angle * i + angle / 2;
      Offset centerOfSegment = Offset(
        radius + (radius / 2) * math.cos(textAngle),
        radius + (radius / 2) * math.sin(textAngle),
      );

      // Create a paragraph style
      ParagraphStyle paragraphStyle = ParagraphStyle(
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr,
        maxLines: 1,
      );

      // Create a text span
      TextSpan textSpan = TextSpan(
        text: labels[i],
        style: textStyle,
      );

      // Create a paragraph builder
      ParagraphBuilder paragraphBuilder = ParagraphBuilder(paragraphStyle)
        // ..pushStyle(textStyle as TextStyle)
        ..addText(labels[i]);

      // Build the paragraph
      Paragraph paragraph = paragraphBuilder.build()
        ..layout(ParagraphConstraints(width: radius));

      // Calculate the offset for the text
      // We want to draw the text in the middle of the arc, so we subtract half the width of the paragraph
      double textWidth = paragraph.width;
      Offset textOffset = centerOfSegment - Offset(textWidth / 2, 0);

      // Draw the text on the canvas
      canvas.drawParagraph(paragraph, textOffset);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
