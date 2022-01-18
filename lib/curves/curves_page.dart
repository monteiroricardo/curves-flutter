import 'package:curves/curves/painters/wave_painter.dart';
import 'package:flutter/material.dart';

class CurvesPage extends StatefulWidget {
  const CurvesPage({Key? key}) : super(key: key);

  @override
  State<CurvesPage> createState() => _CurvesPageState();
}

class _CurvesPageState extends State<CurvesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Spacer(),
          CustomPaint(
            size: Size(
              MediaQuery.of(context).size.width,
              MediaQuery.of(context).size.height,
            ),
            painter: WavePainter(),
          ),
        ],
      ),
    );
  }
}
