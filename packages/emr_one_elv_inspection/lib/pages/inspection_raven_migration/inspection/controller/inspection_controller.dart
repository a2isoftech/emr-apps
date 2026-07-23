import 'dart:io';

import 'package:collection/collection.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/models/elv_territory_enum.dart';
import 'package:emr_one_elv_core/models/enums/part_location_enum.dart';
import 'package:emr_one_elv_core/models/enums/part_type_enum.dart';
import 'package:emr_one_elv_core/models/enums/quote_status_enum.dart';
import 'package:emr_one_elv_inspection/constants/inspection_constants.dart';
import 'package:emr_one_elv_inspection/database_raven/database_raven.dart';
import 'package:emr_one_elv_inspection/enums/catalytic_converter_classification_enum.dart';
import 'package:emr_one_elv_inspection/enums/inspection_image_enum.dart';
import 'package:emr_one_elv_inspection/enums/inspection_tabs.dart';
import 'package:emr_one_elv_inspection/enums/non_conforming_part_enum.dart';
import 'package:emr_one_elv_inspection/models/raven_migration/catalytic_converter_configuration.dart';
import 'package:emr_one_elv_inspection/models/raven_migration/inputs/get_vehicle_for_inspection_input.dart';
import 'package:emr_one_elv_inspection/models/raven_migration/part_info.dart';
import 'package:emr_one_elv_inspection/models/raven_migration/part_price.dart';
import 'package:emr_one_elv_inspection/models/raven_migration/vehicle_part_configuration.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/inspection/inspection_config.dart';
import 'package:emr_one_elv_inspection/pages/inspection_raven_migration/inspection/inspection_state.dart';
import 'package:emr_one_elv_inspection/services/inspection_service_raven.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uuid/uuid.dart';

class InspectionController extends ChangeNotifier {
  InspectionController({
    required this.service,
    required this.yardCode,
    required this.activeTerritory,
    required this.mediaApiBaseUrl,
    required this.elvConfigs,
  }) : config = InspectionConfig.init(activeTerritory, elvConfigs);

  final InspectionServiceRaven service;
  final String yardCode;
  final ElvTerritory activeTerritory;
  final String mediaApiBaseUrl;
  final List<String> elvConfigs;
  late InspectionState state;
  late VehicleDocumentsDatabase _documentsDatabase;
  late VehiclePartsDatabase _partsDatabase;
  late InspectionConfig config;
  // late VehiclePartsCatalyticDatabase _catalyticDatabase;

  Future<void> init() async {
    await _initializeDatabase();
  }

  Future<void> _initializeDatabase() async {
    final vehicleKey = state.vehicleKey;
    await InspectionDatabase().initDatabases();
    _documentsDatabase = VehicleDocumentsDatabase(vehicleKey);
    _partsDatabase = VehiclePartsDatabase(vehicleKey);
    // _catalyticDatabase = VehiclePartsCatalyticDatabase(vehicleKey);
  }

  Future<void> getVehicleQuote(String quoteNumber, String vehicleKey) async {
    final quoteIntId = int.tryParse(quoteNumber);
    if (quoteIntId == null) {
      _logAndThrow('Invalid quote number: $quoteNumber');
    }

    final input = GetVehicleForInspectionInput(
      yardCode: yardCode,
      quoteNumber: quoteNumber,
      vehicleKey: vehicleKey,
      territoryCode: activeTerritory.territoryCode(),
    );
    final response = await service.getVehicleForInspection(input);
    if (response.isOk && response.response != null) {
      final vehicleQuote = response.response!;

      final allowedStatuses = {
        QuoteStatusEnum.inspectionInProgress,
        QuoteStatusEnum.confirmed,
      };
      final status = vehicleQuote.vehiclePriceDetail.status;
      if (!allowedStatuses.contains(status)) {
        _logAndThrow(status.name);
      }

      state = InspectionState(
        vehicleKey: vehicleKey,
        vehicleQuote: vehicleQuote,
      );

      await init();
      notifyListeners();
    } else {
      _logAndThrow(response.errorMessage);
    }
  }

  void _logAndThrow(String message) {
    EmrLogger.error(message);
    throw Exception(message);
  }

  void changeTab(InspectionTabs newTab) {
    state.activeTab = newTab;
    notifyListeners();
  }

  Future<Uint8List?> getDocument({
    required InspectionImageEnum imageType,
    String? serverImagePath,
  }) async {
    // Handle web: load from server directly
    if (kIsWeb) {
      final file = await service.getExistingImage(serverImagePath ?? '');
      return file?.readAsBytes();
    }

    // Try to find the document in the local database
    final localDocEntry = _documentsDatabase
        .getDocuments()
        ?.entries
        .firstWhereOrNull(
          (entry) => entry.value.documentType == imageType.name,
        );

    // If found locally, return its bytes if path is not empty
    if (localDocEntry != null && localDocEntry.value.documentPath.isNotEmpty) {
      return File(localDocEntry.value.documentPath).readAsBytes();
    }

    // If not found locally and no server path, return null
    if ((serverImagePath ?? '').isEmpty) {
      return null;
    }

    // Fetch from server, store locally, and return its bytes
    final serverFile = await service.getServerImageData(serverImagePath!);
    if (serverFile != null && serverFile.path.isNotEmpty) {
      await _documentsDatabase.uploadDocument(imageType, serverFile.path, null);
      return serverFile.readAsBytes();
    }

    return null;
  }

  Future<String> uploadDocument({
    required InspectionImageEnum imageType,
    required XFile file,
  }) async {
    final finalImagePath = MediaServiceConstants.addPartitionPrefix(
      _getUploadingPath(imageType: imageType),
    );

    await _documentsDatabase.uploadDocument(imageType, file.path, null);

    final response = await EmrBackgroundService.instance.upload(
      file,
      '$mediaApiBaseUrl/$finalImagePath',
    );

    if (response.status == BackgroundTransferStatus.pending ||
        response.status == BackgroundTransferStatus.completed) {
      return finalImagePath;
    }

    return '';
  }

  Future<String> setVehicleDocument({
    required InspectionImageEnum imageType,
    required XFile file,
  }) async {
    final imagePath = await uploadDocument(imageType: imageType, file: file);

    if (imagePath.isNotEmpty) {
      await service.updateVehicleDocument(
        imageType,
        imagePath,
        state.vehicleQuote.elvQuotationId,
        state.vehicleKey,
        isVinUnreadable:
            state.vehicleQuote.vehicleInfo.configuration.vinUnreadable,
      );
    }
    return imagePath;
  }

  Future<bool> setNonConformingPart({
    required InspectionImageEnum imageType,
    required XFile file,
  }) async {
    final imagePath = await uploadDocument(imageType: imageType, file: file);

    if (imagePath.isEmpty) {
      return false;
    }

    final nonConformingPartType = NonConformingPartEnum.values.firstWhere(
      (p) => p.name == imageType.name,
    );
    final existingPart = state
        .vehicleQuote
        .vehicleInfo
        .configuration
        .nonConformingParts
        .firstWhereOrNull((p) => p.partName == nonConformingPartType);

    if (existingPart == null) {
      final nonConformingPart = await service.addNonConformingPart(
        state.vehicleQuote.elvQuotationId,
        state.vehicleKey,
        nonConformingPartType,
        [imagePath],
      );
      if (nonConformingPart != null) {
        state.vehicleQuote.vehicleInfo.configuration.nonConformingParts.add(
          nonConformingPart,
        );
        notifyListeners();
        return true;
      }
    } else {
      final nonConformingPart = await service.updateNonConformingPartPhoto(
        state.vehicleQuote.elvQuotationId,
        state.vehicleKey,
        existingPart.partKey,
        [imagePath],
      );
      if (nonConformingPart != null) {
        existingPart.partPhotos = nonConformingPart.partPhotos;
        notifyListeners();
        return true;
      }
    }

    return false;
  }

  Future<bool> deleteNonConformingPart(String partKey) async {
    final response = await service.deleteNonConformingPart(
      state.vehicleQuote.elvQuotationId,
      state.vehicleKey,
      partKey,
    );
    if (response) {
      final nonConformingPart = state
          .vehicleQuote
          .vehicleInfo
          .configuration
          .nonConformingParts
          .firstWhere((p) => p.partKey == partKey);

      state.vehicleQuote.vehicleInfo.configuration.nonConformingParts.remove(
        nonConformingPart,
      );

      final imageType = InspectionImageEnum.values.firstWhere(
        (p) => p.name == nonConformingPart.partName.name,
      );

      await _documentsDatabase.deleteDocumentByType(imageType, null);
      notifyListeners();
    }
    return true;
  }

  Future<bool> updateBatteryStatus({
    required bool hasBattery,
    XFile? file,
  }) async {
    var imagePath = '';

    if (file != null) {
      imagePath = await uploadDocument(
        imageType: InspectionImageEnum.battery,
        file: file,
      );

      if (imagePath.isEmpty) {
        return false;
      }

      final response = await service.updateBatteryStatus(
        state.vehicleQuote.elvQuotationId,
        state.vehicleKey,
        [imagePath],
        hasBattery: hasBattery,
      );

      if (!response) {
        return false;
      }
    }

    final batteryPart = state.vehicleQuote.vehicleInfo.configuration.parts
        .firstWhereOrNull((p) => p.partInfo.partType == PartTypeEnum.battery);
    if (batteryPart == null) {
      state.vehicleQuote.vehicleInfo.configuration.parts.add(
        VehiclePartConfiguration(
          partKey: '',
          partInfo: PartInfo(
            partType: PartTypeEnum.battery,
            partLocation: PartLocationEnum.unspecified,
          ),
          partPhotos: [MediaAsset(imagePath)],
        ),
      );
    } else {
      batteryPart.partPhotos = [MediaAsset(imagePath)];
    }

    state.vehicleQuote.vehicleInfo.configuration.hasBattery = hasBattery;

    await _partsDatabase.changeBatteryStatusCount(status: hasBattery);

    notifyListeners();
    return true;
  }

  Future<String> addCatalyticConverter(
    CatalyticConverterClassificationEnum classification,
    PartLocationEnum partLocation, {
    String techemetCatId = '',
    XFile? file,
  }) async {
    var imagePath = '';

    if (file != null) {
      imagePath = await uploadDocument(
        imageType: InspectionImageEnum.catalyticConverter,
        file: file,
      );
    }

    // File upload failed. Don't continue
    if (file != null && imagePath.isEmpty) {
      return '';
    }

    final response = await service.addCatalyticConverter(
      state.vehicleQuote.elvQuotationId,
      state.vehicleKey,
      classification,
      partLocation,
      imagePath: imagePath,
      techemetCatId: techemetCatId,
    );

    if (!response.success) {
      return response.errorMessage ?? '';
    }

    state.vehicleQuote.vehicleInfo.configuration.parts.add(
      response.catalyticConverter!,
    );

    final partPrices = state.vehicleQuote.vehiclePriceDetail.partPrices;
    if (techemetCatId.isEmpty) {
      final partPrice = partPrices.firstWhere(
        (p) =>
            p.partInfo.partType == PartTypeEnum.catalyticConverter &&
            p.partInfo.partLocation == partLocation,
      );

      partPrice.vehiclePartKeys.removeWhere(
        (p) => p == response.catalyticConverter!.partKey,
      );

      partPrice.vehiclePartKeys.add(response.catalyticConverter!.partKey);
    } else {
      partPrices.add(
        PartPrice(
          price: response.price ?? 0,
          partInfo: response.catalyticConverter!.partInfo,
          vehiclePartKeys: [response.catalyticConverter!.partKey],
        ),
      );
    }

    notifyListeners();
    return '';
  }

  Future<void> updateCatalyticConverter(
    String partKey,
    CatalyticConverterClassificationEnum classification,
    PartLocationEnum partLocation,
  ) async {
    final response = await service.updateCatalyticConverter(
      state.vehicleQuote.elvQuotationId,
      state.vehicleKey,
      partKey,
      classification,
      partLocation,
    );

    if (!response.success) {
      return;
    }

    final existingPart =
        state.vehicleQuote.vehicleInfo.configuration.parts.firstWhere(
              (part) => part.partKey == partKey,
            )
            as CatalyticConverterConfiguration;

    existingPart.classification = classification;
    existingPart.partInfo.partLocation = partLocation;

    final partPrices = state.vehicleQuote.vehiclePriceDetail.partPrices;
    if (existingPart.techemetCatId.isEmpty) {
      partPrices
          .firstWhere((p) => p.vehiclePartKeys.contains(existingPart.partKey))
          .vehiclePartKeys
          .remove(existingPart.partKey);
      final partPrice = partPrices.firstWhere(
        (p) =>
            p.partInfo.partType == PartTypeEnum.catalyticConverter &&
            p.partInfo.partLocation == partLocation,
      );
      partPrice.vehiclePartKeys.add(response.catalyticConverter!.partKey);
    } else {
      final partPrice = partPrices.firstWhereOrNull(
        (p) => p.vehiclePartKeys.contains(existingPart.partKey),
      );
      partPrices.remove(partPrice);
      partPrices.add(
        PartPrice(
          price: response.price ?? 0,
          partInfo: existingPart.partInfo,
          vehiclePartKeys: [existingPart.partKey],
        ),
      );
    }

    notifyListeners();
  }

  Future<bool> deleteCatalyticConverter(String partKey) async {
    final response = await service.deleteCatalyticConverter(
      state.vehicleQuote.elvQuotationId,
      state.vehicleKey,
      partKey,
    );
    if (response) {
      final catalyticConverter = state
          .vehicleQuote
          .vehicleInfo
          .configuration
          .parts
          .firstWhere((p) => p.partKey == partKey);

      state.vehicleQuote.vehicleInfo.configuration.parts.remove(
        catalyticConverter,
      );

      final partPrices = state.vehicleQuote.vehiclePriceDetail.partPrices;
      if ((catalyticConverter as CatalyticConverterConfiguration)
          .techemetCatId
          .isEmpty) {
        final partPrice = partPrices.firstWhere(
          (p) =>
              p.partInfo.partType == PartTypeEnum.catalyticConverter &&
              p.partInfo.partLocation ==
                  catalyticConverter.partInfo.partLocation,
        );

        partPrice.vehiclePartKeys.removeWhere(
          (p) => p == catalyticConverter.partKey,
        );
      } else {
        final partPrice = partPrices.firstWhereOrNull(
          (p) => p.vehiclePartKeys.contains(catalyticConverter.partKey),
        );
        partPrices.remove(partPrice);
      }

      final imageType = InspectionImageEnum.values.firstWhere(
        (p) => p.name == catalyticConverter.partInfo.partType.name,
      );

      await _documentsDatabase.deleteDocumentByType(imageType, null);
      notifyListeners();
    }
    return true;
  }

  Future<void> changeValidVinStatus({required bool status}) async {
    state.isVinValid.value = status;
    await _partsDatabase.changeVinValidateStatus(status: status);
  }

  bool alloySegmentEnabled(int alloyWheelCount) {
    final parts = state.vehicleQuote.vehicleInfo.configuration.parts;
    final steelWheelCount = parts
        .where((p) => p.partInfo.partType == PartTypeEnum.steelWheel)
        .length;
    final chromeWheelCount = parts
        .where((p) => p.partInfo.partType == PartTypeEnum.chromeWheel)
        .length;
    return wheelSegmentEnabled(
      alloyWheelCount,
      steelWheelCount: steelWheelCount,
      chromeWheelCount: chromeWheelCount,
    );
  }

  bool steelSegmentEnabled(int steelWheelCount) {
    final parts = state.vehicleQuote.vehicleInfo.configuration.parts;
    final alloyWheelCount = parts
        .where((p) => p.partInfo.partType == PartTypeEnum.alloyWheel)
        .length;
    final chromeWheelCount = parts
        .where((p) => p.partInfo.partType == PartTypeEnum.chromeWheel)
        .length;
    return wheelSegmentEnabled(
      steelWheelCount,
      alloyWheelCount: alloyWheelCount,
      chromeWheelCount: chromeWheelCount,
    );
  }

  bool chromeSegmentEnabled(int chromeWheelCount) {
    final parts = state.vehicleQuote.vehicleInfo.configuration.parts;
    final alloyWheelCount = parts
        .where((p) => p.partInfo.partType == PartTypeEnum.alloyWheel)
        .length;
    final steelWheelCount = parts
        .where((p) => p.partInfo.partType == PartTypeEnum.steelWheel)
        .length;
    return wheelSegmentEnabled(
      chromeWheelCount,
      alloyWheelCount: alloyWheelCount,
      steelWheelCount: steelWheelCount,
    );
  }

  bool wheelSegmentEnabled(
    int i, {
    int alloyWheelCount = 0,
    int steelWheelCount = 0,
    int chromeWheelCount = 0,
  }) {
    const totalSlots = 5;
    final usedSlots = alloyWheelCount + steelWheelCount + chromeWheelCount;
    return (totalSlots - usedSlots) >= i;
  }

  String _getUploadingPath({required InspectionImageEnum imageType}) {
    var uploadPath = '';
    switch (imageType) {
      case InspectionImageEnum.frontPhoto:
      case InspectionImageEnum.rearPhoto:
      case InspectionImageEnum.vinPhoto:
      case InspectionImageEnum.v5LogBook:
      case InspectionImageEnum.battery:
      case InspectionImageEnum.lpgTank:
      case InspectionImageEnum.rubbish:
      case InspectionImageEnum.catalyticConverter:
        uploadPath =
            '${state.vehicleQuote.quoteNumber}/${state.vehicleKey}/${imageType.name.toUpperCase()}/${const Uuid().v6()}';
      case InspectionImageEnum.unknown:
        throw UnimplementedError();
    }

    return '${MediaServiceConstants.partition}$uploadPath';
  }
}
