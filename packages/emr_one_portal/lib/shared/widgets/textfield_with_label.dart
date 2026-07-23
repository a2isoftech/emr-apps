import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_portal/portal.dart';
import 'package:flutter/material.dart';

class TextFieldWithLabel extends StatelessWidget {
  const TextFieldWithLabel({
    required this.labelText,
    required this.mandatory,
    required this.textFormField,
    super.key,
  });

  final String labelText;
  final bool mandatory;
  final TextFormField textFormField;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (labelText.isNotEmpty) _buildLabel(context),
        textFormField,
      ],
    );
  }

  Widget _buildLabel(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: Insets.gutter / 2,
        bottom: Insets.gutter / 4,
      ),
      child: FormLabel(
        labelText,
        mandatory: mandatory,
      ),
    );
  } 
}
