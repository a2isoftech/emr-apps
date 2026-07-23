import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:flutter/widgets.dart';

extension IdentificationSubTypeExtension on Enum$IdentificationSubType {
  String displayString(BuildContext context) {
    switch (this) {
      case Enum$IdentificationSubType.$unknown:
      case Enum$IdentificationSubType.NONE:
        return context.l10n.none;
      case Enum$IdentificationSubType.BANK_OR_BUILDING_SOCIETY_STATEMENT:
        return context.l10n.identificationSubtypeBankOrBuildingSocietyStatement;
      case Enum$IdentificationSubType.BIOMETRIC_IMMIGRATION_DOCUMENT:
        return context.l10n.identificationSubtypeBiometricImmigrationDocument;
      case Enum$IdentificationSubType.COUNCIL_RENT_BOOK:
        return context.l10n.identificationSubtypeCouncilRentBook;
      case Enum$IdentificationSubType.COUNCIL_TAX_DEMAND_LETTER:
        return context.l10n.identificationSubtypeCouncilTaxDemandLetter;
      case Enum$IdentificationSubType.CREDIT_OR_DEBIT_CARD_STATEMENT:
        return context.l10n.identificationSubtypeCreditOrDebitCardStatement;
      case Enum$IdentificationSubType.EU_DRIVING_LICENSE:
        return context.l10n.identificationSubtypeEuDrivingLicense;
      case Enum$IdentificationSubType.EU_NATIONAL_ID_CARD:
        return context.l10n.identificationSubtypeEuNationalIdCard;
      case Enum$IdentificationSubType.HMRC_CORRESPONDANCE:
        return context.l10n.identificationSubtypeHmrcCorrespondance;
      case Enum$IdentificationSubType.MORTGAGE_STATEMENT:
        return context.l10n.identificationSubtypeMortgageStatement;
      case Enum$IdentificationSubType.OTHER:
        return context.l10n.other;
      case Enum$IdentificationSubType.UKEUEEA_PASSPORT:
        return context.l10n.identificationSubtypeUkEuEeaPassport;
      case Enum$IdentificationSubType.UKEU_DRIVING_LICENSE:
        return context.l10n.identificationSubtypeUkEuDrivingLicense;
      case Enum$IdentificationSubType.UK_DRIVING_LICENSE:
        return context.l10n.identificationSubtypeUkDrivingLicense;
      case Enum$IdentificationSubType.UK_FIREARM_LICENSE:
        return context.l10n.identificationSubtypeUkFirearmsLicense;
      case Enum$IdentificationSubType.USA_DRIVER_LICENCE:
        return context.l10n.identificationSubtypeUsaDrivingLicense;
      case Enum$IdentificationSubType.UTILITY_BILL:
        return context.l10n.utilityBill;
      case Enum$IdentificationSubType.WASTE_TRANSFER_NOTE:
        return context.l10n.identificationSubtypeWasteTransferNote;
    }
  }
}
