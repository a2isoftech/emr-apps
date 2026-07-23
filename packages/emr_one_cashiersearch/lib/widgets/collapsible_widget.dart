import 'package:emr_one_core/eo_constants.dart';
import 'package:flutter/material.dart';

class CollapsibleWidget extends StatelessWidget {
  const CollapsibleWidget({
    required this.title,
    required this.children,
    this.initiallyExpanded = false,
    this.enabled = true,
    this.showTrailingIcon = true,
    super.key,
  });
  final String title;
  final List<Widget> children;
  final bool initiallyExpanded;
  final bool enabled;
  final bool showTrailingIcon;

  @override
  Widget build(BuildContext context) {
    final dividerColor = Theme.of(context).dividerColor;
    return ExpansionTile(
      iconColor: Theme.of(context).colorScheme.onSurface,
      collapsedIconColor: Theme.of(context).colorScheme.onSurface,
      showTrailingIcon: showTrailingIcon,
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge,
      ),
      tilePadding: const EdgeInsets.symmetric(horizontal: Insets.gutter / 2),
      enabled: enabled,
      initiallyExpanded: initiallyExpanded,
      childrenPadding: const EdgeInsets.all(
        Insets.gutter / 2,
      ),
      collapsedShape: Border(
        top: BorderSide(color: dividerColor),
        bottom: BorderSide(color: dividerColor),
      ),
      shape: Border(
        top: BorderSide(color: dividerColor),
        bottom: BorderSide(color: dividerColor),
      ),
      children: children,
    );
  }
}
