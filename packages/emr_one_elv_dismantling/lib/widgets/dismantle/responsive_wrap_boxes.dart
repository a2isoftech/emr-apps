import 'package:emr_one_core/eo_constants.dart';
import 'package:flutter/material.dart';

class ResponsiveWrapBoxes extends StatefulWidget {
  const ResponsiveWrapBoxes({
    required this.children,
    super.key,
  });
  final List<Widget> children;

  @override
  State<ResponsiveWrapBoxes> createState() => _ResponsiveWrapBoxesState();
}

class _ResponsiveWrapBoxesState extends State<ResponsiveWrapBoxes> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Calculate number of items per row based on screen width
        final itemsPerRow =
            (constraints.maxWidth / (constraints.maxWidth > 2000 ? 200 : 150))
                .round();

        final totalWidth = constraints.maxWidth;
        final containerWidth =
            (totalWidth - ((itemsPerRow - 1) * 8)) / itemsPerRow;

        return Wrap(
          spacing: Insets.gutter / 2,
          runSpacing: Insets.gutter / 2,
          children: widget.children.map((child) {
            return SizedBox(
              width: containerWidth,
              height: containerWidth * 0.7,
              child: child,
            );
          }).toList(),
        );
      },
    );
  }
}
