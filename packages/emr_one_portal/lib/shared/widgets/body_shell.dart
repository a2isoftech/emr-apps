import 'package:emr_one_core/eo_constants.dart';
import 'package:flutter/material.dart';

class BodyShell extends StatelessWidget {
  const BodyShell({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            Insets.gutter,
            0,
            Insets.gutter,
            Insets.gutter,
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
