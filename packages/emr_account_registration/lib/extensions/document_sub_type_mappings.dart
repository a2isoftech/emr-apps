import 'package:emr_account_registration/signup.dart';
import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

extension DocumentSubTypeExtensions on Enum$IdentificationSubType {
  String displayTitle(String countryCode) {
    switch (this) {
      case Enum$IdentificationSubType.UKEUEEA_PASSPORT:
        return 'Passport';
      case Enum$IdentificationSubType.UK_DRIVING_LICENSE:
        return countryCode.isCountryUK()
            ? 'Driving Licence'
            : 'Driving License';
      case Enum$IdentificationSubType.BIOMETRIC_IMMIGRATION_DOCUMENT:
        return 'UK Biometric Immigration Document';
      case Enum$IdentificationSubType.EU_NATIONAL_ID_CARD:
        return 'EU National ID Card';
      case Enum$IdentificationSubType.UK_FIREARM_LICENSE:
        return 'UK Firearm / Shotgun Licence';
      case Enum$IdentificationSubType.NONE:
        return 'None';
      case Enum$IdentificationSubType.UTILITY_BILL:
        return 'Utility bill (excluding mobile phone)';
      case Enum$IdentificationSubType.COUNCIL_RENT_BOOK:
        return 'Council Rent Book';
      case Enum$IdentificationSubType.BANK_OR_BUILDING_SOCIETY_STATEMENT:
        return 'Bank or Building Society statement';
      case Enum$IdentificationSubType.COUNCIL_TAX_DEMAND_LETTER:
        return 'Council tax demand letter or statement';
      case Enum$IdentificationSubType.USA_DRIVER_LICENCE:
        return "US Driver's License";
      case Enum$IdentificationSubType.OTHER:
        return 'Other';
      case Enum$IdentificationSubType.CREDIT_OR_DEBIT_CARD_STATEMENT:
        return 'Credit or Debit Card statement';
      case Enum$IdentificationSubType.UKEU_DRIVING_LICENSE:
        return 'UK / EU Driving License';
      case Enum$IdentificationSubType.EU_DRIVING_LICENSE:
        return 'EU Driving License';
      case Enum$IdentificationSubType.HMRC_CORRESPONDANCE:
        return 'HMRC correspondence';
      case Enum$IdentificationSubType.MORTGAGE_STATEMENT:
        return 'Mortgage statement';
      case Enum$IdentificationSubType.WASTE_TRANSFER_NOTE:
        return 'Waste Transfer Note';
      case Enum$IdentificationSubType.$unknown:
        return '';
    }
  }

  String get idType {
    switch (this) {
      case Enum$IdentificationSubType.NONE:
        return 'NONE';
      case Enum$IdentificationSubType.UK_DRIVING_LICENSE:
        return 'UKDL';
      case Enum$IdentificationSubType.UKEUEEA_PASSPORT:
        return 'UKPP';
      case Enum$IdentificationSubType.EU_NATIONAL_ID_CARD:
        return 'EU_NATIONAL_ID_CARD';
      case Enum$IdentificationSubType.UTILITY_BILL:
        return 'UTILITY_BILL';
      case Enum$IdentificationSubType.COUNCIL_RENT_BOOK:
        return 'COUNCIL_RENT_BOOK';
      case Enum$IdentificationSubType.BANK_OR_BUILDING_SOCIETY_STATEMENT:
        return 'BANK_OR_BUILDING_SOCIETY_STATEMENT';
      case Enum$IdentificationSubType.COUNCIL_TAX_DEMAND_LETTER:
        return 'COUNCIL_TAX_DEMAND_LETTER';
      case Enum$IdentificationSubType.USA_DRIVER_LICENCE:
        return 'USDL';
      case Enum$IdentificationSubType.OTHER:
        return 'OTHER';
      case Enum$IdentificationSubType.CREDIT_OR_DEBIT_CARD_STATEMENT:
        return 'CREDIT_OR_DEBIT_CARD_STATEMENT';
      case Enum$IdentificationSubType.UKEU_DRIVING_LICENSE:
        return 'UKEU_DRIVING_LICENSE';
      case Enum$IdentificationSubType.BIOMETRIC_IMMIGRATION_DOCUMENT:
        return 'BIOMETRIC_IMMIGRATION_DOCUMENT';
      case Enum$IdentificationSubType.EU_DRIVING_LICENSE:
        return 'EU_DRIVING_LICENSE';
      case Enum$IdentificationSubType.HMRC_CORRESPONDANCE:
        return 'HMRC_CORRESPONDANCE';
      case Enum$IdentificationSubType.MORTGAGE_STATEMENT:
        return 'MORTGAGE_STATEMENT';
      case Enum$IdentificationSubType.UK_FIREARM_LICENSE:
        return 'UK_FIREARM_LICENSE';
      case Enum$IdentificationSubType.WASTE_TRANSFER_NOTE:
        return 'WASTE_TRANSFER_NOTE';
      case Enum$IdentificationSubType.$unknown:
        return r'$unknown';
    }
  }

  bool get recommended {
    switch (this) {
      case Enum$IdentificationSubType.UKEUEEA_PASSPORT:
        return false;
      case Enum$IdentificationSubType.UK_DRIVING_LICENSE:
        return true;
      case Enum$IdentificationSubType.BIOMETRIC_IMMIGRATION_DOCUMENT:
        return false;
      case Enum$IdentificationSubType.EU_NATIONAL_ID_CARD:
        return false;
      case Enum$IdentificationSubType.UK_FIREARM_LICENSE:
        return false;
      // ignore: no_default_cases
      default:
        return false;
    }
  }

  Future<Object?> Function() onTap(
    BuildContext context,
    Enum$IdentificationType documentType,
    String caption,
  ) {
    return () => context.pushNamed(
      documentType == Enum$IdentificationType.PHOTO_ID
          ? AccountRegistrationNamedRoutes.customerPortalUploadIdentityProof
          : AccountRegistrationNamedRoutes.customerPortalUploadAddressProof,
      params: {
        'proofName': toString().replaceFirst(
          r'Enum$IdentificationSubType.',
          '',
        ),
        'caption': caption,
      },
    );
  }
}
