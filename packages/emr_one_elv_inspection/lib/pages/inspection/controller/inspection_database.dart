import 'package:emr_one_elv_inspection/constants/inspection_constants.dart';
import 'package:emr_one_elv_inspection/database/database.dart';
import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';

class InspectionDatabase {
  Future<void> initDatabases() async {
    if (!kIsWeb) {
      await Hive.initFlutter();
      if (!Hive.isAdapterRegistered(
        HiveTypeAdapters.kVehicleDocumentsAdapter,
      )) {
        Hive.registerAdapter<VehicleDocuments>(VehicleDocumentsAdapter());
      }

      if (!Hive.isAdapterRegistered(
        HiveTypeAdapters.kVehiclePartsAdapter,
      )) {
        Hive.registerAdapter<VehicleParts>(VehiclePartsAdapter());
      }

      if (!Hive.isAdapterRegistered(
        HiveTypeAdapters.kVehiclePartsCatalyticAdapter,
      )) {
        Hive.registerAdapter<VehiclePartsCatalytic>(
          VehiclePartsCatalyticAdapter(),
        );
      }
      await _initializeBox<VehicleDocuments>(HiveDatabase.vehicleDocument);
      await _initializeBox<VehiclePartsCatalytic>(
        HiveDatabase.vehiclePartsCatalytic,
      );
      await _initializeBox<VehicleParts>(HiveDatabase.vehicleParts);
    }
  }

  Future<void> _initializeBox<TDatabase>(String databaseName) async {
    if (!Hive.isBoxOpen(databaseName)) {
      await Hive.openBox<TDatabase>(databaseName);
    }
  }
}
