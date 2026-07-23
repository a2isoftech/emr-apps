import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:flutter/widgets.dart';

extension ContractStatusExtension on Enum$ContractStatus {
  String displayString(BuildContext context) {
    return switch (this) {
      Enum$ContractStatus.OPEN => context.l10n.open,
      Enum$ContractStatus.DRAFT => context.l10n.draft,
      Enum$ContractStatus.HOLD => context.l10n.hold,
      Enum$ContractStatus.COMPLETED_NO_POSITION =>
        context.l10n.completedNoPosition,
      Enum$ContractStatus.CANCELLED_NO_POSITION =>
        context.l10n.cancelledNoPosition,
      Enum$ContractStatus.ON_STOP_NO_POSITION => context.l10n.onStopNoPosition,
      Enum$ContractStatus.CLOSED => context.l10n.closed,
      Enum$ContractStatus.$unknown => '',
    };
  }
}
