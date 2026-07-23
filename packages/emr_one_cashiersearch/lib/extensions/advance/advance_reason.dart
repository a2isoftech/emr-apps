import 'package:emr_one_cashiersearch/common/enums.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/widgets.dart';

extension AdvanceReasonExtension on AdvanceReason {
  String localizedLabel(BuildContext context) => switch (this) {
        AdvanceReason.commodity => context.l10n.commodity,
        AdvanceReason.haulage => context.l10n.haulage,
        AdvanceReason.cost => context.l10n.cost,
        AdvanceReason.contract => context.l10n.contract,
        AdvanceReason.preInvoice => context.l10n.preInvoice
      };
}
