import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/widgets.dart';

extension DueDateFromExtension on Enum$DueDateFrom {
  String displayString(BuildContext context) {
    return switch (this) {
      Enum$DueDateFrom.NONE => context.l10n.psnopNone,
      Enum$DueDateFrom.FIRST_MOVEMENT_DATE =>
        context.l10n.firstMovementDate,
      Enum$DueDateFrom.INVOICE_DATE => context.l10n.invoiceDate,
      Enum$DueDateFrom.$unknown => '',
    };
  }
}
