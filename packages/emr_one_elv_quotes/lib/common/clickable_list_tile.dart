import 'package:flutter/material.dart';

class ClickableListTile extends StatelessWidget {
  const ClickableListTile({
    required this.child,
    required this.onTap,
    super.key,
    this.selected,
  });
  final Widget child;
  final bool? selected;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onTap,
        child: ListTile(
          selected: selected ?? false,
          selectedColor: Colors.white,
          selectedTileColor: Theme.of(context).colorScheme.primary,
          title: child,
        ),
      ),
    );
  }
}
