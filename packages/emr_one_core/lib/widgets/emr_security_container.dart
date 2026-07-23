import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

/// A container that restricts access to its [child] based on user permissions.
/// This is used by our form field widgets and `EmrTabBarVerticalView`.
class EmrSecurityContainer extends StatelessWidget {
  const EmrSecurityContainer({
    required this.child,
    this.allowedPermissions = const [],
    super.key,
  });

  final List<String> allowedPermissions;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    // Determine if the user has at least one of the required permissions.
    // We allow access if no permissions are specified.
    final hasPermission =
        allowedPermissions.isEmpty ||
        allowedPermissions.any(
          (permisisonName) => context.userHasPermission(permisisonName),
        );

    final theme = Theme.of(context);

    const borderRadius = BorderRadius.all(Radius.circular(EmrCard.cardRadius));

    // Prevent focus on the child when the user doesn't have permission so they
    // couldn't copy existing data by tabbing to the child widget.
    return ExcludeFocus(
      excluding: !hasPermission,
      child: Stack(
        fit: StackFit.passthrough,
        children: [
          // Although probably not strictly necessary, we set the opacity to 0
          // to make doubly sure the child data can't be seen.
          Opacity(opacity: hasPermission ? 1 : 0, child: child),
          if (!hasPermission)
            Positioned.fill(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: theme.colorScheme.surface,
                  borderRadius: borderRadius,
                  border: Border.fromBorderSide(
                    BorderSide(color: theme.dividerColor),
                  ),
                ),
                child: const Icon(Icons.lock, color: Colors.grey),
              ),
            ),
        ],
      ),
    );
  }
}
