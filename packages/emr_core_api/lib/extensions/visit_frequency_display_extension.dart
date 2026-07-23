import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/widgets.dart';

extension VisitFrequencyDisplayExtension on Enum$VisitFrequency {
  String visitFrequencyDisplayString(BuildContext context) {
    return switch (this) {
      Enum$VisitFrequency.AD_HOC => context.l10n.adHoc,
      Enum$VisitFrequency.DAILY => context.l10n.daily,
      Enum$VisitFrequency.WEEKLY => context.l10n.weekly,
      Enum$VisitFrequency.BI_WEEKLY => context.l10n.biWeekly,
      Enum$VisitFrequency.MONTHLY => context.l10n.monthly,
      Enum$VisitFrequency.BI_MONTHLY => context.l10n.biMonthly,
      Enum$VisitFrequency.YEARLY => context.l10n.year,
      Enum$VisitFrequency.ONE_OFF => context.l10n.oneOff,
      Enum$VisitFrequency.$unknown => '',
    };
  }
}
