import 'package:emr_one_core/widgets/grid/emr_grid_controller.dart';
import 'package:emr_one_eam/approval/models/approval_request_input.dart';
import 'package:emr_one_eam/approval/services/approval_service.dart';
import 'package:emr_one_eam/base/base_controller.dart';
import 'package:emr_one_eam/common/constants.dart';
import 'package:emr_one_eam/lists/list_search/list_search.dart';
import 'package:emr_one_eam/models/asset_approval.dart';
import 'package:emr_one_eam/models/list_value.dart';
import 'package:flutter/material.dart';

abstract class IApprovalController extends BaseController<IApprovalService> {
  IApprovalController({
    required this.listService,
    required super.service,
  });

  final IListService listService;

  final ValueNotifier<int> selectedTabIndex = ValueNotifier(0);
  ValueNotifier<AssetActions?> get approvalType;
  final ValueNotifier<List<AssetApproval>> assetApprovals = ValueNotifier([]);
  final ValueNotifier<List<String>> assetCodes = ValueNotifier([]);
  final ValueNotifier<List<String>> reviewdAssetCodes = ValueNotifier([]);
  final ValueNotifier<bool> isBusy = ValueNotifier(false);
  AssetApproval? get selectedAsset;
  ValueNotifier<List<AssetApproval>> get selectedAssets;
  ValueNotifier<bool> get isApproveEnabled;
  EmrGridController<AssetApproval> get gridController;
  Future<void> initialize();
  Future<void> selectAllAsset();
  Future<void> removeAllAsset();
  Future<void> addSelected(AssetApproval approval, {bool? isChecked});
  Future<bool> updateApprovalStatus(String status);
  Future<bool> approveNewAsset();
  Map<String, List<ListValue>> get functionalLocations;

  ValueNotifier<String?> get selectedSubMenu;
  ValueNotifier<String?> get selectedAssetCode;
  void setSelectedMenu(String? changedMenu);
  void setcurrentAction(AssetActions? action);
  void setFunctionalLocation(AssetApproval approval, String location);
  Future<List<ListValue>> getFunctionalLocation(String depot);
  Future<List<ListValue>> getUserCompanies();
  ValueNotifier<List<ListValue>> get allCompanies;
  Future<void> searchBasedOnCompany(String cmp);
  String? get selectedCmpCode;
  Future<bool> validateFunctionalLocationCode();
  void reset();
}

class ApprovalController extends IApprovalController {
  ApprovalController({
    required super.service,
    required super.listService,
  });

  final ValueNotifier<String?> _selectedSubMenu = ValueNotifier(null);
  final ValueNotifier<String?> _selectedAssetCode = ValueNotifier(null);
  final ValueNotifier<bool> _isApproveEnabled = ValueNotifier(false);
  final ValueNotifier<AssetActions?> _approvalType = ValueNotifier(null);
  final Map<String, List<ListValue>> _functionalLocations = {};
  final ValueNotifier<List<ListValue>> _allCompanies = ValueNotifier([]);
  String? _cmpCode;
  @override
  ValueNotifier<String?> get selectedSubMenu => _selectedSubMenu;

  @override
  void setSelectedMenu(String? changedMenu) {
    _selectedSubMenu.value = changedMenu;
  }

  late final EmrGridController<AssetApproval> _gridController =
      EmrGridController<AssetApproval>(data: assetApprovals);
  final ValueNotifier<List<AssetApproval>> _selectedAssets = ValueNotifier([]);
  AssetApproval? _selectedAsset;
  @override
  AssetApproval? get selectedAsset => _selectedAsset;

  @override
  ValueNotifier<List<AssetApproval>> get selectedAssets => _selectedAssets;

  @override
  Future<void> selectAllAsset() async {
    selectedAssets.value.clear();
    selectedAssets.value = [...assetApprovals.value];
  }

  @override
  Future<void> removeAllAsset() async {
    selectedAssets.value.clear();
    selectedAssets.notifyListeners();
  }

  @override
  Future<void> addSelected(AssetApproval approval, {bool? isChecked}) async {
    if (isChecked ?? false) {
      if (!selectedAssets.value.contains(approval)) {
        selectedAssets.value.add(approval);
      }
    } else {
      if (selectedAssets.value.contains(approval)) {
        selectedAssets.value.remove(approval);
      }
    }
    selectedAssets.notifyListeners();
  }

  @override
  EmrGridController<AssetApproval> get gridController => _gridController;

  @override
  Future<void> initialize() async {
    isBusy.value = true;
    selectedAssets.value.clear();
    _cmpCode = null;
    await getApprovals();
    isBusy.value = false;
  }

  Future<void> getApprovals({String? cmpCode}) async {
    var type = '';

    if (approvalType.value != null) {
      if (approvalType.value == AssetActions.transfer) {
        type = ApprovalType.transfer;
      }
      if (approvalType.value == AssetActions.dispose) {
        type = ApprovalType.dispose;
      }
      _allCompanies.value = await getUserCompanies();
    }

    assetApprovals.value = await service.getPendingAssetApprovals(
      approvalType: type,
      cmpCode: cmpCode,
    );

    final getFunctionalLocationsFor = assetApprovals.value
        .where((element) => element.requiresFunctionalLocation ?? false)
        .toList();

    if (getFunctionalLocationsFor.isNotEmpty) {
      final depos =
          getFunctionalLocationsFor.map((e) => e.transferDepotNo!).toList();
      for (final depo in depos) {
        final fl = await getFunctionalLocation(depo);
        if (functionalLocations.containsKey(depo)) {
          functionalLocations[depo] = fl;
        } else {
          functionalLocations.addAll({depo: fl});
        }
      }
    } else {
      _isApproveEnabled.value = true;
    }
  }

  @override
  Future<bool> updateApprovalStatus(String status) async {
    var isValidated = true;

    if (status == ApprovalStatus.approved) {
      isValidated = await validateFunctionalLocationCode();
    }

    if (isValidated) {
      if (selectedAssets.value.isNotEmpty) {
        final input = selectedAssets.value
            .map(
              (e) => ApprovalRequestInput(
                approvalId: e.id!,
                functionalLocationCode: e.functionalLocation,
              ),
            )
            .toList();
        return service.updateApprovalStatus(
          status: status,
          approvalRequests: input,
        );
      }
    }
    return false;
  }

  @override
  Future<bool> approveNewAsset() async {
    return true;
  }

  @override
  void setcurrentAction(AssetActions? action) {
    _approvalType.value = action;
  }

  @override
  ValueNotifier<AssetActions?> get approvalType => _approvalType;

  @override
  Future<List<ListValue>> getFunctionalLocation(String depot) async {
    return listService.getListValues(
      listName: 'List.CMMSFunctionalLocations',
      parameter: depot,
    );
  }

  @override
  Future<List<ListValue>> getUserCompanies() async {
    return listService.getListValues(
      listName: 'List.UserCompanies',
    );
  }

  @override
  void setFunctionalLocation(AssetApproval approval, String location) {
    approval.functionalLocation = location;
  }

  @override
  Map<String, List<ListValue>> get functionalLocations => _functionalLocations;

  @override
  ValueNotifier<bool> get isApproveEnabled => _isApproveEnabled;
  @override
  Future<bool> validateFunctionalLocationCode() async {
    for (final ap in selectedAssets.value) {
      if (ap.requiresFunctionalLocation ?? false) {
        if (ap.functionalLocation == null || ap.functionalLocation!.isEmpty) {
          return false;
        }
      }
    }
    return true;
  }

  @override
  ValueNotifier<List<ListValue>> get allCompanies => _allCompanies;

  @override
  Future<void> searchBasedOnCompany(String cmp) async {
    _cmpCode = cmp;
    isBusy.value = true;
    await getApprovals(cmpCode: cmp);
    isBusy.value = false;
  }

  @override
  String? get selectedCmpCode => _cmpCode;

  @override
  ValueNotifier<String?> get selectedAssetCode => _selectedAssetCode;

  @override
  void reset() {
    setSelectedMenu(null);
    selectedTabIndex.value = 0;
    selectedAssetCode.value = null;
    reviewdAssetCodes.value = [];
    assetCodes.value = [];
  }
}
