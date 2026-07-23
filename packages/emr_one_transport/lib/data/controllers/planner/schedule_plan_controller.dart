import 'package:collection/collection.dart';
import 'package:emr_one_core/utilities/debounceable.dart';
import 'package:emr_one_core/validators/validators.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/models/common/action_result.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/common/list_details.dart';
import 'package:emr_one_transport/data/models/hauliers/haulier.dart';
import 'package:emr_one_transport/data/models/jobs/delete_job_request.dart';
import 'package:emr_one_transport/data/models/plans/haulier_and_remaining_loads.dart';
import 'package:emr_one_transport/data/models/plans/haulier_schedule_detail.dart';
import 'package:emr_one_transport/data/models/plans/plan_request.dart';
import 'package:emr_one_transport/data/models/plans/plan_response.dart';
import 'package:emr_one_transport/data/models/plans/schedule_plan.dart';
import 'package:emr_one_transport/data/models/plans/schedule_plan_edit_state.dart';
import 'package:emr_one_transport/data/planner/plan_service.dart';
import 'package:emr_one_transport/data/services/haulier_service.dart';
import 'package:emr_one_transport/data/services/joblist_service.dart';
import 'package:flutter/material.dart';

class SchedulePlanController extends ChangeNotifier {
  SchedulePlanController({
    required this.planService,
    required this.jobService,
    required this.haulierService,
  });

  final PlanService planService;
  final JobListService jobService;
  final HaulierService haulierService;
  PlanResponse? plan;

  ValueNotifier<Haulier?> selectedhaulier = ValueNotifier(null);
  ValueNotifier<String?> selectedTruck = ValueNotifier(null);
  ValueNotifier<int> selectedLoads = ValueNotifier(1);
  ValueNotifier<DateTime?> selectedDate = ValueNotifier(DateTime.now());
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final haulierDetails = ValueNotifier<List<HaulierAndRemainingLoads>>([]);
  final schedulePlanDetail = ValueNotifier<List<SchedulePlan>>([]);

  final Map<(String code, String type), HaulierEditState> edits = {};
  final _debounceLocalPlans = Debounceable<List<Haulier>>();

  bool isLoading = true;
  final List<ListDetails> deleteReasons = [];
  void _setLoading(bool value) {
    isLoading = value;
    notifyListeners();
  }

  Future<void> initialize(int? planNumber) async {
    _setLoading(true);
    try {
      plan = null;
      haulierDetails.value = [];
      schedulePlanDetail.value = [];
      if (planNumber != null) {
        await Future.wait([
          fetchPlan(planNumber),
          fetchLoadDetails(planNumber),
        ]);
        if (plan == null) {
          return;
        }

        selectedDate.value = plan!.planDate;

        selectedLoads.value = plan!.loads;

        final detail = <SchedulePlan>[];
        haulierDetails.value.sort(
          (a, b) => b.haulierDetails.haulierCode
              .compareTo(a.haulierDetails.haulierCode),
        );
        for (var i = 0; i < haulierDetails.value.length; i++) {
          final h = haulierDetails.value[i];
          if (!h.haulierDetails.active) continue;
          detail.add(
            SchedulePlan(
              haulierCode: h.haulierDetails.haulierCode,
              haulierName: h.haulierDetails.haulierName ?? '',
              haulierType: h.haulierDetails.haulierType,
              loads: h.haulierDetails.loads ?? 0,
              jobDetail: h.jobsAndStatus.keys
                  .map(
                    (j) => SchedulePlanJobDetail(
                      jobNumber: j,
                      jobStatus: h.jobsAndStatus[j] ?? '',
                    ),
                  )
                  .toList(),
            ),
          );
        }
        schedulePlanDetail.value = detail;
      }
      selectedhaulier.addListener(onSelectedHaulierChange);
      deleteReasons.clear();
      deleteReasons.addAll(await jobService.getDeleteReasons());
      edits.clear();
      notifyListeners();
    } finally {
      _setLoading(false);
    }
  }

  Future<List<Haulier>> searchHauliers(String searchTerm) async {
    final res = await _debounceLocalPlans.call(
      () async {
        final base =
            await haulierService.searchHauliers(searchTerm.toLowerCase());

        final result = [
          ...base,
          ...base
              .where(
                (h) =>
                    (h.isManagedHaulier ?? false == true) &&
                    (h.isThirdPartyHaulier ?? false == true),
              )
              .map(
                (e) => Haulier(
                  accountNo: e.accountNo,
                  isManagedHaulier: false,
                  isThirdPartyHaulier: true,
                  name: e.name,
                ),
              ),
        ];

        result.sort((a, b) => (a.accountNo ?? '').compareTo(b.accountNo ?? ''));
        return result;
      },
    );
    return res ?? [];
  }

  void clearListeners() {
    selectedhaulier.removeListener(onSelectedHaulierChange);
  }

  HaulierEditState _state(String code, String type) => edits.putIfAbsent(
        (code, type),
        HaulierEditState.new,
      );

  // Header-level updates
  void onLoadsChanged(String code, String type, int loads) {
    _state(code, type).newLoads = loads;
  }

  void onDeleteAllChanged(
    String code,
    String type, {
    ListDetails? reason,
    String? comment,
    bool? deleteAll,
  }) {
    final s = _state(
      code,
      type,
    );
    if (deleteAll != null) s.deleteAll = deleteAll;
    s.deleteAllReason = reason;
    s.deleteAllComment =
        (comment?.trim().isEmpty ?? true) ? null : comment!.trim();
  }

  // Per-job updates
  void onPerJobChanged(
    String code,
    String type,
    int jobNo, {
    String? vrm,
    ListDetails? reason,
    String? comment,
  }) {
    final s = _state(
      code,
      type,
    );
    final j = s.jobs.putIfAbsent(jobNo, JobEditState.new);
    if (reason != null) j.deleteReason = reason;
    j.deleteComment =
        (comment?.trim().isEmpty ?? true) ? null : comment!.trim();
  }

  String buildhaulierDisplay(
    HaulierScheduleDetail haulier,
    int remainingLoads,
  ) {
    return '${haulier.haulierType} - ${haulier.haulierCode} -'
        ' ${haulier.haulierName} -'
        ' (${StringConstants.totalLoads} ${haulier.loads})'
        ' (${StringConstants.remainingLoads} $remainingLoads)';
  }

  void resetForm() {
    selectedhaulier.value = null;
    selectedTruck.value = null;
    selectedLoads.value = 1;
  }

  String? loadsValidator(
    String? value,
  ) {
    final minimumLoadsRequired = getTotalLoadsAfterEdit();
    return Validators.integer(value, min: minimumLoadsRequired);
  }

  int getTotalLoadsAfterEdit() {
    final editedKeys = edits.keys.toSet();

    final editedTotal =
        edits.values.fold<int>(0, (sum, e) => sum + (e.newLoads ?? 0));

    final untouchedTotal = schedulePlanDetail.value
        .where(
          (x) => !editedKeys.contains((x.haulierCode, x.haulierType)),
        )
        .fold<int>(0, (sum, x) => sum + (x.loads));

    return editedTotal + untouchedTotal;
  }

  Future<ActionResult> quickSchedulePlan() async {
    if (!(formKey.currentState?.validate() ?? false)) {
      return ActionResult(status: ActionStatus.formValidationFailed);
    }
    _setLoading(true);

    final request = buildPlanRequestModel();
    final result = await planService.updatePlan(
      id: plan!.id,
      body: request,
    );
    _setLoading(false);
    return result.isSuccess
        ? ActionResult(status: ActionStatus.apiSuccess)
        : ActionResult(
            status: ActionStatus.apiFailure,
            errorMessage: result.errorMessage,
          );
  }

  List<HaulierScheduleDetail> getUpdatedScheduleWithDiffs() {
    const defaultGuid = '00000000-0000-0000-0000-000000000000';

    final originals = plan?.haulierScheduleDetails ?? <HaulierScheduleDetail>[];

    // Index originals by (code, type); only keep non-empty codes
    final originalByKey = <(String, String), HaulierScheduleDetail>{
      for (final o in originals)
        if (o.haulierCode.isNotEmpty) (o.haulierCode, o.haulierType): o,
    };

    // "Present" originally means loads > 0
    final originallyPresentKeys =
        originalByKey.entries.map((e) => e.key).toSet();

    // Live details for names/types, indexed by (code, type)
    final detailByKey = <(String, String), SchedulePlan>{
      for (final s in schedulePlanDetail.value)
        (s.haulierCode, s.haulierType): s,
    };

    // Merged result map
    final mergedByKey = <(String, String), HaulierScheduleDetail>{};

    // Apply edits/additions
    for (final entry in edits.entries) {
      final code = entry.key.$1;
      final type = entry.key.$2;
      final newLoads = entry.value.newLoads;

      if (code.isEmpty) continue;

      // If brand-new and loads are null/0, skip
      if (!originallyPresentKeys.contains((code, type)) &&
          (newLoads == null || newLoads == 0)) {
        continue;
      }
      if (newLoads == null) continue;

      final original = originalByKey[(code, type)] ??
          HaulierScheduleDetail(
            haulierId: defaultGuid,
            haulierCode: code,
            haulierType: type,
            haulierName: '',
            loads: 0,
            active: true,
          );

      final detail = detailByKey[(code, type)];
      final haulierType = type.isNotEmpty ? type : (detail?.haulierType ?? '');
      final haulierName = (() {
        final dn = detail?.haulierName;
        if (dn?.isNotEmpty ?? false) return dn!;
        return original.haulierName ?? '';
      })();

      mergedByKey[(code, haulierType)] = HaulierScheduleDetail(
        haulierId: original.haulierId ?? defaultGuid,
        haulierCode: code,
        haulierType: haulierType,
        haulierName: haulierName,
        loads: newLoads,
        active: newLoads > 0,
      );
    }

    // Bring forward untouched originals
    for (final o in originals) {
      final key = (o.haulierCode, o.haulierType);
      mergedByKey.putIfAbsent(key, () => o);
    }

    return mergedByKey.values.toList();
  }

  void onSelectedHaulierChange() {
    if (selectedhaulier.value != null) {
      final selectedHaulier = selectedhaulier.value!;
      //If the selected haulier is already added, just bring
      // this entry to the top
      final existing = schedulePlanDetail.value.firstWhereOrNull(
        (e) =>
            e.haulierCode == (selectedHaulier.accountNo ?? '') &&
            (e.haulierType == getHaulierType(selectedHaulier)),
      );
      if (existing != null) {
        //bubble to top, Since the list is displaying reverse, add to end
        final list = List<SchedulePlan>.from(schedulePlanDetail.value);
        list.remove(existing);
        list.add(existing);
        schedulePlanDetail.value = list;
      } else {
        final newHaulier = SchedulePlan(
          haulierCode: selectedhaulier.value!.accountNo ?? '',
          haulierName: selectedhaulier.value!.name ?? '',
          haulierType: getHaulierType(selectedhaulier.value!),
          loads: 1,
          jobDetail: [],
        );
        _state(
          newHaulier.haulierCode,
          newHaulier.haulierType,
        ).newLoads = 1;
        schedulePlanDetail.value = [
          ...schedulePlanDetail.value,
          newHaulier,
        ];
      }

      selectedhaulier.value = null;
    }
  }

  String getHaulierType(Haulier haulier) {
    if (haulier.isManagedHaulier ?? false) {
      return HaulierType.managed.toString();
    }
    if (haulier.isThirdPartyHaulier ?? false) {
      return HaulierType.thirdParty.toString();
    }
    return HaulierType.internal.toString();
  }

  String getHaulierTypeDisplay(Haulier haulier) {
    if (haulier.isManagedHaulier ?? false) {
      return StringConstants.managedthirdPartyHaulierDisplay;
    }
    if (haulier.isThirdPartyHaulier ?? false) {
      return StringConstants.thirdPartyHaulierDisplay;
    }
    return StringConstants.internalHaulierDisplay;
  }

  List<DeleteJobRequest> getJobsTodelete() {
    final jobsToDelete = <DeleteJobRequest>[];
    for (final e in edits.entries) {
      final jobsDeletedIndividually = e.value.jobs;
      final (haulierCode, _) = e.key;
      if (e.value.deleteAll) {
        schedulePlanDetail.value
            .firstWhereOrNull((s) => s.haulierCode == haulierCode)
            ?.jobDetail
            .forEach((a) {
          jobsToDelete.add(
            DeleteJobRequest(
              a.jobNumber,
              e.value.deleteAllReason?.description ?? '',
              e.value.deleteAllComment ?? '',
            ),
          );
        });
      } else {
        final jobs = e.value.jobs;
        if (jobs.isEmpty) continue;

        for (final job in jobsDeletedIndividually.entries) {
          final data = job.value;
          jobsToDelete.add(
            DeleteJobRequest(
              job.key,
              data.deleteReason?.description ?? '',
              data.deleteComment ?? '',
            ),
          );
        }
      }
    }
    return jobsToDelete;
  }

  PlanRequest buildPlanRequestModel() {
    final haulierSchedule = getUpdatedScheduleWithDiffs();
    final jobsToDelete = getJobsTodelete();

    return PlanRequest(
      plan!.planDate?.toUtc(),
      plan!.productFamily,
      selectedLoads.value,
      plan!.dispatchYard,
      plan!.due!,
      plan!.jobType!,
      plan!.dispatcherNotes ?? '',
      plan!.officeNotes ?? '',
      plan!.customer,
      plan!.customerLocation,
      plan!.startLocation,
      plan!.endLocation,
      haulierSchedule,
      plan!.containers,
      plan!.trailer,
      [],
      jobsToDelete: jobsToDelete,
      uomValue: plan!.uomValue,
    );
  }

  Future<void> fetchPlan(int planNumber) async {
    plan = await planService.getPlanDetailsByPlanNumber(planNumber);
  }

  Future<void> fetchLoadDetails(int planNumber) async {
    haulierDetails.value = await planService.getRemainingLoads(planNumber);
  }
}
