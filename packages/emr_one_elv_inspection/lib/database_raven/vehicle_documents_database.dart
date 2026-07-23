import 'package:collection/collection.dart';
import 'package:emr_one_elv_inspection/constants/inspection_constants.dart';
import 'package:emr_one_elv_inspection/database_raven/models/vehicle_documents_model.dart';
import 'package:emr_one_elv_inspection/enums/inspection_image_enum.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';

class VehicleDocumentsDatabase {
  VehicleDocumentsDatabase(this._vehicleKey) {
    if (!kIsWeb) {
      _box = Hive.box<VehicleDocuments>(HiveDatabase.vehicleDocument);
    }
  }

  final String _vehicleKey;
  late Box<VehicleDocuments> _box;

  Future<void> addDocument(VehicleDocuments document) async {
    if (!kIsWeb) {
      await _box.add(document);
    }
  }

  Future<void> updateDocument(
    int index,
    VehicleDocuments updatedDocument,
  ) async {
    if (!kIsWeb) {
      await _box.putAt(index, updatedDocument);
    }
  }

  Future<void> deleteDocument(int index) async {
    if (!kIsWeb) {
      await _box.deleteAt(index);
    }
  }

  Future<void> deleteDocumentByType(
    InspectionImageEnum imageType,
    String? vehicleCatId,
  ) async {
    if (!kIsWeb) {
      final doc = getDocuments()?.entries
          .where(
            (x) =>
                x.value.documentType ==
                '${imageType.name}${vehicleCatId ?? ''}',
          )
          .firstOrNull;
      if (doc != null) {
        await _box.deleteAt(doc.key);
      }
    }
  }

  Map<int, VehicleDocuments>? getDocuments() => kIsWeb
      ? null
      : Map.fromEntries(
          _box.values
              .where((e) => e.vehicleKey == _vehicleKey)
              .mapIndexed(MapEntry.new),
        );

  Future<void> deleteAllVehicleDocuments() async {
    if (!kIsWeb) {
      final vehicleDocuments = getDocuments()?.entries.map((x) => x.value);
      if (vehicleDocuments != null) {
        return _box.deleteAll(vehicleDocuments);
      }
    }
  }

  Future<void> uploadDocument(
    InspectionImageEnum imageType,
    String path,
    String? vehicleCatId,
  ) async {
    if (!kIsWeb) {
      final documents = getDocuments();
      final document = documents?.entries
          .where(
            (x) =>
                x.value.vehicleKey == _vehicleKey &&
                x.value.documentType ==
                    '${imageType.name}${vehicleCatId ?? ''}',
          )
          .firstOrNull;

      if (document == null) {
        await addDocument(
          VehicleDocuments(
            '${imageType.name}${vehicleCatId ?? ''}',
            path,
            _vehicleKey,
          ),
        );
      } else {
        document.value.documentPath = path;
        await updateDocument(document.key, document.value);
      }
    }
  }

  Future<void> dispose() async {
    if (!kIsWeb) {
      await _box.close();
    }
  }
}
