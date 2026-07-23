import 'package:collection/collection.dart';
import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_core/controllers/settings_controller.dart';
import 'package:emr_one_elv_dismantling/extensions/enum_part_type_extension.dart';
import 'package:emr_one_elv_dismantling/extensions/group_and_select_first_extension.dart';
import 'package:emr_one_elv_dismantling/mappers/part_type_mapper.dart';
import 'package:emr_one_elv_dismantling/models/dismantling_vehicle.dart';
import 'package:emr_one_elv_dismantling/models/part_to_move_detail.dart';
import 'package:emr_one_elv_dismantling/models/vehicle_part.dart';
import 'package:emr_one_elv_dismantling/models/vehicle_part_inventory_location.dart';
import 'package:emr_one_elv_dismantling/models/weight.dart';
import 'package:emr_one_elv_dismantling/services/dismantling_service.dart';
import 'package:flutter/material.dart';

class DismantleController extends ChangeNotifier {
  DismantleController({
    required this.dismantlingService,
    required this.settingsController,
  });
  final DismantlingService dismantlingService;
  final SettingsController settingsController;

  late DismantlingVehicle vehicle;
  late VehiclePart? selectedPart;
  late Map<Enum$PartType, int> partCountToMove;
  late double carBodyNetWeight;
  late Map<Enum$PartType, String>? defaultInventoryLocationCodes;

  void init(DismantlingVehicle dismantlingVehicle) {
    vehicle = dismantlingVehicle;
    selectedPart = null;
    partCountToMove =
        Enum$PartType.values.asMap().map((key, value) => MapEntry(value, 1));
    carBodyNetWeight = remainingVehicleWeight().value;
    loadDefaultVehiclePartInventoryLocationCodes();
  }

  void toggleSelectedParts(VehiclePart vehiclePart) {
    selectedPart = vehiclePart;
    setDismantledPartCount(vehiclePart);
    notifyListeners();
  }

  void setDismantledPartCount(VehiclePart vehiclePart) {
    if (vehiclePart.partStatus == Enum$PartStatus.DISMANTLED) {
      partCountToMove[vehiclePart.type] = vehicle.vehicleParts
          .where((p) => p.active && p.partStatus == Enum$PartStatus.DISMANTLED)
          .length;
    }
  }

  void setCarBodyNetWeight(String weight) {
    carBodyNetWeight = double.tryParse(weight) ?? 0;
  }

  Weight remainingVehicleWeight() {
    var vehicleWeight = vehicle.weight?.value ?? 0;
    if (vehicleWeight > 0) {
      final dismantledPartsWeight = vehicle.vehicleParts
          .where(
            (p) => p.active && p.partStatus == Enum$PartStatus.DISMANTLED,
          )
          .map((p) => p.weight.value)
          .fold<double>(0, (value, element) => value + element);
      vehicleWeight -= dismantledPartsWeight;
    }
    return Weight(
      uom: vehicle.weight!.uom,
      value: vehicleWeight,
    );
  }

  void setPartCountToDismantle(Enum$PartType partType, int count) {
    partCountToMove[partType] = count;
    notifyListeners();
  }

  String partNameNotYetDismantled() {
    return getGroupedVehicleParts()
        .where(
          (p) =>
              p.partStatus != Enum$PartStatus.DISMANTLED &&
              p.type != Enum$PartType.CAR_BODY,
        )
        .map((p) => p.type.formattedName)
        .join(', ');
  }

  Map<String, List<Enum$PartType>> getGroupedPartTypes(BuildContext context) {
    final groupedPartTypes = <String, List<Enum$PartType>>{};
    final currentVehicleParts = vehicle.vehicleParts
        .where((vehiclePart) => vehiclePart.active)
        .map((vehiclePart) => vehiclePart.type)
        .toList();
    for (final partType in Enum$PartType.values.whereNot(
      (partType) =>
          partType == Enum$PartType.$unknown ||
          partType == Enum$PartType.CAR_BODY ||
          currentVehicleParts.contains(partType),
    )) {
      groupedPartTypes
          .putIfAbsent(
            PartTypeMapper.getCategory(partType, context),
            () => [],
          )
          .add(partType);
    }

    groupedPartTypes.forEach((category, parts) {
      parts.sort((a, b) => a.formattedName.compareTo(b.formattedName));
    });
    return groupedPartTypes;
  }

  List<VehiclePart> getGroupedVehicleParts() {
    final groupedParts = vehicle.vehicleParts
        .where((vehiclePart) => vehiclePart.active)
        .groupAndSelectFirst((vehiclePart) => vehiclePart.type);
    groupedParts.sort((a, b) {
      if (a.type == Enum$PartType.CAR_BODY) return 1;
      if (b.type == Enum$PartType.CAR_BODY) return -1;
      return 0;
    });
    return groupedParts;
  }

  bool allowWheelDismantling(Enum$PartType partType) {
    final dismatledWheelCount = totalWheelsDismantled();
    final wheelCountToMove = partCountToMove[partType] ?? 0;
    return dismatledWheelCount + wheelCountToMove <= 5;
  }

  int totalWheelsDismantled() {
    return vehicle.vehicleParts
        .where(
          (vehiclePart) =>
              vehiclePart.active &&
              vehiclePart.partStatus == Enum$PartStatus.DISMANTLED &&
              (isPartAWheel(vehiclePart.type)),
        )
        .length;
  }

  bool isPartAWheel(Enum$PartType partType) {
    return partType == Enum$PartType.ALLOY_WHEEL ||
        partType == Enum$PartType.STEEL_WHEEL;
  }

  Future<DismantlingVehicle> setVehicleStatus(
    Enum$VehicleStatus vehicleStatus,
  ) async {
    if (vehicle.vehicleStatus != vehicleStatus) {
      return dismantlingService.updateVehicleStatus(
        vehicle.id,
        vehicleStatus,
      );
    }
    return vehicle;
  }

  Future<void> addPartsToVehicle(
    List<Enum$PartType> partTypesToAdd,
  ) async {
    vehicle = await dismantlingService.addPartsToVehicle(
      vehicle.id,
      partTypesToAdd,
      vehicle.location.yard.yardCode,
    );
    await setVehicleStatus(Enum$VehicleStatus.DISMANTLING);
    for (final partTypeToAdd in partTypesToAdd) {
      partCountToMove[partTypeToAdd] = 1;
    }
    notifyListeners();
  }

  Future<void> deletePartFromVehicle(
    Enum$PartType partTypeToDelete,
  ) async {
    vehicle = await dismantlingService.deletePartsFromVehicle(
      vehicle.id,
      [partTypeToDelete],
      vehicle.location.yard.yardCode,
    );
    await setVehicleStatus(Enum$VehicleStatus.DISMANTLING);
    partCountToMove[partTypeToDelete] = 0;
    selectedPart = null;
    notifyListeners();
  }

  Future<void> undoDismantledVehiclePart(
    Enum$PartType partTypeToUndoDismantle,
  ) async {
    vehicle = await dismantlingService.undoDismantledVehicleParts(
      vehicle.id,
      [partTypeToUndoDismantle],
      vehicle.location.yard.yardCode,
    );
    await setVehicleStatus(Enum$VehicleStatus.DISMANTLING);
    selectedPart = null;
    partCountToMove[partTypeToUndoDismantle] = 1;
    notifyListeners();
  }

  Future<void> dismantleVehiclePart(
    Enum$PartType partTypeToMove,
    String inventoryLocationCode, {
    String? catSealNumber,
    String? catSerialNumber,
  }) async {
    final partToMoveDetail = PartToMoveDetail(
      partCountToMove: partCountToMove[partTypeToMove] ?? 1,
      partType: partTypeToMove,
      inventoryLocationCode: inventoryLocationCode,
    );
    if (partTypeToMove == Enum$PartType.CATALYTIC_CONVERTER) {
      partToMoveDetail.catSealNumber = catSealNumber;
      partToMoveDetail.catSerialNumber = catSerialNumber;
    }
    if (partTypeToMove == Enum$PartType.CAR_BODY) {
      partToMoveDetail.carBodyWeight = carBodyNetWeight;
    }
    vehicle = await dismantlingService.dismantleVehicleParts(
      vehicle.id,
      [partToMoveDetail],
      vehicle.location.yard.yardCode,
    );
    await setVehicleStatus(
      partTypeToMove == Enum$PartType.CAR_BODY
          ? Enum$VehicleStatus.DISMANTLED
          : Enum$VehicleStatus.DISMANTLING,
    );
    selectedPart = null;
    notifyListeners();
  }

  Future<void> loadDefaultVehiclePartInventoryLocationCodes() async {
    defaultInventoryLocationCodes =
        await dismantlingService.getDefaultVehiclePartInventoryLocationCodes(
      settingsController.territory,
    );
  }

  Future<List<VehiclePartInventoryLocation>> searchInventoryLocations({
    String searchText = '',
  }) {
    return dismantlingService.searchInventoryLocations(
      searchText.isNotEmpty ? '$searchText*' : searchText,
      vehicle.location.yardId,
    );
  }
}
