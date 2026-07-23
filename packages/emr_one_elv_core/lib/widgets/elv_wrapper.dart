import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_elv_core/extensions/small_screen_check.dart';
import 'package:flutter/material.dart';

class ElvScreenWrapper extends StatelessWidget {
  const ElvScreenWrapper({
    required this.child,
    this.header,
    this.breadcrumb,
    super.key,
  });

  final Widget child;
  final Widget? header;
  final Widget? breadcrumb;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (header != null) header!,
        Expanded(
          child: FocusTraversalGroup(
            policy: OrderedTraversalPolicy(),
            child: Column(
              children: [
                if (breadcrumb != null &&
                    !SmallScreenCheck().isSmallScreen(context))
                  breadcrumb!,
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: breadcrumb == null ? Insets.gutter : 0.0,
                      left: Insets.gutter,
                      bottom: Insets.gutter,
                      right: Insets.gutter,
                    ),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.surface,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(Insets.gutter),
                        child: child,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
