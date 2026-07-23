import 'package:emr_one_core/widgets/form_styles.dart';
import 'package:flutter/material.dart';

abstract class EamDecorations {
  static InputDecoration getCommonTextBoxStyle(
    BuildContext context,
    String? label,
  ) {
    return FormStyles.textFieldDecoration(context).copyWith(
      isDense: true,
      contentPadding: const EdgeInsets.all(12),
      hintText: label,
      labelText: label,
      labelStyle: const TextStyle(color: Colors.grey),
    );
  }
}
