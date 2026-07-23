import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:flutter/material.dart';

class FormStyles {
  static InputDecoration textFieldDecoration(
    BuildContext context, {
    bool readOnly = false,
  }) {
    return InputDecoration(
      border: const OutlineInputBorder(),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: EmrColours.secondaryCyan),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Theme.of(context).dividerColor,
        ),
      ),
    );
  }
}
