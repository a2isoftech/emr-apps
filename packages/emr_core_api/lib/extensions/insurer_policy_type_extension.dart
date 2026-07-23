import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/widgets.dart';

extension InsurerPolicyTypeExtension on Enum$InsurerPolicyType {
  String displayString(BuildContext context) {
    return switch (this) {
      Enum$InsurerPolicyType.NONE => context.l10n.psnopNone,
      Enum$InsurerPolicyType.ATRADIUS_P1 => context.l10n.atradiusP1,
      Enum$InsurerPolicyType.ATRADIUS_P2 => context.l10n.atradiusP2,
      Enum$InsurerPolicyType.EULER_USA => context.l10n.eulerUSA,
      Enum$InsurerPolicyType.EULER_UK => context.l10n.eulerUK,
      Enum$InsurerPolicyType.EQUINOX_TOPUP => context.l10n.equinoxTopup,
      Enum$InsurerPolicyType.ZURICH => context.l10n.zurich,
      Enum$InsurerPolicyType.$unknown => '',
    };
  }
}
