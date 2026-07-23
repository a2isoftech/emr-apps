import 'package:emr_one_transport/core/api_response.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/models/common/list_details.dart';
import 'package:emr_one_transport/data/models/trucks/transport_truck.dart';
import 'package:emr_one_transport/data/models/user_preferences/dispatch_yards.dart';
import 'package:emr_one_transport/data/models/vor/truck_vor_schedule.dart';
import 'package:emr_one_transport/data/models/vor/vor_schedule.dart';
import 'package:emr_one_transport/data/models/vor/vor_schedule_request.dart';
import 'package:emr_one_transport/data/services/common_service.dart';
import 'package:emr_one_transport/data/services/truck_service.dart';
import 'package:emr_one_transport/data/services/vor_service.dart';
import 'package:flutter/material.dart';

class InternalTruckController extends ChangeNotifier {
  InternalTruckController({
    required this.truckService,
    required this.vorService,
    required this.commonService,
  });

  final TruckService truckService;
  final VORService vorService;
  final CommonService commonService;

  final ValueNotifier<TransportTruck?> truckDetails = ValueNotifier(null);

  List<DispatchYards> yards = [];
  final ValueNotifier<List<ListDetails>> reasons = ValueNotifier([]);

  List<DispatchYards> accessibleYardsList = [];

  final ValueNotifier<String> selectedReason = ValueNotifier('');
  final ValueNotifier<DateTime?> startDate = ValueNotifier(null);
  final ValueNotifier<DateTime?> endDate = ValueNotifier(null);
  final ValueNotifier<String> notes = ValueNotifier('');

  bool isLoading = true;
  bool isYardChangeInProgress = false;

  Future<void> initialize(String? truckId) async {
    if (truckId != null && truckId.isNotEmpty) {
      final result = await truckService.getTruckById(truckId);
      truckDetails.value = result;
    }

    await Future.wait([_getReasons(), _getAccessibleYards()]);

    yards = accessibleYardsList;
    _setLoading(false);
  }

  Future<void> _getReasons() async {
    final fetchedReasons = await commonService.getListByType(
      StringConstants.vorScheduleReasons,
    );
    final unique = <String, ListDetails>{};
    for (final r in fetchedReasons) {
      if (r.code != null && !unique.containsKey(r.code)) {
        unique[r.code!] = r;
      }
    }
    reasons.value = unique.values.toList();
  }

  Future<void> _getAccessibleYards() async {
    accessibleYardsList = await commonService.getAccessibleYardsForUser();
  }

  Future<ApiResponse<bool>> updateTruckYard(
    String truckId,
    String selectedYardCode,
  ) async {
    _setYardChangeStatus(true);
    final response = await truckService.updateTruckYard(
      truckId,
      selectedYardCode,
    );
    if (response.isSuccess && truckDetails.value != null) {
      final truckInfo = truckDetails.value!;
      truckDetails.value = TransportTruck(
        id: truckInfo.id,
        assetNumber: truckInfo.assetNumber,
        vrm: truckInfo.vrm,
        friendlyName: truckInfo.friendlyName,
        haulierCode: truckInfo.haulierCode,
        condition: truckInfo.condition,
        serialNumber: truckInfo.serialNumber,
        make: truckInfo.make,
        model: truckInfo.model,
        haulierType: truckInfo.haulierType,
        enforceJobSequence: truckInfo.enforceJobSequence,
        truckType: truckInfo.truckType,
        active: truckInfo.active,
        lifecycleStatus: truckInfo.lifecycleStatus,
        created: truckInfo.created,
        modified: truckInfo.modified,
        costCenter: truckInfo.costCenter,
        dispatchYard: selectedYardCode,
        activeLeaseId: truckInfo.activeLeaseId,
      );
    }
    _setYardChangeStatus(false);
    return response;
  }

  Future<ApiResponse<TruckVORSchedule>> getVORSchedules(String vrm) async {
    _setLoading(true);
    final response = await vorService.getVORSchedules(vrm);
    _setLoading(false);
    return response;
  }

  Future<bool> deleteVORSchedule(String vrm, String scheduleId) async {
    _setLoading(true);
    final response = await vorService.deleteVORSchedule(vrm, scheduleId);
    _setLoading(false);
    return response;
  }

  void resetFields() {
    selectedReason.value = '';
    startDate.value = null;
    endDate.value = null;
    notes.value = '';
  }

  void setInitialFieldValues(VORSchedule? vorSchedule) {
    if (vorSchedule != null) {
      selectedReason.value = vorSchedule.reason ?? '';
      notes.value = vorSchedule.notes ?? '';

      final start = vorSchedule.startDateTime!.toLocal();
      final end = vorSchedule.endDateTime!.toLocal();

      startDate.value = start;
      endDate.value = end;
    }
  }

  VORScheduleRequest buildVorScheduleRequest(VORSchedule? vorSchedule) {
    return VORScheduleRequest(
      id: vorSchedule?.id ?? '',
      startDateTime: startDate.value?.toUtc(),
      endDateTime: endDate.value?.toUtc(),
      active: true,
      reason: selectedReason.value,
      notes: notes.value,
    );
  }

  int formatTime(DateTime dateTime) {
    return (dateTime.hour * 60) + dateTime.minute;
  }

  Future<ApiResponse<String>> createVORSchedules(
    String vrm,
    List<VORScheduleRequest> model,
  ) async {
    final response = await vorService.createVORSchedules(vrm, model);
    return response;
  }

  Future<ApiResponse<String>> updateVorSchedule(
    String vrm,
    String scheduleId,
    VORScheduleRequest model,
  ) async {
    final response = await vorService.updateVorSchedule(vrm, scheduleId, model);
    return response;
  }

  void _setLoading(bool value) {
    isLoading = value;
    notifyListeners();
  }

  void _setYardChangeStatus(bool value) {
    isYardChangeInProgress = value;
    notifyListeners();
  }
}
