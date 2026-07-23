import 'package:emr_one_cashiersearch/common/enums.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

extension AdvanceTermTypeExtension on AdvanceTermType {
  String localizedLabel(BuildContext context) => switch (this) {
        AdvanceTermType.percentage => context.l10n.percentageOfAdvance,
        AdvanceTermType.fixed => context.l10n.fixedPerVisit,
        AdvanceTermType.partialPay => context.l10n.partialPay,
      };
}
