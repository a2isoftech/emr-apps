import 'package:emr_one_eam/asset_create/asset_create.dart';
import 'package:emr_one_eam/base/base.dart';
import 'package:emr_one_eam/common/constants.dart';
import 'package:emr_one_eam/models/create_asset_input.dart';
import 'package:emr_one_eam/models/models.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

abstract class IAssetCreateController
    extends BaseController<IAssetCreateService> {
  IAssetCreateController({
    required super.service,
  });

  AssetTemplate? selectedTemplate;
  ValueNotifier<CreateAssetInput?> assetToCreate = ValueNotifier(null);
  bool newAsset = true;
  ValueNotifier<bool> isTransferInProcess = ValueNotifier(false);
  ValueNotifier<bool> isDisposalInProcess = ValueNotifier(false);
  ValueNotifier<bool> isValueChanged = ValueNotifier(false);
  ValueNotifier<bool> canUnDispose = ValueNotifier(false);
  String? assetCode;
  String? newAssetCode;
  ValueNotifier<AssetCounter?> selectedCounter = ValueNotifier(null);
  ValueNotifier<AssetProperty?> selectedProperty = ValueNotifier(null);
  ValueNotifier<dynamic> selectedAttribute = ValueNotifier(null);
  ValueNotifier<AttributeTypes> selectedAttributeTab =
      ValueNotifier(AttributeTypes.assetProperty);
  ValueNotifier<bool> isStatutoryInspectionSetYes = ValueNotifier(false);
  AssetTemplateProperty? selectedTemplateProperty;
  late Future<List<AssetTemplate>> assetTemplates;
  bool isReadOnly = false;

  ValueNotifier<List<ListValue>> depots = ValueNotifier([]);
  ValueNotifier<List<ListValue>> assetTypes = ValueNotifier([]);
  ValueNotifier<List<ListValue>> functionalLocations = ValueNotifier([]);
  ValueNotifier<List<ListValue>> farLeasedExpenses = ValueNotifier([]);
  ValueNotifier<List<ListValue>> years = ValueNotifier([]);
  ValueNotifier<List<ListValue>> conditions = ValueNotifier([]);
  ValueNotifier<List<ListValue>> statuses = ValueNotifier([]);
  ValueNotifier<List<ListValue>> disposalStatuses = ValueNotifier([]);
  ValueNotifier<List<ListValue>> warrentyPeriod = ValueNotifier([]);
  ValueNotifier<bool> toggleTransfer = ValueNotifier(false);
  ValueNotifier<bool> toggleDispose = ValueNotifier(false);
  ValueNotifier<bool> isBusy = ValueNotifier(false);
  ValueNotifier<bool> isSold = ValueNotifier(false);
  ValueNotifier<CreatePageView> createPageStep =
      ValueNotifier(CreatePageView.templateSelection);
  Map<String, List<ListValue>> listValues = <String, List<ListValue>>{};

  Future<bool> templateSelected(AssetTemplate template);
  Future<void> depotSelected(String depotNo);

  Future<void> initializeAssetDetails();
  Future<void> initializeAssetCreated();
  Future<bool> saveAsset();
  Future<bool> validateAsset();
  Future<void> unDispose();
  Future<List<ListValue>?> getListValue(String listName);
  String validationMessage = 'Failed to save Asset';
  Future<List<ListValue>> getDisposalStatuses(String suggestion);
  void reset();
}

class AssetCreateController extends IAssetCreateController {
  AssetCreateController({
    required super.service,
  });

  @override
  Future<void> initializeAssetCreated() async {}

  @override
  Future<void> initializeAssetDetails() async {
    isBusy.value = !newAsset;
    isValueChanged.value = newAsset;
    selectedAttributeTab.value = AttributeTypes.assetProperty;
    toggleTransfer.value = false;
    toggleDispose.value = false;
    if (!newAsset) {
      assetToCreate.value = null;
    }

    depots.value = await service.getListValues(listName: 'List.Depots');
    farLeasedExpenses.value =
        await service.getListValues(listName: 'List.FarLeasedExpensed');
    years.value = await service.getListValues(listName: 'List.Years');
    conditions.value = await service.getListValues(listName: 'List.Conditions');
    statuses.value = await service.getListValues(listName: 'List.Statuses');
    disposalStatuses.value =
        await service.getListValues(listName: 'List.DisposalStatuses');

    warrentyPeriod.value =
        await service.getListValues(listName: 'List.WarrantyPeriods');
    String? assetTypeDataType;

    if (!newAsset) {
      if (assetCode != null && assetCode!.isNotEmpty) {
        assetToCreate.value = await service.getAssetFromAssetCode(assetCode!);
        isBusy.value = false;
      }
    }
    if (newAsset) {
      assetTypeDataType = selectedTemplate?.templateProperties
          ?.firstWhere((e) => e.name == 'Asset Type')
          .dataType;
    } else {
      functionalLocations.value = await service.getListValues(
        listName: 'List.CMMSFunctionalLocations',
        parameter: assetToCreate.value?.depotNo,
      );
      assetTypeDataType = assetToCreate.value?.assetProperties
          ?.firstWhere((e) => e.name == 'Asset Type')
          .dataType;
    }

    if (assetTypeDataType != null) {
      assetTypes.value = await service.getListValues(
        listName: assetTypeDataType,
      );
    }
    if (assetToCreate.value != null) {
      if (assetToCreate.value!.disposalApprovalId != null &&
          assetToCreate.value!.status != assetToCreate.value!.disposalStatus) {
        isDisposalInProcess.value = true;
      } else if (assetToCreate.value!.disposalStatus != null &&
          assetToCreate.value!.disposalStatus!.isNotEmpty &&
          assetToCreate.value!.disposalStatus == assetToCreate.value!.status) {
        canUnDispose.value = true;
      }
      if (assetToCreate.value!.transferToDepotNoAssetApprovalId != null) {
        isTransferInProcess.value = true;
      }

      isStatutoryInspectionSetYes.value =
          assetToCreate.value!.statutoryInspection ?? false;
    }
  }

  @override
  Future<bool> templateSelected(AssetTemplate template) async {
    selectedTemplate = template;
    if (selectedTemplate == null) return false;
    final asset =
        await service.getNewAssetFromTemplateId(selectedTemplate!.id!);

    if (asset == null) {
      assetToCreate.value = CreateAssetInput(
        templateId: selectedTemplate!.id,
        assetCounters: [],
        assetProperties: [],
      );
    } else {
      assetToCreate.value = asset;
    }

    if (selectedTemplate!.shiftHours ?? false) {
      if (assetToCreate.value!.shiftHours == null) {
        assetToCreate.value!.shiftHours = addShiftHours();
      }
    }

    if (selectedTemplate!.permittedHours ?? false) {
      if (assetToCreate.value!.permittedHours == null) {
        assetToCreate.value!.permittedHours = addShiftHours();
      }
    }
    newAsset = true;
    return assetToCreate.value != null;
  }

  List<HourResult> addShiftHours() {
    return ConstantLists.weeks
        .map(
          (e) => HourResult(key: e, value: StartAndEndTime(start: '', end: '')),
        )
        .toList();
  }

  @override
  Future<void> depotSelected(String depotNo) async {
    assetToCreate.value!.depotNo = depotNo;
    functionalLocations.value = await service.getListValues(
      listName: 'List.CMMSFunctionalLocations',
      parameter: depotNo,
    );
  }

  @override
  Future<List<ListValue>?> getListValue(String listName) async {
    if (listValues.containsKey(listName)) {
      return listValues[listName];
    }
    final listValue = await service.getListValues(
      listName: listName,
    );
    final newListValueMap = {listName: listValue};
    listValues.addAll(newListValueMap);
    return listValue;
  }

  @override
  Future<bool> saveAsset() async {
    final validated = await validateAsset();
    var isSaved = false;

    if (validated) {
      isBusy.value = true;
      final savedAsset = await service.saveAsset(assetToCreate.value!);
      isBusy.value = false;
      if (savedAsset != null) {
        assetToCreate.value!.code = savedAsset.code;
        newAssetCode = savedAsset.code;
        isSaved = true;
      }
    } else {
      //snackbar
      isSaved = false;
    }

    return isSaved;
  }

  @override
  Future<bool> validateAsset() async {
    // return true;
    //check if mandatory fields are filled.
    var isValid = true;
    if (assetToCreate.value!.depotNo == null ||
        assetToCreate.value!.depotNo!.isEmpty) {
      isValid = false;
      validationMessage = 'Depot Required!';
    }

    if (assetToCreate.value!.assetProperties == null ||
        assetToCreate.value!.assetProperties!.isEmpty) {
      isValid = false;
      validationMessage = 'Depot Required!';
    } else {
      final assetType = assetToCreate.value!.assetProperties!
          .where((element) => element.name == 'Asset Type')
          .firstOrNull;

      if (assetType == null ||
          assetType.propertyValue == null ||
          assetType.propertyValue!.isEmpty) {
        isValid = false;
        validationMessage = 'Asset Type Required!';
      }
    }
    if (assetToCreate.value!.make == null ||
        assetToCreate.value!.make!.isEmpty) {
      isValid = false;
      validationMessage = 'Make Required!';
    }
    if (assetToCreate.value!.model == null ||
        assetToCreate.value!.model!.isEmpty) {
      isValid = false;
      validationMessage = 'Model Required!';
    }
    if (assetToCreate.value!.condition == null ||
        assetToCreate.value!.condition!.isEmpty) {
      isValid = false;
      validationMessage = 'Condition Required!';
    }
    if (assetToCreate.value!.status == null ||
        assetToCreate.value!.status!.isEmpty) {
      isValid = false;
      validationMessage = 'Status Required!';
    }

    if (newAsset &&
        assetToCreate.value!.approved != null &&
        assetToCreate.value!.approved! == true) {
      isValid = false;
      validationMessage = '''
New assets cannot be imported as Approved. Please change Approved to No''';
    }
    if (functionalLocations.value.isNotEmpty &&
        functionalLocations.value.isNotEmpty &&
        (assetToCreate.value!.functionalLocationCode == null ||
            assetToCreate.value!.functionalLocationCode!.isEmpty)) {
      isValid = false;
      validationMessage = 'Functional Location Required!';
    }

    if (!isTransferInProcess.value && toggleTransfer.value) {
      if (assetToCreate.value!.transferToDepotNo == null ||
          assetToCreate.value!.transferToDepotNo!.isEmpty ||
          assetToCreate.value!.transferToDepotNoEffectiveFrom == null) {
        isValid = false;
        validationMessage =
            'Transfer Details Required! Or cancel the transfer request';
      }
    }

    if (assetToCreate.value!.assetProperties != null) {
      final mandetoryProperties = assetToCreate.value!.assetProperties
          ?.where((element) => element.isMandatory ?? false)
          .toList();

      if (mandetoryProperties != null) {
        final notFilled = mandetoryProperties
            .where(
              (element) =>
                  element.propertyValue == null ||
                  element.propertyValue!.isEmpty,
            )
            .toList();

        if (notFilled.isNotEmpty) {
          isValid = false;
          validationMessage = 'Mandatory properties Required';
        }
      }
    }

    return isValid;
  }

  void addPropertiesToAsset() {
    if (selectedTemplate != null &&
        selectedTemplate!.templateProperties != null &&
        selectedTemplate!.templateProperties!.isNotEmpty) {
      assetToCreate.value?.assetProperties ?? List.empty(growable: true);

      for (final property in selectedTemplate!.templateProperties!) {
        final existing = assetToCreate.value?.assetProperties!
            .where((element) => element.name == property.name)
            .firstOrNull;
        if (existing == null) {
          assetToCreate.value?.assetProperties!.add(
            AssetProperty(
              templatePropertyId: property.id,
              active: property.active,
              dataType: property.dataType,
              id: const Uuid().v4(),
              name: property.name,
              isMandatory: property.isMandatory,
              sequence: property.sequence,
              updaterGroupIds: property.updaterGroupIds,
              viewerGroupIds: property.viewerGroupIds,
            ),
          );
        }
      }
    }
  }

  @override
  void reset() {
    canUnDispose.value = false;
    assetCode = null;
    assetToCreate.value = null;
    createPageStep.value = CreatePageView.templateSelection;
    toggleTransfer.value = false;
    toggleDispose.value = false;
    selectedAttributeTab.value = AttributeTypes.assetProperty;
    isBusy.value = false;
    isTransferInProcess.value = false;
    isDisposalInProcess.value = false;
    isStatutoryInspectionSetYes.value = false;
    selectedTemplate = null;
    isReadOnly = false;
  }

  @override
  Future<List<ListValue>> getDisposalStatuses(String suggestion) async {
    return disposalStatuses.value
        .where(
          (element) =>
              (element.text != null &&
                  element.text!.toLowerCase().contains(suggestion)) ||
              (element.value != null &&
                  element.value!.toLowerCase().contains(suggestion)),
        )
        .toList();
  }

  @override
  Future<void> unDispose() async {
    assetToCreate.value!.disposalStatus = null;
    assetToCreate.value!.disposalEffectiveFrom = null;
    assetToCreate.value!.dateOfDisposal = null;
    assetToCreate.value!.disposalApprovalId = null;
    assetToCreate.value!.status = 'INUSE';
  }
}
