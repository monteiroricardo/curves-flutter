import 'package:flutter/material.dart';

class WavePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double height = size.height;
    final double width = size.width;

    final path = Path();

    path.moveTo(0, height * 0.5);
    path.quadraticBezierTo(
        width * 0.20, height * 0.46, width * 0.40, height * 0.5);
    path.quadraticBezierTo(
        width * 0.61, height * 0.54, width * 0.82, height * 0.5);
    path.quadraticBezierTo(width * 0.90, height * 0.48, width, height * 0.47);
    path.lineTo(width, height);
    path.lineTo(0, height);
    path.close();

    final paint = Paint();
    paint.color = Colors.blueAccent;
    paint.style = PaintingStyle.fill;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
