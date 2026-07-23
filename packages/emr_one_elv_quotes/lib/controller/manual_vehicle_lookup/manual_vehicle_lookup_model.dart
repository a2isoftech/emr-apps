import 'package:emr_one_elv_core/models/quote_models/quote_models.dart';

class ManualVehicleLookupModel {
  ManualVehicleLookupModel({
    required this.models,
    required this.fuel,
    required this.transmissions,
    required this.variants,
    required this.bodyTypes,
    required this.doors,
    required this.years,
    required this.engineSizes,
    required this.makes,
    required this.results,
    required this.resultsFound,
    this.selectedBodyType,
    this.selectedDoors,
    this.selectedEngineSize,
    this.selectedFuel,
    this.selectedMake,
    this.selectedModel,
    this.selectedTransmission,
    this.selectedVariant,
    this.selectedYear,
    this.identifier,
  });
  factory ManualVehicleLookupModel.initial() => ManualVehicleLookupModel(
        models: [],
        fuel: [],
        transmissions: [],
        variants: [],
        bodyTypes: [],
        doors: [],
        years: [],
        engineSizes: [],
        makes: [],
        results: [],
        resultsFound: 0,
        selectedYear: DateTime.now().year.toString(),
      );

  List<String> makes;
  List<String> models;
  List<String> fuel;
  List<String> transmissions;
  List<String> variants;
  List<String> bodyTypes;
  List<String> doors;
  List<String> years;
  List<String> engineSizes;
  List<VehicleDetail> results;
  int resultsFound;

  String? selectedBodyType;
  String? selectedDoors;
  String? selectedEngineSize;
  String? selectedFuel;
  String? selectedMake;
  String? selectedModel;
  String? selectedTransmission;
  String? selectedVariant;
  String? selectedYear;
  String? identifier;
}
