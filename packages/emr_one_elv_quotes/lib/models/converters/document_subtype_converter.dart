import 'package:emr_one_elv_core/models/account_models/account_models.dart';

String documentSubTypeConverter(DocumentSubType type) {
  switch (type) {
    case DocumentSubType.none:
      return 'None';
    case DocumentSubType.ukDrivingLicense:
      return 'UK Driving License';
    case DocumentSubType.ukEuEeaPassport:
      return 'UK/EU/EEA Passport';
    case DocumentSubType.euNationalIdCard:
      return 'EU National ID Card';
    case DocumentSubType.utilityBill:
      return 'Utility Bill';
    case DocumentSubType.bankStatement:
      return 'Bank Statement';
    case DocumentSubType.councilTaxDemandLetter:
      return 'Council Tax Demand Letter';
    case DocumentSubType.creditDebitCardStatement:
      return 'Credit/Debit Card Statement';
    case DocumentSubType.ukEuDrivingLicense:
      return 'UK/EU Driving License';
    case DocumentSubType.biometricImmigrationDocument:
      return 'Biometric Immigration Document';
    case DocumentSubType.euDrivingLicense:
      return 'EU Driving License';
    case DocumentSubType.hmrcCorrespondance:
      return 'HMRC Correspondance';
    case DocumentSubType.mortgageStatement:
      return 'Mortgage Statement';
    case DocumentSubType.ukFirearmLicense:
      return 'UK Firearm License';
  }
  return 'Unknown';
}
