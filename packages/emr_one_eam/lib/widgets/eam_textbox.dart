import 'package:emr_one_core/widgets/form_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EAMTextBox extends StatefulWidget {
  const EAMTextBox({
    required this.controller,
    required this.onChanged,
    super.key,
    this.keyboardType,
    this.labelText,
    this.hintText,
    this.validationMessage,
    this.isMultiline,
    this.customValidator,
    this.isEnabled,
    this.inputFormatters,
    this.textColor,
    this.onTap,
    this.isReadOnly,
    this.autoValidateMode,
  });
  final AutovalidateMode? autoValidateMode;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final String? labelText;
  final String? hintText;
  final String? validationMessage;
  final void Function(String? text)? onChanged;
  final bool? isMultiline;
  final String? Function(String? text)? customValidator;
  final bool? isEnabled;
  final bool? isReadOnly;
  final List<TextInputFormatter>? inputFormatters;
  final Color? textColor;
  final void Function()? onTap;
  @override
  State<EAMTextBox> createState() => _EAMTextBoxState();
}

class _EAMTextBoxState extends State<EAMTextBox> {
  @override
  Widget build(BuildContext context) {
    final hasLabel = widget.labelText != null && widget.labelText!.isNotEmpty;
    return TextFormField(
      readOnly: widget.isReadOnly ?? false,
      autovalidateMode:
          widget.autoValidateMode ?? AutovalidateMode.onUserInteraction,
      keyboardType: widget.keyboardType,
      controller: widget.controller,
      enabled: widget.isEnabled,
      style: TextStyle(color: widget.textColor),
      decoration: FormStyles.textFieldDecoration(context).copyWith(
        labelStyle: const TextStyle(color: Colors.grey),
        labelText: hasLabel ? widget.labelText : '',
        hintText: hasLabel ? widget.hintText : '',
        isDense: true,
        contentPadding: const EdgeInsets.all(12),
        suffixIcon: IconButton(
          color: Colors.green,
          onPressed: () {
            widget.controller.clear();
            widget.onChanged?.call('');
          },
          icon: const Icon(Icons.clear),
        ),
      ),
      inputFormatters: widget.inputFormatters,
      onChanged: (String? value) {
        widget.onChanged?.call(value);
      },
      onTap: () {
        widget.onTap?.call();
      },
      validator: (String? value) {
        if (widget.customValidator != null) {
          return widget.customValidator!(value);
        } else if (widget.validationMessage != null) {
          return (value == null || value.isEmpty)
              ? widget.validationMessage
              : null;
        }
        return null; // if the validation message is null do not validate
      },
      maxLines: (widget.isMultiline != null && widget.isMultiline!) ? null : 1,
    );
  }
}
