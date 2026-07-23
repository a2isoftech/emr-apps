import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class QuickQuoteInputField extends StatefulWidget {
  const QuickQuoteInputField({
    required this.label,
    this.onChanged,
    this.textController,
    this.readOnly = false,
    this.onTap,
    this.onSubmitted,
    this.enabled = true,
    this.textInputType = TextInputType.text,
    this.maxLength,
    this.inputFormatters,
    this.onClear,
    this.onTextDirty,
    this.textBoxWidth = 320.0,
    super.key,
  });

  final String label;
  final TextEditingController? textController;
  final bool readOnly;
  final bool enabled;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmitted;
  final void Function()? onTap;
  final TextInputType textInputType;
  final int? maxLength;
  final List<TextInputFormatter>? inputFormatters;
  final void Function()? onClear;
  final void Function(String)? onTextDirty;
  final double textBoxWidth;

  @override
  State<QuickQuoteInputField> createState() => _QuickQuoteInputFieldState();
}

class _QuickQuoteInputFieldState extends State<QuickQuoteInputField> {
  final _focusNode = FocusNode();
  String? _initialValue;

  @override
  void initState() {
    super.initState();

    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        // Store the current text when focus is gained
        _initialValue = widget.textController?.text ?? '';
      } else {
        // On focus lost, check if value changed
        final currentValue = widget.textController?.text ?? '';
        if (currentValue != _initialValue) {
          widget.onTextDirty?.call(currentValue);
        }
      }
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: Insets.gutter / 2),
      child: SizedBox(
        width: widget.textBoxWidth,
        child: TextFormField(
          controller: widget.textController,
          autofocus: true,
          focusNode: _focusNode,
          onChanged: widget.onChanged,
          onTap: widget.onTap,
          enabled: widget.enabled,
          onFieldSubmitted: widget.onSubmitted,
          keyboardType: widget.textInputType,
          maxLength: widget.maxLength,
          decoration: InputDecoration(
            label: Text(widget.label),
            counter: const Offstage(),
            suffixIcon: widget.onClear != null
                ? IconButton(
                    icon: const Icon(Icons.clear, size: 20),
                    onPressed: widget.onClear,
                  )
                : null,
          ),
          readOnly: widget.readOnly,
          inputFormatters: widget.inputFormatters,
        ),
      ),
    );
  }
}
