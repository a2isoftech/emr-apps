import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/widgets/form_styles.dart';
import 'package:flutter/material.dart';

class TicketDecorations {
  static InputDecoration confirmedTextBoxStyle(
    BuildContext context,
    String? label,
  ) {
    return InputDecoration(
      border: const OutlineInputBorder(
        borderSide: BorderSide(color: EmrColours.primaryGreen, width: 3),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          3,
        ),
        borderSide: const BorderSide(color: EmrColours.primaryGreen, width: 3),
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: EmrColours.primaryGreen,
          width: 3,
        ),
      ),
      isDense: true,
      contentPadding: const EdgeInsets.all(12),
      hintText: label,
      labelText: label,
      labelStyle: const TextStyle(color: Colors.grey),
    );
  }

  static InputDecoration textBoxStyle(
    BuildContext context, {
    String? label,
    String? hint,
  }) {
    return FormStyles.textFieldDecoration(context).copyWith(
      border: const OutlineInputBorder(
        borderSide: BorderSide(
          color: EmrColours.secondaryGrey,
        ),
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: EmrColours.secondaryGrey,
        ),
      ),
      isDense: true,
      contentPadding: const EdgeInsets.all(12),
      hintText: hint ?? label,
      labelText: label,
      labelStyle: const TextStyle(color: Colors.grey),
    );
  }

  static TextStyle kHeaderText =
      const TextStyle(fontWeight: FontWeight.bold, fontSize: 28);

  static const TextStyle kSmallText =
      TextStyle(fontSize: 12, color: Colors.white);
  static const TextStyle kBoldText = TextStyle(fontWeight: FontWeight.bold);
}
