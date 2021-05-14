/*
 * @Author: clingxin
 * @Date: 2021-05-14 11:13:16
 * @LastEditors: clingxin
 * @LastEditTime: 2021-05-14 13:14:25
 * @FilePath: /flutter_tfl_digit_recognizer/lib/pages/drawing_painter.dart
 */

import 'package:flutter/material.dart';
import '../utils/constants.dart';

class DrawingPainter extends CustomPainter {
  final List<Offset> points;

  DrawingPainter(this.points);

  final Paint _paint = Paint()
    ..strokeCap = StrokeCap.round
    ..color = Colors.black
    ..strokeWidth = Constants.strokeWidth;

  @override
  void paint(Canvas canvas, Size size) {
    //print(size);
    for (int i = 0; i < points.length - 1; i++) {
      if (points[i] != null && points[i + 1] != null) {
        canvas.drawLine(points[i], points[i + 1], _paint);
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
