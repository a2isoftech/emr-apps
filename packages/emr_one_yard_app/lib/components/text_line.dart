import 'package:emr_one_core/eo_constants.dart';
import 'package:flutter/material.dart';

class TextLine extends StatelessWidget {
  const TextLine({
    required this.header,
    required this.content,
    this.primaryTextTheme = false,
    super.key,
  });

  final String header;
  final String? content;
  final bool primaryTextTheme;
  @override
  Widget build(BuildContext context) {
    final textTheme = primaryTextTheme
        ? Theme.of(context).primaryTextTheme
        : Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsetsGeometry.symmetric(vertical: Insets.gutter / 8),
      child: RichText(
        maxLines: 2,
        text: TextSpan(
          children: [
            TextSpan(
              text: header.isNotEmpty ? '$header: ' : '',
              style: textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: content, style: textTheme.bodyLarge),
          ],
        ),
      ),
    );
  }
}
