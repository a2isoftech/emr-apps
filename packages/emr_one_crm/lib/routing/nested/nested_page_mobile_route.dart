import 'package:emr_one_crm/routing/nested/nested_mobile_navigation_screen.dart';
import 'package:flutter/material.dart';

class NestedPageMobileRoute<T> extends PageRouteBuilder<T> {
  NestedPageMobileRoute({
    required Widget title,
    required Widget child,
    required Widget leading,
  }) : super(
          transitionDuration: Duration.zero,
          reverseTransitionDuration: Duration.zero,
          pageBuilder: (_, __, ___) => NestedMobileNavigationScreen(
            title: title,
            leading: leading,
            child: child,
          ),
        );
}
