import 'package:flutter/material.dart';

class PercentageFillContainer extends StatelessWidget {
  const PercentageFillContainer({
    required this.percentage,
    required this.color,
    super.key,
    this.child,
  });
  final double percentage; // 0.0 → 1.0
  final Color color;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          fit: StackFit.expand,
          children: [
            // Filled portion — anchored to the left edge
            Positioned(
              top: 0,
              bottom: 0,
              left: 0,
              width: constraints.maxWidth * percentage.clamp(0.0, 1.0),
              child: ColoredBox(color: color),
            ),

            if (child != null) child!,
          ],
        );
      },
    );
  }
}
