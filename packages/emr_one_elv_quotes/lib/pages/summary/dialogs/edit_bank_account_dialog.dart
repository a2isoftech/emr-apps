import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/widgets/dialog/dialog.dart';
import 'package:emr_one_elv_quotes/common/quick_quote_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void editBankDetailAndNotesDialog({
  required BuildContext context,
  required String? bankSortCode,
  required String? bankAccountNumber,
  required String? notes,
  required void Function(
    String bankSortCode,
    String bankAccountNumber,
    String notes,
  ) onSaveButtonPressed,
  required bool allowEditBankDetails,
  bool showBankInputs = false,
}) {
  final bankSortCodeController =
      TextEditingController(text: bankSortCode ?? '');
  final bankAccountNumberController =
      TextEditingController(text: bankAccountNumber ?? '');
  final notesController = TextEditingController(text: notes ?? '');

  ElvDialog.action(
    context,
    titleText: showBankInputs
        ? context.l10n.editBankDetailsAndNotes
        : context.l10n.notes,
    content: SizedBox(
      width: 670,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: Insets.gutter),
        child: Wrap(
          spacing: Insets.gutter / 2,
          runSpacing: Insets.gutter,
          children: [
            if (showBankInputs) ...[
              QuickQuoteInputField(
                label: context.l10n.bankSortCode,
                textController: bankSortCodeController,
                maxLength: 6,
                textInputType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                ],
                enabled: allowEditBankDetails,
              ),
              QuickQuoteInputField(
                label: context.l10n.bankAccountNumber,
                textController: bankAccountNumberController,
                maxLength: 8,
                textInputType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                ],
                enabled: allowEditBankDetails,
              ),
            ],
            QuickQuoteInputField(
              label: context.l10n.notes,
              textController: notesController,
            ),
          ],
        ),
      ),
    ),
    actions: [
      DialogAction(context.l10n.cancel, () => Navigator.of(context).pop()),
      DialogAction(context.l10n.save, () {
        onSaveButtonPressed(
          bankSortCodeController.text,
          bankAccountNumberController.text,
          notesController.text,
        );
        Navigator.of(context).pop();
      }),
    ],
  );
}
