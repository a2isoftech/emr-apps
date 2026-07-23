import 'package:flutter/material.dart';

class TicketDialog extends StatefulWidget {
  const TicketDialog({
    required this.titleText,
    required this.content,
    this.onClosePressed,
    this.actions,
    this.showCloseIcon = true,
    super.key,
  });

  final String titleText;
  final Widget content;
  final void Function()? onClosePressed;
  final List<Widget>? actions;
  final bool showCloseIcon;

  @override
  State<TicketDialog> createState() => _TicketDialogState();
}

class _TicketDialogState extends State<TicketDialog> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return AlertDialog(
      scrollable: true,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.titleText,
            style: textTheme.titleLarge,
          ),
          if (widget.showCloseIcon)
            IconButton(
              onPressed: () => widget.onClosePressed?.call(),
              icon: const Icon(Icons.close),
            ),
        ],
      ),
      content: widget.content,
      actions: widget.actions ?? const [],
    );
  }
}
