import 'package:emr_one_core/eo_constants.dart';
import 'package:flutter/material.dart';

class PortalSettings {
  static const int errorDisplayDuration = 3;
  static const int feeFasterPay = 2;
  static const int paymentMethodSameDayPayment = 7;
  static const int paymentMethodNextDayPayment = 8;
  static const String paymentStatusNotAvailable = 'NotAvailable';
  static const String paymentStatusPaid = 'Paid';
  static const String paymentStatusNotPaid = 'NotPaid';
  static const String paymentStatusRequested = 'Requested';
  static const String paymentStatusCallPaymentCtr = 'CallPaymentCentre';
  static const String paymentStatusChoose = 'ChoosePaymentMethod';
  static const String title = 'EMR Self-Serve Portal';
  static const String envLive = 'live';
  static const String duplicateAccountCode = '101';
  static const String noAccountFound = '1';
}

class PortalColours {
  static const warningColor = Color(0xFFEDCE2C);
}

class PortalInsets {
  static const double gutterTimes15 = Insets.gutter * 15;
  static const double gutterTimes10 = Insets.gutter * 10;
  static const double gutterTimes5 = Insets.gutter * 5;
}

class PortalNamedRoutes {
  static const String customerPortalContactPrefs = 'contactPrefs';
  static const String customerPortalScanTicket = 'scanTicket';
  static const String customerPortalScanTicketLink = 'scanTicketLink';
  static const String customerPortalTickets = 'transactions';
  static const String customerPortalPriceLists = 'pricelists';
  static const String customerPortalRemittances = 'remittance';
}

class EmrOnePortalTelemetry {
  static const String kUnknown = '<unknown>';
  static const String kTypeParamName = 'type';
  static const String kSuccessParamName = 'success';
  static const String kGetSignupModel = 'getSignupModel';
  static const String kGetAccountDetails = 'getAccountDetails';
  static const String kGetBankDetails = 'getBankDetails';
  static const String kGetContactDetails = 'getContactDetails';
  static const String kCreateAccount = 'createAccount';
  static const String kUpdateContactPreferences = 'updateContactPreferences';
  static const String kConvertProspectToRetail =
      'convertProspectToRetailAccount';
  static const String kAddPaymentDetails = 'addPaymentDetails';
  static const String kGetMediaApiUrlWithToken = 'getMediaApiUrlWithToken';
  static const String kValidateBankAccount = 'validateBankAccount';
  static const String kGetDocumentData = 'getDocumentData';
  static const String kUploadDocumentData = 'uploadDocumentData';
  static const String kGetTicket = 'getTicket';
  static const String kCompressImage = 'compressImage';
}

class PortalThemeColours {
  static const Color defaultuploadImageColor = Color.fromARGB(255, 36, 97, 147);
}

class PortalStrings {
  static const String defaultCountry = 'UK';
  static const String creditNoteEntryPageTitle = 'Credit Note ENTRY';
  static const String invoicentryPageTitle = 'invoice ENTRY';
  static const String uploadcreditNote = 'uploadcredit Note';
  static const String uploadinvoice = 'uploadinvoice';
  static const String pdf = 'pdf';
  static const String noextension = 'no_extension';
  static const String creditNotedate = 'creditNotedate';
  static const String pendingInvoice = 'Pending Invoice';
  static const String finalInvoice = 'Final Invoice';
  static const String outstanding = 'Outstanding';
  static const String paid = 'Paid';
  static const String remittance = 'Remittance Page';
  static const String statement = 'Statement Page';
  static const String contactPreferencePageTitle = 'Contact Preferences';
  static const String ferrous = 'Ferrous';
  static const String yard = 'Yard';
  static const String contactUsPageTitle = 'Contact Us';
  static const String supplierAccountContactUsEmail =
      'accountspayable@emrgroup.com';
  static const String netherlandAccountContactUsEmail = 'nlinfo@emrgroup.com';
  static const String usInfoEmail = 'usinfo@emrgroup.com';
  static const String signUp = 'Sign-Up';
  static const String defaultProductType = 'Copper';
  static const String nonFerrous = 'Non-Ferrous';
}

class PortalComapnyCodeConstants {
  static const List<String> allowedCompanies = ['101', '129', '132'];
}
