import 'package:flutter/material.dart';

class BottomTextWidget extends StatelessWidget {
  const BottomTextWidget({
    required this.title,
    required this.text,
    this.isInitialText = false,
    super.key,
  });

  final bool isInitialText;
  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).primaryTextTheme.bodyMedium;

    return Text.rich(
      TextSpan(
        style: textStyle,
        children: [
          if (!isInitialText) const TextSpan(text: ', '),
          TextSpan(
            text: title,
            style: textStyle?.copyWith(fontWeight: FontWeight.bold),
          ),
          const TextSpan(text: ': '),
          TextSpan(text: text),
        ],
      ),
    );
  }
}
