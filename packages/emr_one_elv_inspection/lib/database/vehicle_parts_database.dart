import 'package:collection/collection.dart';
import 'package:emr_one_elv_inspection/constants/inspection_constants.dart';
import 'package:emr_one_elv_inspection/database/database.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';

class VehiclePartsDatabase {
  VehiclePartsDatabase(this._vehicleId) {
    if (!kIsWeb) {
      _box = Hive.box<VehicleParts>(HiveDatabase.vehicleParts);
    }
  }

  final int _vehicleId;
  late Box<VehicleParts> _box;

  /// Change the alloy wheels count for the vehicle
  Future<void> changeAlloyWheelsCount(int count) async {
    if (kIsWeb) return;

    await _updateVehiclePart(
      (part) {
        part.alloyWheelCount = count;
      },
      createIfAbsent: () => VehicleParts(
        vehicleId: _vehicleId,
        alloyWheelCount: count,
      ),
    );
  }

  /// Change the steel wheels count for the vehicle
  Future<void> changeSteelWheelsCount(int count) async {
    if (kIsWeb) return;

    await _updateVehiclePart(
      (part) {
        part.steelWheelCount = count;
      },
      createIfAbsent: () => VehicleParts(
        vehicleId: _vehicleId,
        steelWheelCount: count,
      ),
    );
  }

  Future<void> changeChromeWheelsCount(int count) async {
    if (kIsWeb) return;

    await _updateVehiclePart(
      (part) {
        part.chromeWheelCount = count;
      },
      createIfAbsent: () => VehicleParts(
        vehicleId: _vehicleId,
        chromeWheelCount: count,
      ),
    );
  }

  /// Change the battery status for the vehicle
  Future<void> changeBatteryStatusCount({bool? status}) async {
    if (kIsWeb) return;

    await _updateVehiclePart(
      (part) {
        part.hasBattery = status;
      },
      createIfAbsent: () => VehicleParts(
        vehicleId: _vehicleId,
        hasBattery: status,
      ),
    );
  }

  /// Deletes the vehicle part record
  Future<void> deleteVehiclePart() async {
    if (kIsWeb) return;

    final entry = getVehiclePart();
    if (entry != null) {
      await _box.deleteAt(entry.key);
    }
  }

  /// Closes the Hive box
  Future<void> dispose() async {
    if (kIsWeb) return;

    await _box.close();
  }

  /// Internal: Gets the first VehicleParts entry for this vehicle
  MapEntry<int, VehicleParts>? getVehiclePart() {
    if (kIsWeb) return null;
    return _box.values
        .where((part) => part.vehicleId == _vehicleId)
        .mapIndexed(MapEntry.new)
        .firstOrNull;
  }

  /// Internal: Updates the existing VehicleParts entry or creates one
  Future<void> _updateVehiclePart(
    void Function(VehicleParts part) updateFields, {
    required VehicleParts Function() createIfAbsent,
  }) async {
    if (kIsWeb) return;

    final entry = getVehiclePart();

    if (entry == null) {
      final newPart = createIfAbsent();
      await _box.add(newPart);
    } else {
      final part = entry.value;
      updateFields(part);
      await _box.putAt(entry.key, part);
    }
  }

  Future<void> changeVinValidateStatus({required bool status}) async {
    if (kIsWeb) return;

    await _updateVehiclePart(
      (part) {
        part.isValidVin = status;
      },
      createIfAbsent: () => VehicleParts(
        vehicleId: _vehicleId,
        isValidVin: status,
      ),
    );
  }
}
