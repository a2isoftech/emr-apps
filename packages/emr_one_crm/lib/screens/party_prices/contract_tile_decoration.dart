// https://stackoverflow.com/questions/57538938/flutter-paint-a-top-right-triangle-with-a-text-on-a-card

import 'package:flutter/material.dart';

class ContractTileDecoration extends Decoration {
  const ContractTileDecoration({required this.colour, required this.size});
  final Color colour;
  final double size;

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) =>
      _ContractTileDecorationPainter(colour, size);
}

class _ContractTileDecorationPainter extends BoxPainter {
  _ContractTileDecorationPainter(this.colour, this.size);
  final Color colour;
  final double size;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    canvas.save();
    canvas.translate(offset.dx, offset.dy);
    canvas.drawPath(getDecorationPath(), getDecorationPaint());
    canvas.restore();
  }

  Paint getDecorationPaint() => Paint()
    ..isAntiAlias = true
    ..color = colour;

  Path getDecorationPath() => Path()
    ..lineTo(size, 0)
    ..lineTo(0, size)
    ..close();
}
