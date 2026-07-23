import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:flutter/widgets.dart';

extension IdentificationTypeExtension on Enum$IdentificationType {
  String displayString(BuildContext context) {
    switch (this) {
      case Enum$IdentificationType.ADDRESS_ID:
        return context.l10n.proofOfAddress;
      case Enum$IdentificationType.PHOTO_ID:
        return context.l10n.proofOfIdentity;
      case Enum$IdentificationType.SIGNATURE:
        return context.l10n.signatureLabel;
      case Enum$IdentificationType.BUSINESS_DOCUMENT:
        return context.l10n.other;
      case Enum$IdentificationType.NONE:
      case Enum$IdentificationType.$unknown:
        return context.l10n.none;
    }
  }
}
