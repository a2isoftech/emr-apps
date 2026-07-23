import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_tickets/widgets/beams/item_entry_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ItemEntry extends StatefulWidget {
  const ItemEntry({
    required this.label,
    super.key,
    this.heading,
    this.initialValue,
    this.onChanged,
    this.isRequired = true,
    this.entryType = ItemEntryType.stringInput,
    this.maxWidth = 400,
    this.trailingWidgetBuilder,
  });

  final String? heading;
  final String label;
  final bool isRequired;
  final String? initialValue;
  final ValueChanged<String?>? onChanged;
  final ItemEntryType entryType;
  final double maxWidth;
  final Widget Function(BuildContext context)? trailingWidgetBuilder;

  @override
  State<ItemEntry> createState() => _ItemEntryState();
}

class _ItemEntryState extends State<ItemEntry> {
  late double maxHeight;
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initialValue)
      ..addListener(_textChanged);
    final headingHeight = widget.heading != null ? 54.0 : 0.0;
    maxHeight = 64 + 36 + headingHeight;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _textChanged() {
    widget.onChanged?.call(_controller.text);
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: widget.maxWidth,
        minHeight: maxHeight,
        maxHeight: maxHeight,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.heading != null)
            Padding(
              padding: const EdgeInsets.only(
                top: Insets.gutter / 2,
                bottom: Insets.gutter,
              ),
              child: Text(
                widget.heading!,
                style: EmrOneConstants.kSmallHeadingTextStyle,
              ),
            ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: Insets.gutter / 2),
            child: Text(widget.label),
          ),
          TextFormField(
            controller: _controller,
            decoration: const InputDecoration(
              isDense: true,
              contentPadding: EdgeInsets.all(Insets.gutter / 2),
            ),
            validator: widget.isRequired ? Validators.required : null,
            inputFormatters: [
              if (widget.entryType == ItemEntryType.numberInput)
                FilteringTextInputFormatter.digitsOnly,
              if (widget.entryType == ItemEntryType.decimalInput)
                FilteringTextInputFormatter.allow(RegExp('^[0-9]+.?[0-9]*')),
            ],
          ),
          if (widget.trailingWidgetBuilder != null)
            widget.trailingWidgetBuilder!(context),
        ],
      ),
    );
  }
}
