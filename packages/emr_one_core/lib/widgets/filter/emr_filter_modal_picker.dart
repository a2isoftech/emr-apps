import 'package:flutter/material.dart';

class EmrFilterModalPickerRoute extends PageRoute<void> {
  EmrFilterModalPickerRoute({
    required this.contentBuilder,
  });

  final Widget Function(BuildContext context) contentBuilder;

  @override
  Color? get barrierColor => null;

  @override
  String? get barrierLabel => null;

  @override
  Widget buildPage(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
  ) {
    return _EmrFilterModalPickerPage(
      contentBuilder: contentBuilder,
    );
  }

  @override
  bool get maintainState => false;

  @override
  Duration get transitionDuration => const Duration(milliseconds: 300);
}

class _EmrFilterModalPickerPage extends StatelessWidget {
  const _EmrFilterModalPickerPage({
    required this.contentBuilder,
  });

  final Widget Function(BuildContext context) contentBuilder;

  @override
  Widget build(BuildContext context) => contentBuilder(context);
}
