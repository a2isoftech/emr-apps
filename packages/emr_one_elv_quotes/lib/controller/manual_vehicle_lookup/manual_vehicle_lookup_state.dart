import 'package:emr_one_elv_quotes/controller/manual_vehicle_lookup/manual_vehicle_lookup_model.dart';
import 'package:emr_one_elv_quotes/services/vehicle_service.dart';

class ManualVehicleLookUpState {
  ManualVehicleLookUpState();
  ManualVehicleLookupModel model = ManualVehicleLookupModel.initial();

  Future<void> manualVehicleInit({
    required VehicleService vehicleService,
  }) async {
    final makes = await vehicleService.getMakes();

    model
      ..makes = makes ?? []
      ..models = []
      ..bodyTypes = []
      ..doors = []
      ..engineSizes = []
      ..fuel = []
      ..transmissions = []
      ..variants = []
      ..years = []
      ..resultsFound = 0
      ..results = []
      ..selectedBodyType = null
      ..selectedDoors = null
      ..selectedEngineSize = null
      ..selectedFuel = null
      ..selectedMake = null
      ..selectedModel = null
      ..selectedTransmission = null
      ..selectedVariant = null
      ..selectedYear = null
      ..identifier = null;
  }

  void manualVehicleLookupReset() {
    model
      ..models = []
      ..bodyTypes = []
      ..doors = []
      ..engineSizes = []
      ..fuel = []
      ..transmissions = []
      ..variants = []
      ..years = []
      ..resultsFound = 0
      ..results = []
      ..selectedBodyType = null
      ..selectedDoors = null
      ..selectedEngineSize = null
      ..selectedFuel = null
      ..selectedMake = null
      ..selectedModel = null
      ..selectedTransmission = null
      ..selectedVariant = null
      ..selectedYear = null;
  }

  Future<void> manualVehicleUpdateMake({
    required String make,
    required VehicleService vehicleService,
    String? identifier,
  }) async {
    final models = await vehicleService.getModels(make);
    final makes = model.makes;
    model = ManualVehicleLookupModel.initial()
      ..makes = makes
      ..identifier = identifier;

    model
      ..selectedMake = make
      ..models = models ?? [];
  }

  Future<void> manualVehicleUpdateModel({
    required String vehicleModel,
    required VehicleService vehicleService,
  }) async {
    final results = await vehicleService.refineManualVehicleSearch(
      model.selectedMake!,
      vehicleModel,
      model.identifier ?? '',
    );

    model
      ..selectedModel = vehicleModel
      ..bodyTypes = results!.bodyType ?? model.bodyTypes
      ..doors = results.doors ?? model.doors
      ..engineSizes = results.engineSize ?? model.engineSizes
      ..fuel = results.fuel ?? model.fuel
      ..transmissions = results.transmission ?? model.transmissions
      ..variants = results.variant ?? model.variants
      ..years = results.year ?? model.years
      ..results = results.results
      ..resultsFound = results.resultsCount
      ..selectedBodyType = null
      ..selectedDoors = null
      ..selectedEngineSize = null
      ..selectedFuel = null
      ..selectedTransmission = null
      ..selectedVariant = null
      ..selectedYear = null;
  }

  Future<void> manualVehicleUpdateOptions({
    required VehicleService vehicleService,
    String? bodyType,
    String? doors,
    String? engineSize,
    String? fuel,
    String? transmission,
    String? variant,
    String? year,
  }) async {
    model
      ..selectedDoors = doors ?? model.selectedDoors
      ..selectedBodyType = bodyType ?? model.selectedBodyType
      ..selectedEngineSize = engineSize ?? model.selectedEngineSize
      ..selectedFuel = fuel ?? model.selectedFuel
      ..selectedTransmission = transmission ?? model.selectedTransmission
      ..selectedVariant = variant ?? model.selectedVariant
      ..selectedYear = year ?? model.selectedYear;

    final repsonse = await vehicleService.refineManualVehicleSearch(
      model.selectedMake!,
      model.selectedModel!,
      model.identifier ?? '',
      bodyType: model.selectedBodyType,
      doors: model.selectedDoors,
      engineSize: model.selectedEngineSize,
      fuel: model.selectedFuel,
      transmission: model.selectedTransmission,
      variant: model.selectedVariant,
      year: model.selectedYear,
    );

    model
      ..bodyTypes = _workoutList(
        repsonse!.bodyType,
        model.bodyTypes,
        model.selectedBodyType,
      )
      ..doors = _workoutList(
        repsonse.doors,
        model.doors,
        model.selectedDoors,
      )
      ..engineSizes = _workoutList(
        repsonse.engineSize,
        model.engineSizes,
        model.selectedEngineSize,
      )
      ..fuel = _workoutList(
        repsonse.fuel,
        model.fuel,
        model.selectedFuel,
      )
      ..transmissions = _workoutList(
        repsonse.transmission,
        model.transmissions,
        model.selectedTransmission,
      )
      ..variants = _workoutList(
        repsonse.variant,
        model.variants,
        model.selectedVariant,
      )
      ..years = _workoutList(
        repsonse.year,
        model.years,
        model.selectedYear,
      )
      ..results = repsonse.results
      ..resultsFound = repsonse.resultsCount;
  }

  List<T> _workoutList<T>(
    List<T>? returnedList,
    List<T>? current,
    T? selected,
  ) {
    return (returnedList ?? []).isEmpty && selected == null
        ? (current ?? [])
        : selected != null
            ? [selected]
            : (returnedList ?? []);
  }

  Future<void> manualVehicleClearOptions({
    required VehicleService vehicleService,
    bool? bodyType,
    bool? doors,
    bool? engineSize,
    bool? fuel,
    bool? transmission,
    bool? variant,
    bool? year,
  }) async {
    model
      ..selectedDoors = doors != null ? null : model.selectedDoors
      ..selectedBodyType = bodyType != null ? null : model.selectedBodyType
      ..selectedEngineSize =
          engineSize != null ? null : model.selectedEngineSize
      ..selectedFuel = fuel != null ? null : model.selectedFuel
      ..selectedTransmission =
          transmission != null ? null : model.selectedTransmission
      ..selectedVariant = variant != null ? null : model.selectedVariant
      ..selectedYear = year != null ? null : model.selectedYear;
    await manualVehicleUpdateOptions(
      vehicleService: vehicleService,
    );
  }
}
