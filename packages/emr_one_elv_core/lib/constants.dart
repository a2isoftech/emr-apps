import 'package:flutter/material.dart';

class ElvConstants {
  static const double vehicleLookUpWidth = 800;
  static const double flyoutBreakPoint = 900;
  static const int defaultPageSize = 25;
  static Color elvBlueHighlight = Colors.lightBlueAccent.withAlpha(26);
  static const Color elvLightBlue = Color(0xFF279DD4);
  static const int maximumWheelOptionCount = 6;
  static const String carbodyAdjustment = 'CARBODY';
  static const String catAdjustment = 'CAT';
  static const String ldecashAccountNumber = 'LDECASH';
  static const String deliveryTypeDelivered = 'Delivered';
  static const String deliveryTypeCollected = 'Collected';

  static const String aiConfirmRequest = 'Elv Confrim Quote: Request';
  static const String aiConfirmResponse = 'Elv Confrim Quote: Response';
  static const String aiSendEmailRequest = 'Elv Send Email: Request';
  static const String aiSendEmailResponse = 'Elv Send Email: Response';
  static const String loggerCollectionOperatorError =
      'Elv Get Collection Operator for Haulage Price Matrices';

  static const String quoteSourceQuickQuote = 'QuickQuote';
  static const String quoteSourceVinScrap = 'VinScrap';

  //permissions
  static const viewVINScrap = 'permissions/elv/vinscrap/view';
  static const viewElvT2 = 'permissions/elv/trade2/view';
  static const viewElvQuotes = 'permissions/elv/quotes/view';
  static const elvReadOnly = 'permissions/elv/quotes/summary/read';
  static const viewElvInspection = 'permissions/elv/inspection/view';
  static const viewElvDismantle = 'permissions/elv/dismantling/view';
  static const String allowInspectionReopen =
      'permissions/elv/allowInspectionReopen';
  static const String allowEditBankDetails =
      'permissions/elv/modifyRetailAccountBankDetails';
  static const viewElvRaven = 'permissions/elv/viewElvRaven';

  // elvConfigConstants
  static const String elvUsaTreatHybridAsNonQuotable =
      'elvUsaTreatHybridAsNonQuotable';
  static const String elvUkAllowNonQuotable = 'elvUkAllowNonQuotable';
  static const String usaAllowChromeWheels = 'usaAllowChromeWheels';
  static const String ukAllowChromeWheels = 'ukAllowChromeWheels';
  static const String usaDisplayMultipleCats = 'usaDisplayMultipleCats';
  static const String ukDisplayMultipleCats = 'ukDisplayMultipleCats';

  //pricing type
  static const String b2b = 'B2B';

  // before 1980's there were no standard vin length
  static const int minimumUSVinLength = 10;
  static const int standardVinLength = 17;

  //To help with Native Deisgn flows
  static const smallScreenBreakpoint = 764;

  final List<String> titleItems = ['Mr', 'Mrs', 'Miss', 'Ms', 'Dr'];

  final weightConstraints = const BoxConstraints(minWidth: 90, maxWidth: 90);
  final wheelConstraints = const BoxConstraints(maxWidth: 75, minWidth: 75);
  final dropDownConstraints = const BoxConstraints(maxWidth: 90, minWidth: 90);

  static const TextStyle subHeadingStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );

  static const int defaultVehicleCurbWeightLB = 3200;
  static const int defaultVehicleCurbWeightKG = 1500;

  // quoteline constants
  static const String pipeCatalyticConverter = 'Pipe Catalytic Converter';
  static const String preCatalyticConverter = 'Pre Catalytic Converter';
}

class PartPriceDescriptionConstants {
  static const petrol = 'PETROL';
  static const carBody = 'Car Body';
  static const steelWheel = 'Steel';
  static const alloyWheel = 'Alloy';
  static const chromeWheel = 'Chrome';
  static const catConverter = 'Catalytic Converter';
  static const wiringLoom = 'Wiring Loom';
  static const battery = 'Battery';
  static const costDeduction = 'Cost Deduction';
  static const pipeCatalyticConverter = 'Pipe Catalytic Converter';
  static const preCatalyticConverter = 'Pre Catalytic Converter';
  static const haulage = 'Haulage';
}

class ElvQuotesNamedRoutes {
  static const String elvT2deepLink = 'elvQuoteTrade2';
  static const String elvVinScrapQuote = 'elvVinScrapQuote';
  static const String elvVehicleDocuments = 'elvVehicleDocuments';
}

class QuoteSearchConstants {
  static const kYardCode = 'YardCode';
  static const kStatus = 'Status';
  static const kAcquisitionType = 'AcquisitionType';
  static const kCollectionStatus = 'CollectionStatus';
  static const kLeadSource = 'LeadSource';
  static const kCollectionDateRange = 'CollectionDateRange';
  static const kCreatedDateRange = 'CreatedDateRange';
}
