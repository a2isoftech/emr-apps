import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DismantleInputField extends StatefulWidget {
  const DismantleInputField({
    required this.controller,
    required this.label,
    this.suffixIcon,
    this.keyBoardType,
    this.onChanged,
    this.allowInputAsDecimalOnly = false,
    this.allowInputAsIntegerOnly = false,
    this.enabled = true,
    super.key,
  });

  final TextEditingController controller;
  final String label;
  final Widget? suffixIcon;
  final TextInputType? keyBoardType;
  final bool allowInputAsDecimalOnly;
  final bool allowInputAsIntegerOnly;
  final void Function(String)? onChanged;
  final bool enabled;

  @override
  State<DismantleInputField> createState() => _DismantleInputFieldState();
}

class _DismantleInputFieldState extends State<DismantleInputField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: TextField(
        enabled: widget.enabled,
        keyboardType: widget.keyBoardType,
        inputFormatters: _getInputFormatters(),
        controller: widget.controller,
        onChanged: (v) {
          widget.onChanged?.call(v);
        },
        onSubmitted: (v) {},
        autocorrect: false,
        decoration: InputDecoration(
          label: Text(
            widget.label,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).dividerColor),
          ),
          suffixIcon: widget.suffixIcon,
        ),
      ),
    );
  }

  List<TextInputFormatter>? _getInputFormatters() {
    if (widget.allowInputAsDecimalOnly) {
      return [
        FilteringTextInputFormatter.allow(RegExp('[0-9]+[,.]{0,1}[0-9]*')),
      ];
    }
    if (widget.allowInputAsIntegerOnly) {
      return [FilteringTextInputFormatter.digitsOnly];
    }
    return null;
  }
}
