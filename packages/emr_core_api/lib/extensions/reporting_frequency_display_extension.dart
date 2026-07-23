import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/widgets.dart';

extension ReportingFrequencyDisplayExtension on String {
  String reportingFrequencyDisplayString(BuildContext context) {
    return switch (this) {
      'Daily' => context.l10n.daily,
      'Weekly' => context.l10n.weekly,
      'Monthly' => context.l10n.monthly,
      _ => this,
    };
  }
}
