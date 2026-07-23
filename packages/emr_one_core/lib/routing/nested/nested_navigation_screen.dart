import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// A widget for use by NestedPageRoute, which displays a secondary navigation
/// bar with achild Widget below.
/// An `AppBar` is shown above the [child] when [title] is not null.
class NestedNavigationScreen extends StatelessWidget {
  const NestedNavigationScreen({
    required this.child,
    super.key,
    this.title,
    this.childPadding = const EdgeInsets.all(Insets.gutter),
  });

  final Widget? title;
  final Widget child;
  final EdgeInsetsGeometry childPadding;

  @override
  Widget build(BuildContext context) {
    final scrollController = Provider.of<ScrollController?>(context);
    final foreground = Theme.of(context).colorScheme.onSurface;
    final background = Theme.of(context).colorScheme.onSurface.withAlpha(13);

    /// If the [child] Widget is an [AppBarExtender] then invoke the method to
    /// get any actions for the [AppBar].
    final actions = child is AppBarExtender
        ? (child as AppBarExtender).getActions(context)
        : List<Widget>.empty();

    return Material(
      child: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            if (title != null)
              AppBar(
                title: title,
                iconTheme: IconThemeData(color: foreground),
                actionsIconTheme: IconThemeData(color: foreground),
                foregroundColor: foreground,
                backgroundColor: background,
                actions: actions,
              ),
            Padding(
              padding: childPadding,
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}
