import 'package:emr_one_core/src/workspace/workspaces.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

@internal
class FlyoutShim extends StatelessWidget {
  const FlyoutShim({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: kFlyoutElevation,
      color: Theme.of(context).colorScheme.surfaceContainerHigh,
      borderRadius: const BorderRadius.all(Radius.circular(kFlyoutRounding)),
      child: Padding(
        padding: const EdgeInsets.all(kFlyoutInnerPadding),
        child: child,
      ),
    );
  }
}
