import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// A widget for use by NestedMobilePageRoute, which displays
/// a secondary navigation bar with achild Widget below.
/// An `AppBar` is shown above the [child] when [title] is not null.
class NestedMobileNavigationScreen extends StatelessWidget {
  const NestedMobileNavigationScreen({
    required this.child,
    required this.leading,
    super.key,
    this.title,
    this.childPadding = const EdgeInsets.all(Insets.gutter),
  });

  final Widget? title;
  final Widget child;
  final Widget leading;
  final EdgeInsetsGeometry childPadding;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final scrollController = Provider.of<ScrollController?>(context);
    final foreground = isDark
        ? Theme.of(context).colorScheme.onSurface
        : Theme.of(context).colorScheme.onSecondary;
    final background = isDark
        ? Theme.of(context).colorScheme.surface
        : Theme.of(context).colorScheme.secondary;

    /// If the [child] Widget is an [AppBarExtender] then invoke the method to
    /// get any actions for the [AppBar].
    final actions = child is AppBarExtender
        ? (child as AppBarExtender).getActions(context)
        : List<Widget>.empty();

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: title,
        iconTheme: IconThemeData(color: foreground),
        actionsIconTheme: IconThemeData(color: foreground),
        foregroundColor: foreground,
        backgroundColor: background,
        actions: actions,
        leading: leading,
      ),
      body: SingleChildScrollView(
        controller: scrollController,
        child: Padding(
          padding: childPadding,
          child: child,
        ),
      ),
    );
  }
}
