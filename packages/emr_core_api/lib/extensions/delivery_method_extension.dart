import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:flutter/widgets.dart';

extension DeliveryMethodExtension on Enum$DeliveryMethod {
  String displayString(BuildContext context) {
    return switch (this) {
      Enum$DeliveryMethod.NONE => context.l10n.none,
      Enum$DeliveryMethod.DELIVERED => context.l10n.delivered,
      Enum$DeliveryMethod.COLLECTED => context.l10n.collected,
      Enum$DeliveryMethod.COLLECTED_FULLY_CHARGED =>
        context.l10n.collectedFullyCharged,
      Enum$DeliveryMethod.COLLECTED_LESS_CHARGE =>
        context.l10n.collectedLessCharge,
      Enum$DeliveryMethod.$unknown => '',
    };
  }
}
