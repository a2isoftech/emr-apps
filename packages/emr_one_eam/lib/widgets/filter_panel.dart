import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class FilterPanel extends StatelessWidget {
  const FilterPanel({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: BorderDirectional(
          bottom: BorderSide(
            width: 2,
            color: Theme.of(context).colorScheme.surfaceContainerHighest,
          ),
        ),
      ),
      child: ColoredBox(
        color: Theme.of(context).colorScheme.surface,
        child: Padding(
          padding: const EdgeInsets.all(Insets.gutter),
          child: child,
        ),
      ),
    );
  }
}
