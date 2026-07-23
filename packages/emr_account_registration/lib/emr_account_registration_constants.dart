import 'dart:ui';

import 'package:emr_one_core/eo_constants.dart';

class AccountRegistrationNamedRoutes {
  static const String customerPortalAlmostDone = 'almostdone';
  static const String customerPortalSuccess = 'success';
  static const String customerPortalFailure = 'failure';
  static const String customerPortalPaymentDetails = 'paymentdetails';
  static const String customerPortalIdentityProof = 'identityProof';
  static const String customerPortalAddressProof = 'addressProof';
  static const String customerPortalUploadIdentityProof = 'uploadIdentityProof';
  static const String customerPortalUploadAddressProof = 'uploadAddressProof';
  static const String customerPortalDocumentDetails = 'documentdetails';
  static const String customerPortalContactPrefs = 'contactPrefs';
  static const String customerPortalCountrySelection = 'countrySelection';
  static const String customerPortalRegister = 'register';
  static const String customerPortalResetRegister = 'reset-register';
  static const String customerPortalTriage = 'triage';
}

class ConfigKeys {
  static const String apimKeyName = 'apimKey';
  static const String visitFrequencies = 'visitFrequencies';
}

class AccountRegistrationTelemetry {
  static const String kSuccessParamName = 'success';
  static const String kGetAccountDetails = 'getAccountDetails';
  static const String kValidateBankAccount = 'validateBankAccount';
  static const String kGetContactDetails = 'getContactDetails';
  static const String kGetSignupModel = 'getSignupModel';
  static const String kGetMediaApiUrlWithToken = 'getMediaApiUrlWithToken';
  static const String kCompressImage = 'compressImage';
  static const String kConvertProspectToRetail =
      'convertProspectToRetailAccount';
  static const String kUploadDocumentData = 'uploadDocumentData';
  static const String kGetDocumentData = 'getDocumentData';
  static const String kAddPaymentDetails = 'addPaymentDetails';
  static const String kCreateAccount = 'createAccount';
}

class AccountRegistrationSettings {
  static const int errorDisplayDuration = 3;

  static const String duplicateAccountCode = '101';
  static const String noAccountFound = '1';
  static const warningColor = Color(0xFFEDCE2C);
  static const Color defaultuploadImageColor = Color.fromARGB(255, 36, 97, 147);
  static const String usInfoEmail = 'usinfo@emrgroup.com';

  static const int uploadedImageQuality = 70;
  static const double uploadedImageMaxWidth = 1280;
  static const double uploadedImageMaxHeight = 1280;
}

class AccountRegistrationStrings {
  static const String defaultCountry = 'UK';
}

class AccountRegistrationInsets {
  static const double gutterTimes15 = Insets.gutter * 15;
  static const double gutterTimes10 = Insets.gutter * 10;
  static const double gutterTimes5 = Insets.gutter * 5;
}
