import 'package:flutter/material.dart';

class ColoredORing extends StatelessWidget {
  const ColoredORing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: CustomPaint(
          size: const Size(200, 200),
          painter: MultiColorRingPainter(),
        ),
      ),
    );
  }
}

class MultiColorRingPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final strokeWidth = 13.0;
    final rect = Rect.fromLTWH(
      strokeWidth / 2,
      strokeWidth / 2,
      size.width - strokeWidth,
      size.height - strokeWidth,
    );

    // ✅ Dynamic input
    final percentages = [15.0, 19.0, 14.0, 32.0]; // Example: You can change this
    final colors = [Color(0xFF828282),Color(0xFF6EF9BF),const Color(0xFFFFE7AD),Color(0xFFE5DBDE),];

    // 1. Total percentage used
    double totalUsed = percentages.reduce((a, b) => a + b);

    if (totalUsed > 100.0) {
      throw Exception("Total percentage exceeds 100%");
    }

    int segmentCount = percentages.length;

    // 2. Total space left for gaps
    // double totalGapDegrees = (100.0 - totalUsed) / 100 * 360;
    double totalGapDegrees = 20 / 100 * 360;
    double gapAngle = totalGapDegrees / segmentCount;

    // 3. Prepare paint
    final paint =
        Paint()
          ..strokeWidth = strokeWidth
          ..style = PaintingStyle.stroke
          ..strokeCap = StrokeCap.round;

    // double startAngle = 3.1415926535897932 / 180; // Start from top
    double startAngle = -15;
    for (int i = 0; i < segmentCount; i++) {
      double sweepAngle = (percentages[i] / 100) * 360;
      paint.color = colors[i % colors.length];

      canvas.drawArc(
        rect,
        _toRadians(startAngle),
        _toRadians(sweepAngle),
        false,
        paint,
      );

      startAngle += sweepAngle + gapAngle;
    }
  }

  double _toRadians(double degrees) => degrees * 3.1415926535897932 / 180;

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
