import 'package:flutter/material.dart';

/// This widget provides default header cell for showing a simple text value in
/// bold. If the grid supports sorting use [EmrSortableGridHeader] instead.
class EmrGridHeader extends StatelessWidget {
  const EmrGridHeader({
    required this.text,
    super.key,
    this.textAlign = TextAlign.left,
  });

  final String text;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    if (textAlign == TextAlign.center) {
      return Center(
        child: Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      );
    }
    return Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
