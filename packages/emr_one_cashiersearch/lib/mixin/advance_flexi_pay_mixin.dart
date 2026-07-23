import 'package:emr_one_cashiersearch/emr_one_cashiersearch.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

mixin AdvanceFlexiPayMixin<T extends StatefulWidget> on State<T> {
  late AdvanceFlexiPayController advanceFlexiPayController;

  Future<bool> showFlexiPayPopup() async {
    var shouldRefresh = false;
    await EmrDialog.modal<void>(
      context,
      titleText: context.l10n.editAdvanceOffsets,
      builder: (_) {
        return AdvanceFlexiPayPopup(
          advanceFlexiPayController: advanceFlexiPayController,
        );
      },
      acceptLabel: context.l10n.save,
      onAccept: () async {
        if (await _onSave()) {
          shouldRefresh = true;
          if (mounted) {
            Navigator.of(context).pop();
          }
        }
      },
    );
    return shouldRefresh;
  }

  Future<bool> _onSave() async {
    if (!(advanceFlexiPayController.formKey.currentState?.validate() ?? true)) {
      return false;
    }

    if (advanceFlexiPayController.totalUsed.value >
        advanceFlexiPayController.transactionTotal) {
      await TicketsUtility.errorDialogWidget(
        context,
        context.l10n.invalidAdvanceOffsetError,
      );
      return false;
    }

    return true;
  }
}
