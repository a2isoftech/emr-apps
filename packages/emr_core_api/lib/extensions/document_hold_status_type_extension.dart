import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/widgets.dart';

extension DocumentHoldStatusTypeExtension on Enum$DocumentHoldStatusType {
  String displayString(BuildContext context) {
    return switch (this) {
      Enum$DocumentHoldStatusType.ALL => context.l10n.all,
      Enum$DocumentHoldStatusType.PAYMENTS => context.l10n.payments,
      Enum$DocumentHoldStatusType.INVOICES => context.l10n.invoices,
      Enum$DocumentHoldStatusType.DORMANT => context.l10n.dormant,
      Enum$DocumentHoldStatusType.$unknown => '',
    };
  }
}
