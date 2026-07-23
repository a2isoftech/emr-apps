import 'package:collection/collection.dart';
import 'package:emr_one_elv_inspection/constants/inspection_constants.dart';
import 'package:emr_one_elv_inspection/database/database.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';

class VehiclePartsCatalyticDatabase {
  VehiclePartsCatalyticDatabase(this._vehicleId) {
    if (!kIsWeb) {
      _box =
          Hive.box<VehiclePartsCatalytic>(HiveDatabase.vehiclePartsCatalytic);
    }
  }

  final int _vehicleId;
  late Box<VehiclePartsCatalytic> _box;

  /// Adds or updates a catalytic converter record
  Future<void> addOrUpdateCatalyticConverter(
    int catId,
    String imagePath,
  ) async {
    if (!kIsWeb) {
      final entry = _getEntryByCatId(catId);
      if (entry == null) {
        final newConverter = VehiclePartsCatalytic(
          vehicleId: _vehicleId,
          catID: catId,
          catalyticImagePath: imagePath,
        );
        await _box.add(newConverter);
      } else {
        final updated = entry.value
          ..catID = catId
          ..catalyticImagePath = imagePath;
        await _box.putAt(entry.key, updated);
      }
    }
  }

  /// Returns a map of all catalytic converters for this vehicle
  Map<int, VehiclePartsCatalytic>? getCatalyticConverters() {
    if (!kIsWeb) {
      return Map.fromEntries(
        _box.values
            .where((item) => item.vehicleId == _vehicleId)
            .mapIndexed(MapEntry.new),
      );
    }
    return null;
  }

  /// Deletes a catalytic converter by its catId
  Future<void> deleteCatalyticConverter(int catId) async {
    if (!kIsWeb) {
      final entry = _getEntryByCatId(catId);
      if (entry != null) {
        await _box.deleteAt(entry.key);
      }
    }
  }

  /// Deletes all catalytic converters associated with this vehicle
  Future<void> deleteAllCatalyticConverters() async {
    if (!kIsWeb) {
      final keysToDelete = getCatalyticConverters()?.keys;
      if (keysToDelete != null) {
        await _box.deleteAll(keysToDelete);
      }
    }
  }

  /// Closes the Hive box
  Future<void> dispose() async {
    if (!kIsWeb) {
      await _box.close();
    }
  }

  /// Internal: Gets a key-value pair for a catalytic converter by catId
  MapEntry<int, VehiclePartsCatalytic>? _getEntryByCatId(int catId) {
    if (!kIsWeb) {
      return getCatalyticConverters()
          ?.entries
          .firstWhereOrNull((entry) => entry.value.catID == catId);
    }
    return null;
  }
}
