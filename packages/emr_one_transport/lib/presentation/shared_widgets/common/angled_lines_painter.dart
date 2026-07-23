import 'dart:math' as math;

import 'package:flutter/material.dart';


/// A custom painter that draws angled lines inside a rectangular area.
/// You can control:
/// - strokeAngle: the angle (in degrees) for the lines.
/// - strokeGap: the gap between consecutive lines.
/// - strokeWidth: the thickness of each line.
/// - strokeColor: the color of the lines.
class AngledLinesPainter extends CustomPainter {
  AngledLinesPainter({
    required this.strokeAngle,
    required this.strokeGap,
    required this.strokeWidth,
    required this.strokeColor,
  });
  final double strokeAngle;
  final double strokeGap;
  final double strokeWidth;
  final Color strokeColor;

  @override
  void paint(Canvas canvas, Size size) {
    // Clip the drawing to the bounds of the area.
    canvas.save();
    canvas.clipRect(Offset.zero & size);

    // Convert the angle from degrees to radians.
    final angleRad = strokeAngle * math.pi / 180;

    // Create a unit direction vector from the angle.
    final d = Offset(math.cos(angleRad), math.sin(angleRad));

    // Create a unit normal (perpendicular) vector to 'd'.
    final n = Offset(-math.sin(angleRad), math.cos(angleRad));

    // Calculate the diagonal of the area to ensure the lines are long enough.
    final diag = math.sqrt(size.width * size.width + size.height * size.height);

    // Determine the projection range of the area’s corners along the 
    //normal vector.
    final projections = <double>[
      n.dx * 0 + n.dy * 0, // Top-left (0, 0)
      n.dx * size.width + n.dy * 0, // Top-right (width, 0)
      n.dx * 0 + n.dy * size.height, // Bottom-left (0, height)
      n.dx * size.width + n.dy * size.height, // Bottom-right (width, height)
    ];
    final minProj = projections.reduce(math.min);
    final maxProj = projections.reduce(math.max);

    // Set up the paint for the lines using the provided stroke width and color.
    final linePaint = Paint()
      ..color = strokeColor
      ..strokeWidth = strokeWidth;

    // Draw lines across the range with the desired gap.
    for (var offset = minProj - strokeGap;
        offset < maxProj + strokeGap;
        offset += strokeGap) {
      // Compute the base point on the line for the given offset.
      final base = Offset(n.dx * offset, n.dy * offset);
      // Extend the line in both directions.
      final start = base - d * diag;
      final end = base + d * diag;
      canvas.drawLine(start, end, linePaint);
    }

    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
