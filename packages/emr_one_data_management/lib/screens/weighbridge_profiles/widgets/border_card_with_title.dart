import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class BorderedCardWithTitle extends StatelessWidget {
  const BorderedCardWithTitle({
    required this.title,
    required this.child,
    super.key,
    this.padding = const EdgeInsets.all(Insets.gutter),
    this.margin = const EdgeInsets.symmetric(vertical: 8),
  });
  final String title;
  final Widget child;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 12),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8),
            ),
            padding: padding,
            child: child,
          ),
          Positioned(
            left: 24,
            child: Container(
              color: Theme.of(context).colorScheme.surface,
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                title,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
