import 'package:flutter/material.dart';

class ContextMenuItem extends StatelessWidget {
  const ContextMenuItem({
    required this.text,
    super.key,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: Text(
        text,
        style: Theme.of(context).textTheme.labelLarge,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
