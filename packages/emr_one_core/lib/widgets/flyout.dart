import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

/// {@category Widgets}
/// {@subCategory Modal UI}
class Flyout {
  /// Displays a Material dialog as a Flyout sheet anchored to the right, with
  /// Material entrance and exit animations, modal barrier color, and modal
  /// barrier behavior (dialog is dismissible with a tap on the barrier).
  ///
  /// Wraps [showDialog] internally and supports all parameters being passed
  /// through.See [showDialog] documentation for details of those parameters.
  ///
  /// Use [width] to control the overall width of the Flyout, although there
  /// is some internal padding applied.
  ///
  /// Use [verticalExtent] to control the overall height of the Flyout, this
  /// value is relative to the screen height and the value supplied is
  /// subtracted from the screen height, the resulting dialog is centered
  /// vertically with the provided value split between the top and bottom
  /// of the dialog.
  ///
  /// NOTE: Currently this isn't supported on Mobile and is likely to cause
  /// rendering issues, it also doesn't have any way of managing insufficient
  /// width.
  ///
  /// Example usage:
  ///
  ///   final result = await Flyout.show<int?>(
  ///     context: context,
  ///     builder: (context) => ColoredBox(
  ///       color: Colors.red,
  ///       child: Center(
  ///         child: ElevatedButton(
  ///           onPressed: () => Navigator.of(context).pop<int?>(5),
  ///           child: const Text('hi'),
  ///         ),
  ///       ),
  ///     ),
  ///   );
  ///
  static Future<T?> show<T>({
    required BuildContext context,
    required Widget Function(BuildContext) builder,
    bool barrierDismissible = true,
    Color? barrierColor = Colors.black54,
    double borderRadius = 0,
    String? barrierLabel,
    bool useSafeArea = true,
    bool useRootNavigator = true,
    RouteSettings? routeSettings,
    Offset? anchorPoint,
    double width = 600,
    double verticalExtent = 0,
    EdgeInsetsGeometry padding = const EdgeInsets.all(Insets.gutter),
  }) {
    return showDialog<T>(
      context: context,
      barrierColor: barrierColor,
      barrierDismissible: barrierDismissible,
      barrierLabel: barrierLabel,
      useSafeArea: useSafeArea,
      useRootNavigator: useRootNavigator,
      routeSettings: routeSettings,
      anchorPoint: anchorPoint,
      builder: (BuildContext context) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              width: width,
              height: MediaQuery.of(context).size.height - verticalExtent,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(borderRadius),
                ),
              ),
              child: Padding(
                padding: padding,
                child: builder(context),
              ),
            ),
          ],
        );
      },
    );
  }
}
