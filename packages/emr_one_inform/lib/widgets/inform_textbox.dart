import 'package:emr_one_core/widgets/form_styles.dart';
import 'package:flutter/material.dart';

class InformTextBox extends StatefulWidget {
  const InformTextBox({
    required this.controller,
    required this.onChanged,
    super.key,
    this.keyboardType,
    this.labelText,
    this.hintText,
    this.validationMessage,
    this.isMultiline,
    this.customValidator,

  });

  final TextEditingController controller;
  final TextInputType? keyboardType;
  final String? labelText;
  final String? hintText;
  final String? validationMessage;
  final void Function(String? text) onChanged;
  final bool? isMultiline;
  final String? Function(String? text)? customValidator;

  @override
  State<InformTextBox> createState() => _InformTextBoxState();
}

class _InformTextBoxState extends State<InformTextBox> {
  @override
  Widget build(BuildContext context) {
    final hasLabel = widget.labelText != null && widget.labelText!.isNotEmpty;
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      keyboardType: widget.keyboardType,
      controller: widget.controller,
      decoration: FormStyles.textFieldDecoration(context).copyWith(
        labelText: hasLabel ? widget.labelText : '',
        hintText: hasLabel ? widget.hintText : '',
      ),
      onChanged: (String? value) {
        widget.onChanged(value);
      },
      validator: (String? value) {
        if(widget.customValidator != null)
        {
           return widget.customValidator!(value);
        }
        else
        if(widget.validationMessage != null)
        {
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
