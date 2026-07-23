import 'package:emr_one_core/eo_constants.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

@internal
class ElementContainer extends StatelessWidget {
  const ElementContainer({
    required this.child,
    required this.backgroundColour,
    super.key,
  });

  final Widget child;
  final Color backgroundColour;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Insets.gutter / 4),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: <Color>[
            backgroundColour.lighten(20),
            backgroundColour.darken(30),
          ],
          transform: const GradientRotation(0.985398163),
        ),
      ),
      padding: const EdgeInsets.all(2),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Insets.gutter / 4),
          color: backgroundColour, // Default background color
        ),
        padding: const EdgeInsets.all(Insets.gutter / 2),
        child: child,
      ),
    );
  }
}
