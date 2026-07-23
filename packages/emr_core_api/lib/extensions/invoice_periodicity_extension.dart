import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/widgets.dart';

extension InvoicePeriodicityExtension on Enum$InvoicePeriodicity {
  String displayString(BuildContext context) {
    return switch (this) {
      Enum$InvoicePeriodicity.NONE => context.l10n.psnopNone,
      Enum$InvoicePeriodicity.DAILY => context.l10n.daily,
      Enum$InvoicePeriodicity.WEEKLY => context.l10n.weekly,
      Enum$InvoicePeriodicity.$unknown => '',
    };
  }
}
