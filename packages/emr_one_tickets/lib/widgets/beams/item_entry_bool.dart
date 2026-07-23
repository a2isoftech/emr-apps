import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_tickets/widgets/beams/item_entry_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ItemEntryBool extends StatefulWidget {
  const ItemEntryBool({
    required this.label,
    required this.initialValue,
    required this.onBoolChanged,
    super.key,
    this.heading,
    this.dependentLabel,
    this.dependentInitialValue,
    this.onDependentChanged,
    this.hasDependent = false,
    this.dependentEntryType = ItemEntryType.stringInput,
    this.maxWidth = 400,
  }) : assert(
          hasDependent == true && dependentLabel != null ||
              hasDependent == false && dependentLabel == null,
        );

  final String? heading;
  final String label;
  final String? dependentLabel;
  final bool hasDependent;
  final bool initialValue;
  final ValueChanged<bool>? onBoolChanged;
  final String? dependentInitialValue;
  final ValueChanged<String?>? onDependentChanged;
  final ItemEntryType dependentEntryType;
  final double maxWidth;

  @override
  State<ItemEntryBool> createState() => _ItemEntryBoolState();
}

class _ItemEntryBoolState extends State<ItemEntryBool> {
  late bool isChecked;
  late double maxHeight;
  late TextEditingController _dependentTextController;

  @override
  void initState() {
    super.initState();
    _dependentTextController =
        TextEditingController(text: widget.dependentInitialValue)
          ..addListener(_dependentTextChanged);
    isChecked = widget.initialValue;
    final headingHeight = widget.heading != null ? 54.0 : 0.0;
    maxHeight = (widget.hasDependent ? 160 : 40) + headingHeight;
  }

  @override
  void dispose() {
    _dependentTextController.dispose();
    super.dispose();
  }

  void _dependentTextChanged() {
    widget.onDependentChanged?.call(_dependentTextController.text);
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
          Row(
            children: [
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 320),
                child: Text(widget.label),
              ),
              const Spacer(),
              Switch(
                value: isChecked,
                onChanged: (value) {
                  setState(() {
                    widget.onBoolChanged?.call(value);

                    isChecked = value;
                  });
                },
              ),
            ],
          ),
          if (widget.hasDependent) ...[
            const SizedBox(height: Insets.gutter),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: Insets.gutter / 2),
              child: Text(
                widget.dependentLabel!,
                style: !isChecked ? const TextStyle(color: Colors.grey) : null,
              ),
            ),
            TextFormField(
              controller: _dependentTextController,
              readOnly: !isChecked,
              enabled: isChecked,
              validator: isChecked ? Validators.required : null,
              decoration: const InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.all(Insets.gutter / 2),
              ),
              inputFormatters: [
                if (widget.dependentEntryType == ItemEntryType.numberInput)
                  FilteringTextInputFormatter.digitsOnly,
                if (widget.dependentEntryType == ItemEntryType.decimalInput)
                  FilteringTextInputFormatter.allow(RegExp('^[0-9]+.?[0-9]*')),
              ],
            ),
          ],
        ],
      ),
    );
  }
}
