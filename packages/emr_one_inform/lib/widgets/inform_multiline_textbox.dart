import 'package:emr_one_core/widgets/form_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InformMultilineTextbox extends StatefulWidget {
  const InformMultilineTextbox({
    required this.controller,
    required this.maxLength,
    required this.onChanged,
    super.key,
    this.labelText,
    this.validationMessage,
    this.readOnly = false,
  });

  final TextEditingController controller;
  final String? labelText;
  final String? validationMessage;
  final int maxLength;
  final bool readOnly;
  final void Function(String? text) onChanged;

  @override
  State<InformMultilineTextbox> createState() => _InformMultilineTextboxState();
}

class _InformMultilineTextboxState extends State<InformMultilineTextbox> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: widget.controller,
      decoration: FormStyles.textFieldDecoration(context)
          .copyWith(labelText: widget.labelText),
      maxLength: widget.maxLength,
      maxLengthEnforcement: MaxLengthEnforcement.enforced,
      maxLines: 3,
      onChanged: (String? value) {
        widget.onChanged(value);
      },
      readOnly: widget.readOnly,
      textAlignVertical: TextAlignVertical.top,
      validator: (value) => widget.validationMessage == null
          ? null
          : (value == null || value.isEmpty)
              ? widget.validationMessage
              : null, // if the validation message is null do not validate
    );
  }
}
