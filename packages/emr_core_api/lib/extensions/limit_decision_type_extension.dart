import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/widgets.dart';

extension LimitDecisionTypeExtension on Enum$LimitDecisionType {
  String displayString(BuildContext context) {
    return switch (this) {
      Enum$LimitDecisionType.NONE => context.l10n.psnopNone,
      Enum$LimitDecisionType.DIRECT_COVER => context.l10n.directCover,
      Enum$LimitDecisionType.INDIRECT_COVER => context.l10n.indirectCover,
      Enum$LimitDecisionType.UNINSURED => context.l10n.uninsured,
      Enum$LimitDecisionType.$unknown => '',
    };
  }
}
