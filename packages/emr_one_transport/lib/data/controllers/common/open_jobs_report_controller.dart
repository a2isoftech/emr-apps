import 'package:emr_one_core/extensions/date_extensions.dart';
import 'package:emr_one_core/utilities/debounceable.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/models/common/action_result.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/common/open_job_report.dart';
import 'package:emr_one_transport/data/models/common/region.dart';
import 'package:emr_one_transport/data/models/hauliers/haulier.dart';
import 'package:emr_one_transport/data/models/jobs/truck_info.dart';
import 'package:emr_one_transport/data/services/common_service.dart';
import 'package:emr_one_transport/data/services/haulier_service.dart';
import 'package:flutter/material.dart';

class OpenJobsReportController extends ChangeNotifier {
  OpenJobsReportController({
    required this.haulierService,
    required this.commonService,
  });
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final HaulierService haulierService;
  final CommonService commonService;
  final availableTrucksNotifier = ValueNotifier<List<String>>([]);
  final availableRegionsNotifier = ValueNotifier<List<Region>>([]);
  final _debounceHaulier = Debounceable<List<Haulier>>();
  final selectedHauliers = ValueNotifier<List<Haulier>>([]);
  final selectedRegion = ValueNotifier<List<Region>>([]);
  final startDate = ValueNotifier<DateTime>(DateTime.now().dateOnly);
  final endDate = ValueNotifier<DateTime>(DateTime.now().dateOnly);
  bool isLoading = false;
  final selectedRatesToIncludes = ValueNotifier<List<String>>([]);
  final ValueNotifier<Map<String, String>> availableRates = ValueNotifier({
    StringConstants.includeHaulageRates:
        '${StringConstants.includeHaulageRates} ?',
    StringConstants.includeFuelSurcharge:
        '${StringConstants.includeFuelSurcharge} ?',
  });

  Future<void> init({TruckInfo? truckInfo}) async {
    initForm();
    if (truckInfo != null) {
      selectedHauliers.value = [
        Haulier(accountNo: truckInfo.haulierCode, name: truckInfo.haulierName),
      ];
    }
    availableRegionsNotifier.value = await commonService.getAllRegions();
  }

  void initForm() {
    startDate.value = DateTime.now();
    endDate.value = DateTime.now();
    selectedRegion.value = [];
    selectedHauliers.value = [];
    selectedRatesToIncludes.value = [];
  }

  Future<List<Haulier>> getHaulier(String searchTerm) async {
    if (searchTerm.isEmpty) {
      return [];
    }
    final result = await _debounceHaulier.call(
      () => haulierService.searchHauliers(searchTerm),
    );

    final internalHauliers = result?.where(
      (h) => h.isManagedHaulier == false && h.isThirdPartyHaulier == false,
    );
    return internalHauliers?.toList() ?? [];
  }

  Future<ActionResult> downloadOpenJobsReport() async {
    if (!(formKey.currentState?.validate() ?? false)) {
      return ActionResult(status: ActionStatus.formValidationFailed);
    }

    final result = await commonService.downloadOpenJobsReport(
      OpenJobReport(
        haulierCodes: selectedHauliers.value
            .map((e) => e.accountNo ?? '')
            .toList(),
        startDate: DateTime(
          startDate.value.year,
          startDate.value.month,
          startDate.value.day,
        ),
        endDate: DateTime(
          endDate.value.year,
          endDate.value.month,
          endDate.value.day,
          23,
          59,
          59,
        ),
        regionIds: selectedRegion.value.map((e) => e.id).toList(),
        isHaulageRateIncluded: selectedRatesToIncludes.value.contains(
          StringConstants.includeHaulageRates,
        ),
        isFuelSurchargeIncluded: selectedRatesToIncludes.value.contains(
          StringConstants.includeFuelSurcharge,
        ),
      ),
    );

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
