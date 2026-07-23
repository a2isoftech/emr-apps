import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/widgets.dart';

extension SelfBillingFrequencyExtension on Enum$SelfBillingFrequency {
  String displayString(BuildContext context) {
    return switch (this) {
      Enum$SelfBillingFrequency.NONE => context.l10n.psnopNone,
      Enum$SelfBillingFrequency.DAILY => context.l10n.daily,
      Enum$SelfBillingFrequency.WEEKLY => context.l10n.weekly,
      Enum$SelfBillingFrequency.FORTNIGHTLY => context.l10n.fortnightly,
      Enum$SelfBillingFrequency.MONTHLY => context.l10n.monthly,
      Enum$SelfBillingFrequency.$unknown => '',
    };
  }
}
