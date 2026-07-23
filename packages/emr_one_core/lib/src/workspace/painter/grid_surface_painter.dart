import 'package:emr_one_core/models/workspace/workspaces.dart';
import 'package:emr_one_core/src/workspace/workspaces.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

@internal
class GridSurfacePainter extends CustomPainter {
  const GridSurfacePainter({
    this.canvasColour = Colors.white,
    this.gridColour = const Color.fromARGB(20, 127, 127, 127),
    this.elements = const [],
    this.dragging = false,
    this.moveTarget = Offset.zero,
    this.moveSize = Size.zero,
    this.isMoveAllowed = false,
  });

  final Color canvasColour;
  final Color gridColour;
  final List<WorkspaceElementBase> elements;
  final Offset moveTarget;
  final Size moveSize;
  final bool dragging;
  final bool isMoveAllowed;

  @override
  void paint(Canvas canvas, Size size) {
    _drawBack(canvas, size);
    if (dragging) {
      _drawGrid(canvas, size);
    }
    _drawElements(canvas, size);
    if (dragging) {
      _drawTarget(canvas, size, isMoveAllowed);
    }
  }

  void _drawBack(Canvas canvas, Size size) {
    final paint = Paint()..color = canvasColour;
    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), paint);
  }

  void _drawGrid(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = gridColour
      ..strokeWidth = 2.0;
    const dx = kGridSize;
    const dy = kGridSize;

    for (var y = 0.0; y < size.height; y += dy) {
      canvas.drawLine(Offset(0, y), Offset(size.width, y), paint);
    }
    for (var x = 0.0; x < size.width; x += dx) {
      canvas.drawLine(Offset(x, 0), Offset(x, size.height), paint);
    }
  }

  void _drawElements(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color.fromARGB(100, 147, 147, 147)
      ..strokeWidth = 2.0;

    for (final e in elements) {
      canvas.drawRect(
        Rect.fromLTWH(
          e.position.dx * kGridSize,
          e.position.dy * kGridSize,
          e.size.width * kGridSize,
          e.size.height * kGridSize,
        ),
        paint,
      );
    }
  }

  void _drawTarget(Canvas canvas, Size size, bool isMoveAllowed) {
    final paint = Paint()
      ..color = isMoveAllowed
          ? const Color.fromARGB(120, 106, 199, 233)
          : const Color.fromARGB(120, 255, 0, 0)
      ..strokeWidth = 4.0;

    canvas.drawRect(
      Rect.fromLTWH(
        moveTarget.dx * kGridSize,
        moveTarget.dy * kGridSize,
        moveSize.width * kGridSize,
        moveSize.height * kGridSize,
      ),
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return this != oldDelegate;
  }
}
