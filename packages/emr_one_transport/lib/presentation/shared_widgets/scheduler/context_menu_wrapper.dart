import 'package:emr_one_transport/core/constants/colors.dart';
import 'package:emr_one_transport/presentation/shared_widgets/scheduler/context_menu_item.dart';
import 'package:flutter/material.dart';

class ContextMenuWrapper<T extends Enum> extends StatefulWidget {
  const ContextMenuWrapper({
    required this.child,
    required this.menuItems,
    required this.onItemSelected,
    this.highlightColor,
    super.key,
  });

  final Widget child;
  final List<T> menuItems;
  final Color? highlightColor;
  final void Function(T option) onItemSelected;

  @override
  State<ContextMenuWrapper<T>> createState() => _ContextMenuWrapperState<T>();
}

class _ContextMenuWrapperState<T extends Enum>
    extends State<ContextMenuWrapper<T>> {
  bool _menuOpen = false;

  Future<void> _showContextMenu(
    BuildContext context,
    TapDownDetails details,
  ) async {
    setState(() => _menuOpen = true);

    try {
      final selectedOption = await showMenu<T>(
        context: context,
        position: RelativeRect.fromLTRB(
          details.globalPosition.dx,
          details.globalPosition.dy,
          details.globalPosition.dx + 1,
          details.globalPosition.dy + 1,
        ),
        color: Theme.of(context).colorScheme.surfaceContainerHigh,
        items: widget.menuItems.map((option) {
          return PopupMenuItem<T>(
            value: option,
            height: 30,
            child: ContextMenuItem(text: option.toString()),
          );
        }).toList(),
      );

      if (selectedOption != null) {
        widget.onItemSelected(selectedOption);
      }
    } finally {
      if (mounted) setState(() => _menuOpen = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.menuItems.isEmpty) return widget.child;

    final borderColor =
        widget.highlightColor ?? TransportAppColors.selectedJobBg;

    return GestureDetector(
      onSecondaryTapDown: (details) => _showContextMenu(context, details),
      child: Container(
        foregroundDecoration: _menuOpen
            ? BoxDecoration(border: Border.all(width: 3, color: borderColor))
            : null,
        child: widget.child,
      ),
    );
  }
}
