import 'package:emr_one_transport/core/api_response.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/common/list_details.dart';
import 'package:emr_one_transport/data/models/trucks/transport_truck.dart';
import 'package:emr_one_transport/data/models/trucks/transport_truck_request.dart';
import 'package:emr_one_transport/data/models/user_preferences/user_managed_hauliers.dart';
import 'package:emr_one_transport/data/services/common_service.dart';
import 'package:emr_one_transport/data/services/haulier_service.dart';
import 'package:emr_one_transport/data/services/truck_service.dart';
import 'package:flutter/material.dart';

class TruckCreateEditController extends ChangeNotifier {
  TruckCreateEditController({
    required this.truckService,
    required this.commonService,
    required this.haulierService,
  });
  final TruckService truckService;
  final CommonService commonService;
  final HaulierService haulierService;

  TransportTruck? truckDetails;

  ValueNotifier<List<UserManagedHauliers>> hauliers = ValueNotifier([]);
  ValueNotifier<UserManagedHauliers?> selectedHaulier = ValueNotifier(null);

  ValueNotifier<List<ListDetails>> lifeCycleStatuses = ValueNotifier([]);
  ValueNotifier<ListDetails?> selectedLifeCycleStatus = ValueNotifier(null);

  ValueNotifier<List<ListDetails>> truckTypes = ValueNotifier([]);
  ValueNotifier<ListDetails?> selectedTruckType = ValueNotifier(null);

  ValueNotifier<String> assetNumber = ValueNotifier<String>('');
  ValueNotifier<String?> friendlyName = ValueNotifier<String?>(null);
  ValueNotifier<String> vrm = ValueNotifier<String>('');
  ValueNotifier<String> make = ValueNotifier<String>('');
  ValueNotifier<String> model = ValueNotifier<String>('');
  ValueNotifier<String> haulierCode = ValueNotifier<String>('');
  ValueNotifier<String> haulierType = ValueNotifier<String>('');
  ValueNotifier<String> dispatchYard = ValueNotifier<String>('');
  ValueNotifier<String> truckType = ValueNotifier<String>('');
  ValueNotifier<String> activeLeaseId = ValueNotifier<String>('');

  ValueNotifier<DateTime?> validUptoDate =
      ValueNotifier<DateTime?>(DateTime.now());
  late ValueNotifier<DateTime?> selectedValidUptoDate =
      ValueNotifier<DateTime?>(DateTime.now());

  List<UserManagedHauliers> haulierList = [];
  List<ListDetails> trailerStatusList = [];
  List<ListDetails> truckTypeList = [];
  List<String> accessibleYards = [];

  bool isLoading = true;

  Future<void> initialize(String? truckId) async {
    if (truckId != null && truckId.isNotEmpty) {
      final result = await truckService.getTruckById(truckId);
      truckDetails = result;
    }

    final tasks = [
      _getAccessibleYardsForUser(),
      _getTrailerStatuses(),
      _getTruckTypes(),
      _getHauliers(),
    ];

    if (truckId == null) {
      tasks.add(getNextAssetNumber());
    }

    await Future.wait(tasks);

    lifeCycleStatuses.value = ManagedTruckStatus.values.map((e) {
      return ListDetails(
        code: e.apiValue,
        description: e.toString(),
      );
    }).toList();
    truckTypes.value = truckTypeList.toList();
    hauliers.value = haulierList;

    if (truckDetails != null) {
      setInitialFieldValues(truckDetails!);
    }

    _setLoading(false);
  }

  Future<void> _getAccessibleYardsForUser() async {
    final accessibleYardsList = await commonService.getAccessibleYardsForUser();

    accessibleYards = accessibleYardsList
        .map(
          (e) => e.yardCode ?? '',
        )
        .toList();
  }

  Future<void> _getTrailerStatuses() async {
    trailerStatusList =
        await commonService.getListByType(StringConstants.truckTrailerStatuses);
  }

  Future<void> _getTruckTypes() async {
    truckTypeList =
        await commonService.getListByType(StringConstants.truckTypes);
  }

  Future<void> _getHauliers() async {
    haulierList = await haulierService.getUserManagedHauliers();
  }

  Future<void> getNextAssetNumber() async {
    assetNumber.value = await truckService.getNextAssetNumber();
  }

  Future<bool> isVrmUnique(String? value) async {
    if (value == null || value.isEmpty) {
      return false;
    }

    final result = await truckService.isVrmUnique(vrm.value, truckDetails?.id);

    if (result != null) {
      return result;
    }

    return true;
  }

  void resetFields() {
    if (truckDetails != null) {
      setInitialFieldValues(truckDetails!);
    } else {
      vrm.value = '';
      make.value = '';
      model.value = '';
      dispatchYard.value = '';
      selectedLifeCycleStatus.value = null;
      selectedTruckType.value = null;
      selectedHaulier.value = null;
    }
  }

  void setInitialFieldValues(TransportTruck truckDetails) {
    assetNumber.value = truckDetails.assetNumber ?? '';
    friendlyName.value = truckDetails.friendlyName;
    make.value = truckDetails.make ?? '';
    model.value = truckDetails.model ?? '';
    vrm.value = truckDetails.vrm ?? '';
    dispatchYard.value = truckDetails.dispatchYard ?? '';
    selectedLifeCycleStatus.value = lifeCycleStatuses.value.firstWhere(
      (status) => status.code == truckDetails.lifecycleStatus,
      orElse: ListDetails.new,
    );
    selectedTruckType.value = truckTypes.value.firstWhere(
      (type) => type.code == truckDetails.truckType,
      orElse: ListDetails.new,
    );
    final index = hauliers.value.indexWhere(
      (haulier) => haulier.haulierCode == truckDetails.haulierCode,
    );
    selectedHaulier.value = index >= 0 ? hauliers.value[index] : null;
  }

  TransportTruckRequest buildTruckRequestModel() {
    return TransportTruckRequest(
      assetNumber: assetNumber.value,
      vrm: vrm.value,
      friendlyName: friendlyName.value,
      haulierCode: selectedHaulier.value?.haulierCode ?? '',
      haulierType: HaulierType.managed.toString(),
      dispatchYard: dispatchYard.value,
      truckType: selectedTruckType.value?.code,
      active: true,
      maxAllowedContainers: 0,
      activeLeaseId: '',
      enforceJobSequence: true,
      lifecycleStatus: selectedLifeCycleStatus.value?.code,
      make: make.value,
      model: model.value,
    );
  }

  Future<ApiResponse<TransportTruckRequest>> createTruck() async {
    _setLoading(true);

    final requestBody = buildTruckRequestModel();
    final response = await truckService.createTruck(requestBody);

    _setLoading(false);
    return response;
  }

  Future<ApiResponse<TransportTruckRequest>> updateTruck() async {
    _setLoading(true);

    final requestBody = buildTruckRequestModel();
    final response =
        await truckService.updateTruck(truckDetails!.id!, requestBody);

    _setLoading(false);
    return response;
  }

  void _setLoading(bool value) {
    isLoading = value;
    notifyListeners();
  }
}
