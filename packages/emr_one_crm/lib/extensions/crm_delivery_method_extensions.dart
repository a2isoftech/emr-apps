import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/emr_one_crm_constants.dart';
import 'package:flutter/widgets.dart';

extension CrmDeliveryMethodExtensions on CrmDeliveryMethod {
  /// Convert a delivery method into a localised string.
  String displayName(BuildContext context) {
    switch (this) {
      case CrmDeliveryMethod.collected:
        return context.l10n.collected;
      case CrmDeliveryMethod.collectedFullyCharged:
        return context.l10n.collectedFullyCharged;
      case CrmDeliveryMethod.collectedLessCharge:
        return context.l10n.collectedLessCharge;
      case CrmDeliveryMethod.delivered:
        return context.l10n.delivered;
      case CrmDeliveryMethod.both:
      return context.l10n.both;
    }
  }
}

extension CrmDeliveryMethodSetExtensions on Set<CrmDeliveryMethod> {
  /// Returns a comma separated list of delivery methods.
  String displayNames(BuildContext context) =>
      (map((e) => e.displayName(context)).toList()..sort()).join(', ');
}
