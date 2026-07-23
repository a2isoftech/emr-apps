import 'package:flutter/material.dart';

class OverflowText extends StatelessWidget {
  const OverflowText({required this.text, this.maxLines = 1, super.key});
  final int maxLines;
  final String text;

  @override
  Widget build(BuildContext context) {
    return RichText(
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: text,
            style: Theme.of(context).textTheme.labelSmall!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ],
      ),
    );
  }
}
