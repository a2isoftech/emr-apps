abstract class CashierConstants {
  static const contactType = 'MAIN';
  static const ukDrivingLicense = 'UK_DRIVING_LICENSE';
  static const dateTimeFormat = 'y MMM d E h:mm a';
  static const dateOnlyFormat = 'E, MMM d, y';
  static const failedtoSave = 'Failed to Print and Pay Ticket';
  static const invalidUri = 'An invalid request URI was provided';
  static const String kDeductionTypeDirt = 'deductionTypes/Dirt';
  static const String kDeductionTypeValue = 'deductionTypes/Value';
  static const String kDeductionTypeWeight = 'deductionTypes/Weight';
  static const String kExtendedPropertyTechemetCatPrice =
      'extendedProperties/TechemetCatPrice';
  static const String kExtendedPropertyWeighbridgeProfileId =
      'ExtendedProperties/WeighbridgeProfileId';
  static const String kExtendedPropertyWeightChange =
      'extendedProperties/WeightChange';
  static const String kExtendedPropertyRateChange =
      'extendedProperties/RateChange';
  static const String kExtendedPropertyDirtChange =
      'extendedProperties/DirtChange';
  static const String kExtendedPropertyRemittancePrinted =
      'extendedProperties/RemittancePrinted';
  static const String mediaSignatureBasePath = 'com.emrgroup.accounts';
  static const String consignmentSignatureUrl =
      'workflows/ticket/consignmentsignature';
}

abstract class YardErrorCodes {
  static const paymentMethodsNotFound = 'PAYMENT_METHODS_NOT_FOUND';
}

class RegularExpressions {
  static RegExp amount = RegExp(r'^[0-9]{0,6}(\.[0-9]{1,2})?$');
  static RegExp rateAmount = RegExp(r'^[0-9]{1,6}(\.[0-9]{1,4})?$');
}
