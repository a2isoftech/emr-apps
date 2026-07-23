import 'package:emr_one_core/widgets/grid/emr_grid_controller.dart';
import 'package:emr_one_eam/base/base_controller.dart';
import 'package:emr_one_eam/common/constants.dart';
import 'package:emr_one_eam/eam_asset_search/models/asset.dart';
import 'package:emr_one_eam/lists/list_search/list_search.dart';
import 'package:emr_one_eam/models/list_value.dart';
import 'package:emr_one_eam/transfer_and_dispose/services/transfer_and_dispose_service.dart';
import 'package:flutter/material.dart';

abstract class ITransferDisposeController
    extends BaseController<ITransferDisposeService> {
  ITransferDisposeController({
    required this.listService,
    required super.service,
  });

  final IListService listService;

  final ValueNotifier<List<Asset>> assets = ValueNotifier([]);
  AssetActions? get currentAction;
  Asset? get selectedAsset;
  ValueNotifier<List<Asset>> get selectedAssets;
  EmrGridController<Asset> get gridController;

  ValueNotifier<List<ListValue>> depots = ValueNotifier([]);
  ValueNotifier<List<ListValue>> disposalStatuses = ValueNotifier([]);
  ValueNotifier<List<ListValue>> reasons = ValueNotifier([]);
  ValueNotifier<bool> toggleTransfer = ValueNotifier(false);
  ValueNotifier<bool> toggleDispose = ValueNotifier(false);
  ValueNotifier<bool> isBusy = ValueNotifier(false);
  ValueNotifier<bool> isSold = ValueNotifier(false);
  ValueNotifier<bool> isTransferInProcess = ValueNotifier(false);
  ValueNotifier<bool> isDisposalInProcess = ValueNotifier(false);
  ValueNotifier<bool> isValueChanged = ValueNotifier(false);
  String validationMessage = 'Failed to transfer Asset';
  Future<List<ListValue>> getDisposalStatuses(String suggestion);

  String? get transferToDepoNo;
  String? get disposalStatus;
  String? get salesInvoiceNo;
  DateTime? get transferEffectiveFrom;
  DateTime? get disposalEffectiveFrom;

  final transfertToDepoTextEditController = TextEditingController(text: '');
  final transfertEffectiveFromTextEditController =
      TextEditingController(text: '');
  final disposalStatusTextEditController = TextEditingController(text: '');
  final disposalEffectiveFromTextEditController =
      TextEditingController(text: '');

  final salesInvoiceTextEditController = TextEditingController(text: '');
  final reasonTextEditController = TextEditingController(text: '');

  void clearTransferRequest();
  void clearDisposalRequest();
  Future<bool> transferAssets();
  Future<bool> disposeAssets();
  void initialize();
  void setCurrentAction(AssetActions action);
  void setTransferToDepo(String depot);
  void setTransferEffectiveFrom(DateTime date);
  void setDisposalStatus(String status);
  void setSalesInvoice(String invoice);
  void setReason(String reason);
  void setDisposalEffectiveFrom(DateTime date);
  void reset();
}

class TransferDisposeController extends ITransferDisposeController {
  TransferDisposeController({
    required super.service,
    required super.listService,
  });

  late final EmrGridController<Asset> _gridController =
      EmrGridController<Asset>(data: assets);
  String? _transferToDepoNo;
  String? _disposalStatus;
  String? _salesInvoiceNo;
  String? _reason;
  DateTime? _transferEffectiveFrom;
  DateTime? _disposalEffectiveFrom;
  Asset? _selectedAsset;
  final ValueNotifier<List<Asset>> _selectedAssets = ValueNotifier([]);
  AssetActions? _currentAction;
  @override
  Asset? get selectedAsset => _selectedAsset;

  @override
  ValueNotifier<List<Asset>> get selectedAssets => _selectedAssets;

  @override
  EmrGridController<Asset> get gridController => _gridController;

  @override
  void clearDisposalRequest() {
    disposalEffectiveFromTextEditController.text = '';
    disposalStatusTextEditController.text = '';
    reasonTextEditController.text = '';
    isValueChanged.value = false;
    toggleDispose.value = false;
  }

  @override
  void clearTransferRequest() {
    transfertEffectiveFromTextEditController.text = '';
    transfertToDepoTextEditController.text = '';
    reasonTextEditController.text = '';
    isValueChanged.value = false;
    toggleTransfer.value = false;
  }

  @override
  Future<bool> transferAssets() async {
    var isValidated = false;
    if (_transferEffectiveFrom != null &&
        _transferToDepoNo != null &&
        _transferToDepoNo!.isNotEmpty) {
      isBusy.value = true;
      final assetIds = assets.value.map((e) => e.id!).toList();
      final success = await service.saveTransferRequest(
        assetIds: assetIds,
        transferEffectiveFrom: _transferEffectiveFrom!,
        transferToDepotNo: _transferToDepoNo!,
        reason: _reason,
      );
      isValidated = success;
      isBusy.value = false;
      return success;
      //call dispose mutation
    }
    return isValidated;
  }

  @override
  Future<bool> disposeAssets() async {
    var isValidated = false;
    if (_disposalEffectiveFrom != null &&
        _disposalStatus != null &&
        _disposalStatus!.isNotEmpty) {
      isBusy.value = true;
      final assetIds = assets.value.map((e) => e.id!).toList();
      final success = await service.saveDisposeRequest(
        assetIds: assetIds,
        disposalStatus: _disposalStatus!,
        disposalEffectiveFrom: _disposalEffectiveFrom!,
        salesInVoiceNo: salesInvoiceNo,
        reason: _reason,
      );
      isValidated = success;
      isBusy.value = false;
      return success;
      //call dispose mutation
    }
    return isValidated;
  }

  @override
  Future<List<ListValue>> getDisposalStatuses(String suggestion) async {
    return disposalStatuses.value
        .where(
          (element) =>
              (element.text != null &&
                  element.text!
                      .toLowerCase()
                      .contains(suggestion.toLowerCase())) ||
              (element.value != null &&
                  element.value!
                      .toLowerCase()
                      .contains(suggestion.toLowerCase())),
        )
        .toList();
  }

  @override
  Future<void> initialize() async {
    depots.value = await listService.getListValues(listName: 'List.Depots');
    disposalStatuses.value =
        await listService.getListValues(listName: 'List.DisposalStatuses');
    reasonTextEditController.text = '';
  }

  @override
  AssetActions? get currentAction => _currentAction;

  @override
  void setCurrentAction(AssetActions action) {
    _currentAction = action;
    getReasons(action);
  }

  Future<void> getReasons(AssetActions action) async {
    if (action == AssetActions.transfer) {
      reasons.value =
          await listService.getListValues(listName: 'List.TransferReason');
    }
    if (action == AssetActions.dispose) {
      reasons.value =
          await listService.getListValues(listName: 'List.DisposalReason');
    }
  }

  @override
  DateTime? get disposalEffectiveFrom => _disposalEffectiveFrom;

  @override
  String? get disposalStatus => _disposalStatus;

  @override
  String? get salesInvoiceNo => _salesInvoiceNo;

  @override
  DateTime? get transferEffectiveFrom => _transferEffectiveFrom;

  @override
  String? get transferToDepoNo => _transferToDepoNo;

  @override
  void setDisposalEffectiveFrom(DateTime date) {
    _disposalEffectiveFrom = date;
  }

  @override
  void setDisposalStatus(String status) {
    _disposalStatus = status;
  }

  @override
  void setSalesInvoice(String invoice) {
    _salesInvoiceNo = invoice;
  }

  @override
  void setReason(String reason) {
    _reason = reason;
  }

  @override
  void setTransferEffectiveFrom(DateTime date) {
    _transferEffectiveFrom = date;
  }

  @override
  void setTransferToDepo(String depot) {
    _transferToDepoNo = depot;
  }

  @override
  void reset() {
    _currentAction = null;
    assets.value = [];
    transfertToDepoTextEditController.text = '';
    transfertEffectiveFromTextEditController.text = '';
    disposalStatusTextEditController.text = '';
    disposalEffectiveFromTextEditController.text = '';
    salesInvoiceTextEditController.text = '';
    reasonTextEditController.text = '';
  }
}
