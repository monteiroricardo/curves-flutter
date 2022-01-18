import 'package:flutter/material.dart';

class DiagonalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double height = size.height;
    final double width = size.width;

    final path = Path();

    path.lineTo(0, height * 0.5);
    path.quadraticBezierTo(50, 100, width, 0);
    path.lineTo(0, 0);
    path.close();

    final paint = Paint();
    paint.color = Colors.blueAccent;
    paint.style = PaintingStyle.fill;
    paint.strokeCap = StrokeCap.round;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

/*
  path.lineTo(0, height * 0.4);
    path.quadraticBezierTo(width * 0.5, height * 0.6, width, height * 0.4);
    path.lineTo(width, 0);
    path.lineTo(0, 0);
 */