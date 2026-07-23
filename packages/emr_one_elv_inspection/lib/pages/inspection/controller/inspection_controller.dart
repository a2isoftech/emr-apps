import 'dart:io';

import 'package:collection/collection.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/constants.dart';
import 'package:emr_one_elv_core/models/api_response.dart';
import 'package:emr_one_elv_core/models/enums/enums.dart';
import 'package:emr_one_elv_core/models/models.dart' hide QuoteStatusEnum;
import 'package:emr_one_elv_inspection/constants/inspection_constants.dart';
import 'package:emr_one_elv_inspection/database/database.dart';
import 'package:emr_one_elv_inspection/enums/enum.dart'
    hide InspectionScreen, InspectionTabs;
import 'package:emr_one_elv_inspection/models/model.dart';
import 'package:emr_one_elv_inspection/models/quote_lines_model.dart';
import 'package:emr_one_elv_inspection/pages/inspection/controller/controller.dart';
import 'package:emr_one_elv_inspection/services/cat_service.dart';
import 'package:emr_one_elv_inspection/services/inspection_services.dart';
import 'package:emr_one_elv_quote_api/emr_one_elv_quote_api.dart';
import 'package:emr_one_elv_quote_api/graphql/schema.graphql.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:signals/signals_flutter.dart';

class InspectionScreenController extends ChangeNotifier {
  InspectionScreenController({
    required this.services,
    required this.activeTerritory,
    required this.catService,
    required this.elvConfigFlags,
    required Yard yard,
  }) : selectedYard = yard.yardCode,
       state = InspectionState.init(activeTerritory, elvConfigFlags);

  final InspectionServices services;
  final ElvTerritory activeTerritory;
  final CatRepository catService;
  final String selectedYard;
  late VehicleDocumentsDatabase _documentsDatabase;
  late VehiclePartsDatabase _partsDatabase;
  late VehiclePartsCatalyticDatabase _catalyticDatabase;
  final List<String> elvConfigFlags;
  final isSealNumberValid = signal<bool>(false);
  final isSealNumberUsed = signal<bool>(false);
  late bool shouldResetPriceAdjustment = false;

  InspectionState state;

  Future<void> init(String identifier) async {
    state.originalQuotePrice = state.quoteToInspect?.total ?? 0;

    await _initializeVehicleParts();
  }

  Future<void> _initializeVehicleParts() async {
    await _initializeDatabase();
    _setWheels();
    _setBattery();
    _setCAT();
    if (activeTerritory == ElvTerritory.uk) {
      _setNonConformingParts();
      _setValidateVinStatus();
      _setDocumentType();
    }

    // Calculating the price as per the part selection.
    _priceChanged();
    notifyListeners();
  }

  Future<void> _initializeDatabase() async {
    final vehicleId = state.quoteToInspect!.vehicleDescription.id;
    await InspectionDatabase().initDatabases();
    _documentsDatabase = VehicleDocumentsDatabase(vehicleId);
    _partsDatabase = VehiclePartsDatabase(vehicleId);
    _catalyticDatabase = VehiclePartsCatalyticDatabase(vehicleId);
  }

  void _setWheels() {
    final config = state.quoteToInspect?.vehicleConfiguration;
    if (config == null) return;

    config.alloyWheels = null;
    config.steelWheels = null;

    if (!kIsWeb) {
      final vehiclePartEntry = _partsDatabase.getVehiclePart();
      final vehiclePart = vehiclePartEntry?.value;

      if (vehiclePart != null) {
        config.alloyWheels = vehiclePart.alloyWheelCount;
        config.steelWheels = vehiclePart.steelWheelCount;
      }
    }
  }

  void _setBattery() {
    final config = state.quoteToInspect?.vehicleConfiguration;
    if (config == null) return;

    if (!kIsWeb) {
      final vehicleParts = _partsDatabase.getVehiclePart();
      config.hasBattery = null;
      if (vehicleParts?.value.hasBattery != null) {
        config.hasBattery = vehicleParts!.value.hasBattery;
      }
    } else {
      config.hasBattery = config.batteryImage == null
          ? null
          : config.hasBattery;
    }
  }

  void _setCAT() {
    // If we don't have cats in the database then set hasCat to null.
    if (state.quoteToInspect!.vehicleConfiguration!.catDetails.isEmpty) {
      state.quoteToInspect!.vehicleConfiguration!.hasOriginalCat = null;
    } else {
      state.quoteToInspect!.vehicleConfiguration!.hasOriginalCat = true;
    }
  }

  void _setNonConformingParts() {
    final config = state.quoteToInspect?.vehicleConfiguration;
    if (config == null) return;

    final documents = _documentsDatabase.getDocuments();

    state.selectedNonConformingParts = {
      for (final part in config.nonConformingParts)
        part.partName: () {
          if (!kIsWeb) {
            final matchingDoc = documents?.entries.firstWhereOrNull(
              (entry) =>
                  entry.value.documentType ==
                  VehicleDocumentEnums.fromString(part.partName).name,
            );

            if (matchingDoc != null) {
              part.path = matchingDoc.value.documentPath;
            }
          }
          return part;
        }(),
    };
  }

  void _setValidateVinStatus() {
    final part = _partsDatabase.getVehiclePart();
    if (part != null) {
      state.isVinValid.value = part.value.isValidVin ?? false;
    }
  }

  void _setDocumentType() {
    final documents =
        state.quoteToInspect?.vehicleConfiguration?.vehicleDocuments
            .where(
              (x) =>
                  x.imageType == VehicleDocumentEnums.identification.label ||
                  x.imageType == VehicleDocumentEnums.proofOfAddress.label,
            )
            .toList() ??
        [];

    for (final document in documents) {
      if (document.imageType == VehicleDocumentEnums.identification.label) {
        state.identificationType.value = VerificationSubTypeEnum.fromString(
          document.documentSubType ?? VerificationSubTypeEnum.none.label,
        );
      } else if (document.imageType ==
          VehicleDocumentEnums.proofOfAddress.label) {
        state.proofOfAddressType.value = VerificationSubTypeEnum.fromString(
          document.documentSubType ?? VerificationSubTypeEnum.none.label,
        );
      }
    }
  }

  Future<void> getQuote(String quoteId, String identifier) async {
    final quoteIntId = int.tryParse(quoteId);
    if (quoteIntId == null) {
      _logAndThrow('Invalid quote ID: $quoteId');
    }

    final result = await services.getQuoteToInspect(quoteIntId!);
    if (!result.isOk) {
      _logAndThrow(result.errorMessage);
    }

    final quote = result.response;
    if (_getVehicleIdentifier(quote?.vehicleDescription) != identifier) {
      _logAndThrow('Invalid request');
    }

    final status = quote?.quoteStatus;
    final allowedStatuses = {
      QuoteStatusEnum.inspectionInProgress,
      QuoteStatusEnum.confirmed,
    };

    if (!allowedStatuses.contains(status)) {
      _logAndThrow(status?.name ?? 'Unknown status');
    }

    state.quoteToInspect = quote;

    await init(identifier);
    notifyListeners();
  }

  String _getVehicleIdentifier(VehicleDescriptionModel? vehicleDescription) {
    final identifier = ((vehicleDescription?.vin ?? '').isNotEmpty)
        ? vehicleDescription?.vin
        : vehicleDescription?.vehicleReg;

    if ((identifier ?? '').isEmpty) {
      _logAndThrow('Invalid request');
    }
    return identifier!;
  }

  void _logAndThrow(String message) {
    EmrLogger.error(message);
    throw Exception(message);
  }

  Future<void> updateAlloys(int? value) async {
    if (value != null) {
      state.quoteToInspect!.vehicleConfiguration!.alloyWheels = value;
      await _partsDatabase.changeAlloyWheelsCount(value);
      _priceChanged();
    }
    notifyListeners();
  }

  Future<void> updateSteels(int? value) async {
    if (value != null) {
      state.quoteToInspect!.vehicleConfiguration!.steelWheels = value;
      await _partsDatabase.changeSteelWheelsCount(value);
      _priceChanged();
    }
    notifyListeners();
  }

  Future<void> updateChromes(int? value) async {
    if (value != null) {
      state.quoteToInspect!.vehicleConfiguration!.chromeWheels = value;
      await _partsDatabase.changeChromeWheelsCount(value);
      _priceChanged();
    }
    notifyListeners();
  }

  Future<void> updateBattery({
    required bool? value,
    required XFile? file,
    required String imageBaseUrl,
  }) async {
    state.quoteToInspect!.vehicleConfiguration!.hasBattery = value;
    if (file == null) {
      await _partsDatabase.changeBatteryStatusCount(status: value);
    } else {
      startLoading();
      final filePath = await uploadDocument(
        documentType: VehicleDocumentEnums.battery,
        imageBaseUrl: imageBaseUrl,
        file: file,
      );
      await _partsDatabase.changeBatteryStatusCount(status: value);
      state.quoteToInspect!.vehicleConfiguration!.batteryImage =
          MediaServiceConstants.addPartitionPrefix(filePath);
    }
    _priceChanged();
    stopLoading();
    notifyListeners();
  }

  void updateCat({required bool? value}) {
    if (value != null) {
      state.quoteToInspect!.vehicleConfiguration!.hasOriginalCat = value;
    }
    notifyListeners();
  }

  bool alloySegmentEnabled(int alloys) {
    final steels = state.quoteToInspect?.vehicleConfiguration?.steelWheels ?? 0;
    final chromes =
        state.quoteToInspect?.vehicleConfiguration?.chromeWheels ?? 0;
    return wheelSegmentEnabled(alloys, steels: steels, chromes: chromes);
  }

  bool steelSegmentEnabled(int steels) {
    final alloys = state.quoteToInspect?.vehicleConfiguration?.alloyWheels ?? 0;
    final chromes =
        state.quoteToInspect?.vehicleConfiguration?.chromeWheels ?? 0;
    return wheelSegmentEnabled(steels, alloys: alloys, chromes: chromes);
  }

  bool chromeSegmentEnabled(int chromes) {
    final alloys = state.quoteToInspect?.vehicleConfiguration?.alloyWheels ?? 0;
    final steels = state.quoteToInspect?.vehicleConfiguration?.steelWheels ?? 0;
    return wheelSegmentEnabled(chromes, alloys: alloys, steels: steels);
  }

  bool wheelSegmentEnabled(
    int i, {
    int alloys = 0,
    int steels = 0,
    int chromes = 0,
  }) {
    const totalSlots = 5;
    final usedSlots = alloys + steels + chromes;
    return (totalSlots - usedSlots) >= i;
  }

  Future<CanSubmitStateEnum?> canSubmit() async {
    var errorMessage = await _isVehicleIdentificationDocumentUploaded();

    errorMessage ??= await _vehicleFrontAndBackImagesUploaded();

    final ukCheckChromes =
        state.ukAllowChromeWheels && activeTerritory == ElvTerritory.uk;
    final usaAllowChromes =
        state.usaAllowChromeWheels && activeTerritory == ElvTerritory.usa;
    final chromeWheelsCount =
        state.quoteToInspect?.vehicleConfiguration?.chromeWheels;
    final alloyWheelsCount =
        state.quoteToInspect?.vehicleConfiguration?.alloyWheels;
    final steelWheelsCount =
        state.quoteToInspect?.vehicleConfiguration?.steelWheels;

    if (!(alloyWheelsCount != null ||
        steelWheelsCount != null ||
        ((ukCheckChromes && chromeWheelsCount != null) ||
            (usaAllowChromes && chromeWheelsCount != null)))) {
      errorMessage = CanSubmitStateEnum.wheels;
    }

    if (state.quoteToInspect?.vehicleConfiguration?.hasBattery == null) {
      errorMessage = CanSubmitStateEnum.hasBattery;
    }

    if (state.quoteToInspect?.vehicleConfiguration?.hasOriginalCat == null) {
      state.quoteToInspect!.vehicleConfiguration!.hasOriginalCat = false;
    }

    return errorMessage;
  }

  Future<CanSubmitStateEnum?> _vehicleFrontAndBackImagesUploaded() async {
    if ((activeTerritory == ElvTerritory.uk &&
            state.ukMandateVehicleFrontAndBackImages) ||
        activeTerritory == ElvTerritory.usa &&
            state.usaMandateVehicleFrontAndBackImages) {
      final vehicleFrontImageUploaded = await _isImageUploaded(
        Enum$DocumentUploadTypeEnum.FRONT_VEHICLE_PART,
      );
      final vehicleBackImageUploaded = await _isImageUploaded(
        Enum$DocumentUploadTypeEnum.BACK_VEHICLE_PART,
      );
      return vehicleFrontImageUploaded && vehicleBackImageUploaded
          ? null
          : CanSubmitStateEnum.vehicleFrontAndBackDocument;
    }
    return null;
  }

  Future<CanSubmitStateEnum?> _isVehicleIdentificationDocumentUploaded() async {
    return await _isImageUploaded(Enum$DocumentUploadTypeEnum.VIN)
        ? null
        : CanSubmitStateEnum.vehicleIdentificationDocument;
  }

  Future<bool> _isImageUploaded(
    Enum$DocumentUploadTypeEnum documentUploadType,
  ) async {
    if (kIsWeb) {
      final document = state
          .quoteToInspect!
          .vehicleConfiguration!
          .vehicleDocuments
          .where((x) => x.imageType == documentUploadType.name)
          .first;
      return services.isImageExists(document.path ?? '');
    } else {
      final docType = VehicleDocumentEnums.fromString(documentUploadType.name);
      final document = _documentsDatabase
          .getDocuments()
          ?.entries
          .where((x) => x.value.documentType == docType.name)
          .firstOrNull;
      return (document?.value.documentPath ?? '').isNotEmpty;
    }
  }

 Future<bool> completeInspection() async {
    final failedBefore = state.currentScreen == InspectionScreen.failed;
    state.currentScreen = InspectionScreen.loading;
    notifyListeners();
    _validateOriginalCAT();

    final response = await services.completeQuote(
      batchQuoteId: state.quoteToInspect!.batchQuoteId,
      quoteId: state.quoteToInspect!.quoteId,
      vehicleConfiguration: state.quoteToInspect!.vehicleConfiguration!,
      territoryCode: activeTerritory.territoryCode(),
      quotePrice: state.quoteToInspect!.total,
    );

    if (response.isOk) {
      state.currentScreen = InspectionScreen.complete;
      await cleanLocalDb();
      notifyListeners();
      return true;
    } else {
      if (failedBefore) {
        state.currentScreen = InspectionScreen.contactHelpDesk;
      } else {
        state.currentScreen = InspectionScreen.failed;
      }
    }
    notifyListeners();
    return state.currentScreen == InspectionScreen.complete;
  }

  Future<ApiResponse<void>> saveInspection() {
    return services.saveInspection(
      batchQuoteId: state.quoteToInspect!.batchQuoteId,
      quoteId: state.quoteToInspect!.quoteId,
      vehicleConfiguration: state.quoteToInspect!.vehicleConfiguration!,
      territoryCode: activeTerritory.territoryCode(),
      quotePrice: state.quoteToInspect!.total,
    );
  }

  void _validateOriginalCAT() {
    final cat = state.quoteToInspect!.vehicleConfiguration!.catDetails
        .where(
          (x) => x.catClassification == CatClassificationEnum.original.label,
        )
        .firstOrNull;
    state.quoteToInspect!.vehicleConfiguration!.hasOriginalCat = cat != null;
  }

  Future<void> cleanLocalDb() async {
    if (kIsWeb) {
      return;
    }
    await _documentsDatabase.deleteAllVehicleDocuments();
    await _catalyticDatabase.deleteAllCatalyticConverters();
    await _partsDatabase.deleteVehiclePart();
  }

  void changeTab(InspectionTabs newTab) {
    state.activeTab = newTab;
    notifyListeners();
  }

  void startLoading() {
    state.currentScreen = InspectionScreen.loading;
    notifyListeners();
  }

  void stopLoading() {
    state.currentScreen = InspectionScreen.inspection;
    notifyListeners();
  }

  // Calling the cat api to get all the available cats
  Future<void> getAllAvailableCats() async {
    state.loadingNotifier.value = true;
    state.cats.value = [];
    final catResponse = await catService.getListOfCatsForVRM(
      vrm: state.quoteToInspect!.vehicleDescription.vehicleReg ?? '',
      yardCode: selectedYard,
    );

    // if cat response is null then pass empty array to the cats
    state.cats.value = [...catResponse.response ?? []];
    state.loadingNotifier.value = false;
  }

  Future<void> selectUSCats({
    required VehicleCatDetailModel selectedCat,
    required XFile? file,
    required String imageBaseUrl,
  }) async {
    if (selectedCat.vehicleCatId != null) {
      await deleteCat(selectedCat);
    }

    startLoading();

    selectedCat.catValue = state.quoteToInspect!.catValue;

    final apiResponse = await services.updateCATDocument(
      cat: selectedCat,
      vehicleId: state.quoteToInspect!.vehicleDescription.id,
      quoteId: state.quoteToInspect!.quoteId,
      territory: activeTerritory.territoryCode(),
    );

    selectedCat.vehicleCatId = apiResponse.response;

    if (file != null) {
      final finalImagePath = await _getUploadingPath(
        documentType: VehicleDocumentEnums.cat,
        localFilePath: file.path,
        catSealNumber: selectedCat.sealNumber,
      );

      final response = await EmrBackgroundService.instance.upload(
        file,
        '$imageBaseUrl/${MediaServiceConstants.addPartitionPrefix(finalImagePath)}',
      );

      if (response.status == BackgroundTransferStatus.pending ||
          response.status == BackgroundTransferStatus.completed) {
        selectedCat.imagePath = MediaServiceConstants.addPartitionPrefix(
          finalImagePath,
        );
      }
    }

    state.quoteToInspect!.vehicleConfiguration!.hasOriginalCat = true;
    state.quoteToInspect!.vehicleConfiguration!.catDetails.add(selectedCat);

    notifyListeners();
    stopLoading();
  }

  Future<String> selectUKCats({
    required TechCatSearchModel selectedCat,
    required String imageBaseUrl,
    XFile? file,
  }) async {
    startLoading();
    isSealNumberUsed.value = false;
    isSealNumberValid.value = false;

    final rawCatValue = selectedCat.isManual
        ? selectedCat.unitCost
        : selectedCat.converterValue;

    final catValue = _calculateCATValue(
      selectedCat.catClassification!,
      rawCatValue,
      selectedCat.catalyticFill,
    );

    final sCAT = VehicleCatDetailModel(
      catClassification: selectedCat.catClassification,
      catValue: catValue,
      catalyticFill: selectedCat.catalyticFill ?? 0,
      isManual: selectedCat.isManual,
      location: selectedCat.catLocation,
      matchProbability: selectedCat.matchingProbability,
      sealNumber: selectedCat.sealNo,
      serialNumber: selectedCat.serialNumber,
      vehicleCatId: selectedCat.vehicleCatId,
      catId: selectedCat.isManual
          ? selectedCat.id
          : selectedCat.sid?.toString(),
      techemetPriceCountSheetDetailId:
          selectedCat.techemetPriceCountSheetDetailId,
    );

    final apiResponse = await services.updateCATDocument(
      cat: sCAT,
      vehicleId: state.quoteToInspect!.vehicleDescription.id,
      quoteId: state.quoteToInspect!.quoteId,
      territory: activeTerritory.territoryCode(),
    );

    if (!apiResponse.isOk) {
      stopLoading();
      return apiResponse.errorMessage;
    }

    if (file != null) {
      final finalImagePath = await _getUploadingPath(
        documentType: VehicleDocumentEnums.cat,
        localFilePath: file.path,
        catSealNumber: selectedCat.sealNo,
      );

      final uploadResponse = await EmrBackgroundService.instance.upload(
        file,
        '$imageBaseUrl/${MediaServiceConstants.addPartitionPrefix(finalImagePath)}',
      );

      if (uploadResponse.status == BackgroundTransferStatus.pending ||
          uploadResponse.status == BackgroundTransferStatus.completed) {
        sCAT.imagePath = MediaServiceConstants.addPartitionPrefix(
          finalImagePath,
        );
      }
    }

    sCAT.vehicleCatId = apiResponse.response;
    state.quoteToInspect!.vehicleConfiguration!
      ..hasOriginalCat = selectedCat.isSelected.value
      ..catDetails.add(sCAT);

    isSealNumberUsed.value = false;
    isSealNumberValid.value = false;

    _priceChanged();
    stopLoading();
    notifyListeners();
    return '';
  }

  double _calculateCATValue(
    String catClassification,
    double? catValue,
    double? catFill,
  ) {
    // Checking Classifications if it is 'After Market' the value set to 0
    if (catClassification ==
        CatClassifications.getClassifications().entries
            .firstWhere((x) => x.key == CatClassificationEnum.afterMarket.index)
            .value) {
      return 0;
    }
    if (catValue == null || catFill == null) {
      return 0;
    }

    return catValue * catFill;
  }

  Future<void> deleteCat(VehicleCatDetailModel model) async {
    startLoading();
    await services.deleteCat(
      state.quoteToInspect!.vehicleDescription.id,
      model.vehicleCatId!,
    );

    state.quoteToInspect!.vehicleConfiguration!.catDetails.removeWhere(
      (x) => x.vehicleCatId == model.vehicleCatId,
    );

    state.quoteToInspect!.vehicleConfiguration!.hasOriginalCat =
        state.quoteToInspect!.vehicleConfiguration!.catDetails.isNotEmpty;

    await _documentsDatabase.deleteDocumentByType(
      VehicleDocumentEnums.cat,
      model.catId,
    );

    _priceChanged();
    stopLoading();
    notifyListeners();
  }

  Future<String> updateUKCat({
    required VehicleCatDetailModel selectedCat,
    required String location,
    required String catClassification,
    required String sealNumber,
    required String serialNumber,
    required double catValue,
    bool isImageRequired = false,
    String? imageBaseUrl,
  }) async {
    startLoading();

    XFile? file;
    var isFileAlreadyExists = true;

    if (isImageRequired) {
      file = await services.getExistingImage(selectedCat.imagePath!);

      if (file == null) {
        file = await ImagePicker().pickImage(source: ImageSource.camera);
        isFileAlreadyExists = false;
      }
    }

    final updatedCat = VehicleCatDetailModel(
      catClassification: catClassification,
      catValue: _calculateCATValue(
        catClassification,
        catValue,
        selectedCat.catalyticFill,
      ),
      catalyticFill: selectedCat.catalyticFill,
      isManual: selectedCat.isManual,
      location: location,
      matchProbability: selectedCat.matchProbability,
      sealNumber: sealNumber,
      serialNumber: serialNumber,
      vehicleCatId: selectedCat.vehicleCatId,
      catId: selectedCat.catId,
      techemetPriceCountSheetDetailId:
          selectedCat.techemetPriceCountSheetDetailId,
    );

    final apiResponse = await services.updateCATDocument(
      cat: updatedCat,
      vehicleId: state.quoteToInspect!.vehicleDescription.id,
      quoteId: state.quoteToInspect!.quoteId,
      territory: activeTerritory.territoryCode(),
    );

    if (!apiResponse.isOk) {
      stopLoading();
      return apiResponse.errorMessage;
    }

    updatedCat.vehicleCatId = apiResponse.response;

    if (file != null && !isFileAlreadyExists && imageBaseUrl != null) {
      final finalImagePath = await _getUploadingPath(
        documentType: VehicleDocumentEnums.cat,
        localFilePath: file.path,
        catSealNumber: updatedCat.vehicleCatId.toString(),
      );

      final imageResponse = await EmrBackgroundService.instance.upload(
        file,
        '$imageBaseUrl/${MediaServiceConstants.addPartitionPrefix(finalImagePath)}',
      );

      if (imageResponse.status == BackgroundTransferStatus.pending ||
          imageResponse.status == BackgroundTransferStatus.completed) {
        updatedCat.imagePath = MediaServiceConstants.addPartitionPrefix(
          finalImagePath,
        );
      }
    }

    final config = state.quoteToInspect!.vehicleConfiguration;
    config!.catDetails.removeWhere(
      (cat) => cat.vehicleCatId == selectedCat.vehicleCatId,
    );

    config.catDetails.add(updatedCat);

    _priceChanged();
    notifyListeners();
    stopLoading();
    return '';
  }

  Future<void> setNonConformingParts({
    required MapEntry<String, VehicleNonConformingPartModel> item,
    required XFile file,
    required String baseImagePath,
  }) async {
    startLoading();

    final uploadedPath = await uploadDocument(
      documentType: VehicleDocumentEnums.fromString(item.value.partName),
      imageBaseUrl: baseImagePath,
      file: file,
    );

    state.selectedNonConformingParts.removeWhere(
      (key, value) => key == item.key,
    );

    item.value.path = MediaServiceConstants.addPartitionPrefix(uploadedPath);
    state.selectedNonConformingParts.addEntries({item});

    _priceChanged();
    stopLoading();
    notifyListeners();
  }

  Future<void> deleteNonConformingParts(String partName) async {
    startLoading();
    await services.deleteNonConformingPart(
      batchQuoteId: state.quoteToInspect!.batchQuoteId,
      partName: partName,
    );
    state.quoteToInspect!.vehicleConfiguration!.nonConformingParts.removeWhere(
      (x) => x.partName == partName,
    );
    state.selectedNonConformingParts.removeWhere(
      (key, value) => key == partName,
    );

    await _documentsDatabase.deleteDocumentByType(
      VehicleDocumentEnums.fromString(partName),
      null,
    );

    _priceChanged();
    stopLoading();
    notifyListeners();
  }

  Future<String> fetchCatImages(int sid) async {
    final data = await catService.getCATImage(sid: sid, yardCode: selectedYard);
    return data.response!;
  }

  void _priceChanged() {
    // Check the territory first. If the territory is A42, there is no need
    // to set price changes.
    if (activeTerritory == ElvTerritory.usa) {
      return;
    }

    // Always honour quoted price for EMR Vehicle Recycling quotes
    if (state.quoteToInspect?.leadSource ==
            LeadSourceEnum.emrVehicleRecycling ||
        state.quoteToInspect?.quoteSource ==
            QuoteSourceEnum.emrVehicleRecycling) {
      return;
    }

    final quoteLines = state.quoteToInspect?.quoteLines ?? [];
    var finalPrice = 0.00;

    finalPrice =
        (state.quoteToInspect?.vehicleConfiguration?.priceAdjustment?.map(
                  (e) => e.value,
                ) ??
                [])
            .fold(0, (a, b) => a + b);

    final otherQuoteLines = quoteLines
        .where(
          (x) => ![
            PartPriceDescriptionConstants.alloyWheel,
            PartPriceDescriptionConstants.steelWheel,
            PartPriceDescriptionConstants.battery,
            PartPriceDescriptionConstants.catConverter,
            PartPriceDescriptionConstants.haulage,
          ].contains(x.description),
        )
        .toList();

    finalPrice += otherQuoteLines.fold(
      0.toDouble(),
      (prev, element) => prev + element.price,
    );

    // Update haulage price
    final haulagePrice = _quoteLinePrice(
      1,
      PartPriceDescriptionConstants.haulage,
      quoteLines,
    );

    finalPrice -= haulagePrice.abs();

    finalPrice += _quoteLinePrice(
      state.quoteToInspect!.vehicleConfiguration?.alloyWheels ?? 0,
      PartPriceDescriptionConstants.alloyWheel,
      quoteLines,
    );

    finalPrice += _quoteLinePrice(
      state.quoteToInspect!.vehicleConfiguration?.steelWheels ?? 0,
      PartPriceDescriptionConstants.steelWheel,
      quoteLines,
    );

    finalPrice += _quoteLinePrice(
      (state.quoteToInspect!.vehicleConfiguration?.hasBattery ?? false) ? 1 : 0,
      PartPriceDescriptionConstants.battery,
      quoteLines,
    );

    late final bool hasAfterMarketCatalyticConvert;
    if (activeTerritory == ElvTerritory.usa) {
      final totalPriceAdjustment =
          state.quoteToInspect?.vehicleConfiguration?.priceAdjustment
              ?.where((e) => e.componentName == 'CAT')
              .map((e) => e.value)
              .whereType<num>()
              .single ??
          0;

      if (state.quoteToInspect!.vehicleConfiguration!.catDetails.isNotEmpty) {
        hasAfterMarketCatalyticConvert = state
            .quoteToInspect!
            .vehicleConfiguration!
            .catDetails
            .any(
              (x) =>
                  x.catClassification == CatClassificationEnum.original.label,
            );

        if (!hasAfterMarketCatalyticConvert) {
          finalPrice = finalPrice - totalPriceAdjustment;
          shouldResetPriceAdjustment = true;
        }
      }

      if (state.quoteToInspect!.vehicleConfiguration!.catDetails.isEmpty) {
        finalPrice = finalPrice - totalPriceAdjustment;
        shouldResetPriceAdjustment = true;
      }
    }

    if (state.quoteToInspect!.vehicleConfiguration!.catDetails.isNotEmpty) {
      var catValue = state.quoteToInspect!.vehicleConfiguration!.catDetails
          .fold<double>(0, (prev, element) => prev + (element.catValue ?? 0.0));

      /*
          Reset Cat value to confirmed quote cat value
          if it is higher than original quote price
        */
      if (_capQuoteTotalPrice() &&
          finalPrice + catValue >= state.originalQuotePrice) {
        catValue = _quoteLinePrice(
          1,
          PartPriceDescriptionConstants.catConverter,
          quoteLines,
        );
      }

      state.quoteToInspect!.catValue = catValue;
      finalPrice += state.quoteToInspect!.catValue;
    } else {
      state.quoteToInspect!.catValue = 0.00;
    }

    state.quoteToInspect!.total =
        _capQuoteTotalPrice() && finalPrice > state.originalQuotePrice
        ? state.originalQuotePrice
        : finalPrice;
  }

  bool _capQuoteTotalPrice() {
    /* Checking if we need to cap inspection price at original quote price:
       1. If lead source is auction and account is retail
    */
    if (state.quoteToInspect?.leadSource == LeadSourceEnum.auction &&
        state.quoteToInspect?.account.accountType == QuoteAccountType.retail) {
      return true;
    }
    return false;
  }

  double _quoteLinePrice(
    int count,
    String quoteLineName,
    List<QuoteLinesModel> quoteLines,
  ) {
    final price =
        count *
        (quoteLines
                .where((x) => x.description == quoteLineName)
                .firstOrNull
                ?.price ??
            0.00);
    return price;
  }

  Future<String> uploadDocument({
    required VehicleDocumentEnums documentType,
    required String imageBaseUrl,
    required XFile file,
  }) async {
    final finalImagePath = await _getUploadingPath(
      documentType: documentType,
      localFilePath: file.path,
    );

    final response = await EmrBackgroundService.instance.upload(
      file,
      '$imageBaseUrl/${MediaServiceConstants.addPartitionPrefix(finalImagePath)}',
    );

    if (response.status == BackgroundTransferStatus.pending ||
        response.status == BackgroundTransferStatus.completed) {
      await _documentUploadMethod(
        documentType: documentType,
        filePath: finalImagePath,
      );
    }

    return finalImagePath;
  }

  Future<Uint8List?> getDocument({
    required VehicleDocumentEnums documentType,
    String? serverImagePath,
    int? vehicleCatId,
  }) async {
    // Handle web: load from server directly
    if (kIsWeb) {
      final file = await services.getExistingImage(serverImagePath ?? '');
      return file?.readAsBytes();
    }

    // Try to find the document in the local database
    final localDocEntry = _documentsDatabase
        .getDocuments()
        ?.entries
        .firstWhereOrNull(
          (entry) =>
              entry.value.documentType ==
              '${documentType.name}${vehicleCatId ?? ''}',
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
    final serverFile = await services.getServerImageData(serverImagePath!);
    if (serverFile != null && serverFile.path.isNotEmpty) {
      await _documentsDatabase.uploadDocument(
        documentType,
        serverFile.path,
        vehicleCatId?.toString(),
      );
      return serverFile.readAsBytes();
    }

    return null;
  }

  // CAT Id is required if documentType is CAT
  Future<String> _getUploadingPath({
    required VehicleDocumentEnums documentType,
    required String localFilePath,
    String? catSealNumber,
  }) async {
    var uploadPath = '';
    switch (documentType) {
      case VehicleDocumentEnums.frontVehiclePart:
      case VehicleDocumentEnums.backVehiclePart:
      case VehicleDocumentEnums.battery:
      case VehicleDocumentEnums.v5:
      case VehicleDocumentEnums.vin:
      case VehicleDocumentEnums.vrn:
        uploadPath =
            '${state.quoteToInspect!.quoteId}/${state.quoteToInspect!.vehicleDescription.vehicleIdentifier}/${documentType.label}';
      case VehicleDocumentEnums.proofOfAddress:
      case VehicleDocumentEnums.identification:
        uploadPath =
            '${state.quoteToInspect!.account.accountNumber}/${documentType.label}/${state.quoteToInspect!.vehicleDescription.id}';
      case VehicleDocumentEnums.cat:
        uploadPath =
            '${state.quoteToInspect!.quoteId}/${state.quoteToInspect!.vehicleDescription.vehicleIdentifier}/$catSealNumber/${documentType.label}';
      case VehicleDocumentEnums.lpgTank:
      case VehicleDocumentEnums.rubbish:
        uploadPath =
            '${state.quoteToInspect!.quoteId}/${state.quoteToInspect!.vehicleDescription.vehicleIdentifier}/${documentType.label.toUpperCase().replaceAll(' ', '')}';
    }

    await _documentsDatabase.uploadDocument(
      documentType,
      localFilePath,
      catSealNumber?.toString(),
    );

    return '${MediaServiceConstants.partition}$uploadPath';
  }

  Future<void> _documentUploadMethod({
    required VehicleDocumentEnums documentType,
    required String filePath,
  }) async {
    switch (documentType) {
      case VehicleDocumentEnums.frontVehiclePart:
      case VehicleDocumentEnums.backVehiclePart:
      case VehicleDocumentEnums.vin:
      case VehicleDocumentEnums.vrn:
        {
          await services.updateInspectionStatus(
            quoteId: state.quoteToInspect!.quoteId,
          );
        }
      case VehicleDocumentEnums.v5:
        {
          await services.updateV5Document(
            batchQuoteId: state.quoteToInspect!.batchQuoteId,
            filePath: filePath,
            quoteId: state.quoteToInspect!.quoteId,
            vehicleId: state.quoteToInspect!.vehicleDescription.id,
          );
        }
      case VehicleDocumentEnums.battery:
        {
          await services.updateBatteryStatus(
            quoteId: state.quoteToInspect!.quoteId,
            hasBattery:
                state.quoteToInspect?.vehicleConfiguration?.hasBattery ?? false,
          );
        }
      case VehicleDocumentEnums.proofOfAddress:
        {
          await services.updateAccountDocument(
            filePath: filePath,
            imageType: Enum$DocumentUploadTypeEnum.fromJson(documentType.label),
            quoteId: state.quoteToInspect!.quoteId,
            batchQuoteId: state.quoteToInspect!.batchQuoteId,
            vehicleId: state.quoteToInspect!.vehicleDescription.id,
            documentType: VerificationTypeEnum.proofOfAddress,
            documentSubType: state.proofOfAddressType.value,
          );
        }
      case VehicleDocumentEnums.identification:
        {
          await services.updateAccountDocument(
            filePath: filePath,
            imageType: Enum$DocumentUploadTypeEnum.fromJson(documentType.label),
            quoteId: state.quoteToInspect!.quoteId,
            batchQuoteId: state.quoteToInspect!.batchQuoteId,
            vehicleId: state.quoteToInspect!.vehicleDescription.id,
            documentType: VerificationTypeEnum.proofOfId,
            documentSubType: state.identificationType.value,
          );
        }
      case VehicleDocumentEnums.lpgTank:
      case VehicleDocumentEnums.rubbish:
        {
          await services.updateNonConformingPartDocument(
            quoteId: state.quoteToInspect!.quoteId,
            batchQuoteId: state.quoteToInspect!.batchQuoteId,
            partName: documentType.label,
          );
        }
      case VehicleDocumentEnums.cat:
        return;
    }
  }

  void hideVehicleIdentifier() {
    state.hideVehicleIdentifier.value = true;
  }

  void showVehicleIdentifier() {
    state.hideVehicleIdentifier.value = false;
  }

  Future<void> changeValidVinStatus({required bool status}) async {
    state.isVinValid.value = status;
    await _partsDatabase.changeVinValidateStatus(status: status);
  }

  @override
  Future<void> dispose() async {
    await _documentsDatabase.dispose();
    await _partsDatabase.dispose();
    await _catalyticDatabase.dispose();
    super.dispose();
  }

  Future<PaginationResponseModel<TechCatSearchModel>?> getManualCatsPage({
    int? first = 20,
    String? after,
    String? search,
  }) async {
    state.loadingNotifier.value = true;
    try {
      final response = await catService.manualCatsSearch(
        yardCode: selectedYard,
        first: first,
        after: after,
        filter: (search ?? '').isEmpty ? null : '*$search*',
      );
      if (response.isOk && response.response != null) {
        return response.response!;
      }
      return null;
    } catch (ex) {
      EmrLogger.error(ex.toString());
      return null;
    } finally {
      state.loadingNotifier.value = false;
    }
  }
}
