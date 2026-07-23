import 'package:emr_one_elv_quotes/pages/quick_quotes/controller/controller_imports.dart';

class VINScrapState {
  VINScrapState(
    this.batchQuote,
    this.vinSearchText,
    this.yard,
    this.speculativeQuote,
    this.notes,
  );

  factory VINScrapState.init() => VINScrapState(
        null,
        null,
        null,
        null,
        null,
      )..vehicleDescriptions.clear();

  String? vinSearchText;
  List<VehicleDetail> vehicleDescriptions = [];
  SpeculativeQuote? speculativeQuote;
  BatchQuoteModel? batchQuote;
  Yard? yard;
  Account? account;
  List<Yard> otherYards = [];
  String territoryCode = ElvTerritory.usa.territoryCode();
  bool vehicleSearchComplete = true;
  bool apiError = false;
  String apiErrorMessage = '';
  List<String> failedVrnLookUps = [];
  String? notes;
}
