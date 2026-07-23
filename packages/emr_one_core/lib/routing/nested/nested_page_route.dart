import 'package:emr_one_core/routing/nested/nested_navigation_screen.dart';
import 'package:flutter/material.dart';

/// This route is for use in a Widget presented by
/// EmrModal.showModalBottomSheetOrFlyout and creates a page with a navigation
/// bar and a child Widget. When the parent Widget is a modal bottom sheet, the
/// user can swipe up to expand to fill the screen.
///
/// Navigator.of(context).push<void>(
///   NestedPageRoute(
///     title: const Text('Title text'),
///     child: Column(
///       children: [
///         // ...
///       ],
///     ),
///   ),
/// );
class NestedPageRoute<T> extends PageRouteBuilder<T> {
  NestedPageRoute({
    required Widget title,
    required Widget child,
  }) : super(
          transitionDuration: Duration.zero,
          reverseTransitionDuration: Duration.zero,
          pageBuilder: (_, __, ___) => NestedNavigationScreen(
            title: title,
            child: child,
          ),
        );
}
