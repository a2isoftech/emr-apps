import 'package:emr_one_core/eo_constants.dart';
import 'package:flutter/material.dart';

class InputDecorationService {
  static InputDecoration getTextFormFieldInputDecoration(
    String? hintText,
    String? labelText, {
    required ThemeData theme,
    FloatingLabelBehavior floatingLabelBehavior = FloatingLabelBehavior.auto,
  }) {
    return InputDecoration(
      filled: true,
      hintText: hintText,
      labelText: labelText,
      fillColor: theme.colorScheme.surface,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: theme.colorScheme.outline),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: theme.colorScheme.outline),
      ),
      floatingLabelStyle: TextStyle(color: theme.colorScheme.outline),
      floatingLabelBehavior: floatingLabelBehavior,
      helperText: ' ',
    );
  }

  static InputDecoration getDropDownInputDecoration(
    String? labelText, {
    required ThemeData theme,
    EdgeInsets contentPadding = const EdgeInsets.all(Insets.gutter),
  }) {
    return InputDecoration(
      labelText: labelText,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(color: theme.colorScheme.outline),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: theme.colorScheme.outline),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: theme.colorScheme.outline),
      ),
      contentPadding: contentPadding,
      helperText: ' ',
    );
  }

  static InputDecoration noBorder() {
    return const InputDecoration(
      border: InputBorder.none,
      enabledBorder: InputBorder.none,
      focusedBorder: InputBorder.none,
      errorBorder: InputBorder.none,
      focusedErrorBorder: InputBorder.none,
    );
  }
}
