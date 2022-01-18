import 'package:flutter/material.dart';

class StepPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;
    Paint paint = Paint();
    paint.color = Colors.blue.shade600;

    Path path = Path();
    path.moveTo(0, height * 0.61);
    path.quadraticBezierTo(15, height * 0.50, 100, height * 0.5);
    path.lineTo(width * 0.75, height * 0.50);
    path.quadraticBezierTo(width, height * 0.50, width, height * 0.37);
    path.lineTo(width, height);
    path.lineTo(0, height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
