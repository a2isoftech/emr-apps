import 'package:emr_one_cashiersearch/common/enums.dart';
import 'package:emr_one_cashiersearch/models/advance.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/widgets.dart';

extension AdvanceErrorsExtensions on BuildContext {
  String advanceError(Advance advance, AdvanceErrorCodes errorCode) {
        switch(errorCode)
        {
          case AdvanceErrorCodes.accountUpdate:
            return l10n.advanceaccountUpdateError;
          case AdvanceErrorCodes.savingAdvanceStatusNotDraft:
            return l10n.savingAdvanceStatusNotDraftError
              (advance.id, advance.status.name);
        }
      }
}
