import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

/// A card that can be used as a child of [EmrTabBarVerticalView].
class EmrTabBarVerticalViewCard extends EmrTabBarVerticalViewItem {
  const EmrTabBarVerticalViewCard({
    required super.title,
    this.child,
    super.key,
    super.actions,
    super.allowedPermissions = const [],
    this.padding = const EdgeInsets.all(Insets.gutter),
    this.height,
    this.minHeight = 0,
    this.maxHeight = double.infinity,
  }) : assert(
         (height != null && minHeight == 0 && maxHeight == double.infinity) ||
             (height == null && minHeight >= 0 && maxHeight <= double.infinity),
         'Only set height or minHeight/maxHeight.',
       );

  final double? height;

  final double minHeight;

  final double maxHeight;

  final Widget? child;

  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    const borderRadius = BorderRadius.all(Radius.circular(EmrCard.cardRadius));
    final theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: borderRadius,
        border: Border.fromBorderSide(BorderSide(color: theme.dividerColor)),
      ),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: height ?? minHeight,
          maxHeight: height ?? maxHeight,
        ),
        child: Padding(padding: padding, child: child),
      ),
    );
  }
}
