import 'package:emr_one_core/extensions/date_extensions.dart';
import 'package:emr_one_core/utilities/debounceable.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/models/common/account_email.dart';
import 'package:emr_one_transport/data/models/common/action_result.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/common/region.dart';
import 'package:emr_one_transport/data/models/common/send_haulier_report_request.dart';
import 'package:emr_one_transport/data/models/hauliers/haulier.dart';
import 'package:emr_one_transport/data/models/jobs/truck_info.dart';
import 'package:emr_one_transport/data/models/plans/haulier_schedule_detail.dart';
import 'package:emr_one_transport/data/planner/plan_service.dart';
import 'package:emr_one_transport/data/services/common_service.dart';
import 'package:emr_one_transport/data/services/haulier_service.dart';
import 'package:flutter/material.dart';

class HaulierReportController extends ChangeNotifier {
  HaulierReportController({
    required this.haulierService,
    required this.planService,
    required this.commonService,
  });
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final HaulierService haulierService;
  final PlanService planService;
  final CommonService commonService;
  final availableTrucksNotifier = ValueNotifier<List<String>>([]);
  final availableRegionsNotifier = ValueNotifier<List<Region>>([]);
  final availableEmailNotifier = ValueNotifier<List<AccountEmail>>([]);
  final selectedEmailsNotifier = ValueNotifier<List<AccountEmail>>([]);

  final selectedHaulier = ValueNotifier<Haulier?>(null);
  final selectedTruck = ValueNotifier<String?>(null);
  final selectedRegion = ValueNotifier<List<Region>>([]);
  final startDate = ValueNotifier<DateTime>(DateTime.now().dateOnly);
  final endDate = ValueNotifier<DateTime>(DateTime.now().dateOnly);
  final additionalEmails = ValueNotifier<String?>(null);

  final _debounceHaulier = Debounceable<List<Haulier>>();
  bool isLoading = false;
  final selectedRatesToIncludes = ValueNotifier<List<String>>([]);
  final ValueNotifier<Map<String, String>> availableRates = ValueNotifier({
    StringConstants.includeHaulageRates:
        '${StringConstants.includeHaulageRates} ?',
    StringConstants.includeFuelSurcharge:
        '${StringConstants.includeFuelSurcharge} ?',
  });
  void _setLoading(bool value) {
    isLoading = value;
    notifyListeners();
  }

  Future<void> init({TruckInfo? truckInfo}) async {
    initForm();
    if (truckInfo != null) {
      selectedHaulier.value = Haulier(
        accountNo: truckInfo.haulierCode,
        name: truckInfo.haulierName,
      );
      selectedTruck.value = '${truckInfo.vrm} - ${truckInfo.assetNumber}';
    }
    await fetchAllRegion();
    selectedHaulier.addListener(onHaulierChange);
  }

  Future<void> fetchAllRegion() async {
    availableRegionsNotifier.value = await commonService.getAllRegions();
  }

  Future<void> fetchAvailableEmail(String haulierCode) async {
    if (haulierCode.isEmpty) return;

    availableEmailNotifier.value =
        await commonService.getPartyContactDetails(haulierCode);
  }

  Future<void> onHaulierChange() async {
    final haulierCode = selectedHaulier.value?.accountNo ?? '';
    await Future.wait(
      [fetchAvailableEmail(haulierCode), getTrucks()],
    );
  }

  void initForm() {
    startDate.value = DateTime.now();
    endDate.value = DateTime.now();
    selectedRegion.value.clear();
    selectedHaulier.value = null;
    selectedTruck.value = null;
    selectedRatesToIncludes.value.clear();
    selectedEmailsNotifier.value.clear();
    additionalEmails.value = '';
  }

  Future<List<Haulier>> getHaulier(String searchTerm) async {
    final result = await _debounceHaulier
        .call(() => haulierService.searchHauliers(searchTerm));

    return result?.toList() ?? [];
  }

  Future<void> getTrucks() async {
    selectedTruck.value = '';
    if (selectedHaulier.value == null) {
      availableTrucksNotifier.value = [];
      return;
    }
    try {
      _setLoading(true);
      availableTrucksNotifier.value = await planService.getTruckByHaulier(
        HaulierScheduleDetail(
          haulierCode: selectedHaulier.value?.accountNo ?? '',
          haulierType: HaulierType.internal.toString(),
          active: true,
        ),
      );
    } finally {
      _setLoading(false);
    }
  }

  Future<ActionResult> sendOrDownloadReport() async {
    if (!(formKey.currentState?.validate() ?? false)) {
      return ActionResult(
        status: ActionStatus.formValidationFailed,
      );
    }

    if (selectedEmailsNotifier.value.isEmpty &&
        (additionalEmails.value ?? '').isEmpty) {
      //If emails are empty, just download the report
      return _downloadHaulierReport();
    } else {
      return _sendHaulierReport();
    }
  }

  Future<ActionResult> _downloadHaulierReport() async {
    final queryParam = {
      'haulierCode': selectedHaulier.value?.accountNo ?? '',
      'startDateUtc': DateTime(
        startDate.value.year,
        startDate.value.month,
        startDate.value.day,
      ).toUtc().toIso8601String(),
      'endDateUtc': DateTime(
        endDate.value.year,
        endDate.value.month,
        endDate.value.day,
        23,
        59,
        59,
      ).toUtc().toIso8601String(),
      'regionIds': selectedRegion.value.map((e) => e.id),
      'isHaulageRateIncluded': selectedRatesToIncludes.value
          .contains(StringConstants.includeHaulageRates)
          .toString(),
      'isFuelSurchargeIncluded': selectedRatesToIncludes.value
          .contains(StringConstants.includeFuelSurcharge)
          .toString(),
      'vrm': selectedTruck.value?.split('-').first.trim(),
    };
    final result = await commonService.downloadHaulierReport(queryParam);
    if (result.isSuccess) {
      return ActionResult(status: ActionStatus.apiSuccess);
    } else {
      return ActionResult(
        status: ActionStatus.apiFailure,
        errorMessage: result.errorMessage,
      );
    }
  }

  Future<ActionResult> _sendHaulierReport() async {
    final emails = [
      ...selectedEmailsNotifier.value.map((e) => e.email),
      ...?additionalEmails.value
          ?.split(';')
          .map((e) => e.trim())
          .where((e) => e.isNotEmpty),
    ];

    final request = SendHaulierReportRequest(
      haulierCode: selectedHaulier.value!.accountNo ?? '',
      startDateUtc: DateTime(
        startDate.value.year,
        startDate.value.month,
        startDate.value.day,
      ).toUtc(),
      endDateUtc: DateTime(
        endDate.value.year,
        endDate.value.month,
        endDate.value.day,
        23,
        59,
        59,
      ).toUtc(),
      regionIds: selectedRegion.value.map((e) => e.id).toList(),
      emailTo: emails,
      ccCurrentUser: true,
    );

    final result = await commonService.sendHaulierReport(request);
    if (result.isSuccess) {
      return ActionResult(status: ActionStatus.apiSuccess);
    } else {
      return ActionResult(
        status: ActionStatus.apiFailure,
        errorMessage: result.errorMessage,
      );
    }
  }
}
