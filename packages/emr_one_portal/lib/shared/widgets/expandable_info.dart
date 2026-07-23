import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class ExpandableInfo extends StatefulWidget {
  const ExpandableInfo({
    required this.icon,
    required this.title,
    required this.contextWidgets,
    super.key,
  });

  final IconData icon;
  final String title;
  final List<Widget> contextWidgets;

  @override
  State<ExpandableInfo> createState() => _ExpandableInfoState();
}

class _ExpandableInfoState extends State<ExpandableInfo> {
  final GlobalKey _key = GlobalKey();
  OverlayEntry? _overlayEntry;
  bool _isExpanded = false;

  void _toggleOverlay() {
    if (_isExpanded) {
      _hideOverlay();
    } else {
      _showOverlay();
    }
  }

  void _showOverlay() {
    final renderBox = _key.currentContext!.findRenderObject()! as RenderBox;
    final offset = renderBox.localToGlobal(Offset.zero);
    final theme = Theme.of(context);
    _overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        top: offset.dy + renderBox.size.height,
        left: offset.dx,
        width: renderBox.size.width + Insets.gutter / 8,
        child: Material(
          child: Container(
            decoration: BoxDecoration(
              color: theme.colorScheme.surface,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(Insets.gutter / 2),
                bottomRight: Radius.circular(Insets.gutter / 2),
              ),
              border: _isExpanded
                  ? Border(
                      bottom:
                          BorderSide(color: theme.colorScheme.inverseSurface),
                      left: BorderSide(color: theme.colorScheme.inverseSurface),
                      right:
                          BorderSide(color: theme.colorScheme.inverseSurface),
                    )
                  : null,
            ),
            child: Container(
              padding: const EdgeInsets.all(Insets.gutter / 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ...widget.contextWidgets,
                ],
              ),
            ),
          ),
        ),
      ),
    );

    Overlay.of(context).insert(_overlayEntry!);
    setState(() {
      _isExpanded = true;
    });
  }

  void _hideOverlay() {
    _overlayEntry?.remove();
    setState(() {
      _isExpanded = false;
    });
  }

  @override
  void dispose() {
    _hideOverlay();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      key: _key,
      onTap: _toggleOverlay,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(Insets.gutter / 2),
            topRight: Radius.circular(Insets.gutter / 2),
          ),
          border: _isExpanded
              ? Border(
                  top: BorderSide(color: theme.colorScheme.inverseSurface),
                  left: BorderSide(color: theme.colorScheme.inverseSurface),
                  right: BorderSide(color: theme.colorScheme.inverseSurface),
                )
              : null,
        ),
        child: Row(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: Insets.gutter),
                  child: Icon(
                    widget.icon,
                    color: Colors.yellow,
                  ),
                ),
                Text(
                  widget.title,
                  style: theme.textTheme.headlineSmall,
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: Insets.gutter),
                  child: Icon(
                    _isExpanded ? Icons.arrow_upward : Icons.arrow_downward,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
