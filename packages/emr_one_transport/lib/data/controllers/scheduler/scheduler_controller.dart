import 'dart:async';

import 'package:collection/collection.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/api_response.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/controllers/common/screen_refresh_controller.dart';
import 'package:emr_one_transport/data/controllers/scheduler/scheduler_data_controller.dart';
import 'package:emr_one_transport/data/controllers/scheduler/scheduler_filter_controller.dart';
import 'package:emr_one_transport/data/controllers/scheduler/unschedule_controller.dart';
import 'package:emr_one_transport/data/models/common/action_result.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/jobs/haulier_details.dart';
import 'package:emr_one_transport/data/models/jobs/job_list.dart';
import 'package:emr_one_transport/data/models/jobs/job_scheduler_update_request.dart';
import 'package:emr_one_transport/data/models/scheduler/internal_haulier_dto.dart';
import 'package:emr_one_transport/data/models/scheduler/job_base.dart';
import 'package:emr_one_transport/data/models/scheduler/job_locate_response.dart';
import 'package:emr_one_transport/data/models/scheduler/job_reassign_info.dart';
import 'package:emr_one_transport/data/models/scheduler/job_schedule_info.dart';
import 'package:emr_one_transport/data/models/scheduler/reassign_job_request.dart';
import 'package:emr_one_transport/data/models/scheduler/schedule_plan_request.dart';
import 'package:emr_one_transport/data/models/scheduler/scheduler_group.dart';
import 'package:emr_one_transport/data/models/scheduler/scheduler_job.dart';
import 'package:emr_one_transport/data/models/scheduler/scheduler_state.dart';
import 'package:emr_one_transport/data/models/scheduler/scheduler_truck.dart';
import 'package:emr_one_transport/data/models/scheduler/third_party_haulier_with_jobs.dart';
import 'package:emr_one_transport/data/models/scheduler/thirdparty_haulier_dto.dart';
import 'package:emr_one_transport/data/models/scheduler/unscheduled_job.dart';
import 'package:emr_one_transport/data/models/scheduler/vor_schedule.dart';
import 'package:emr_one_transport/data/models/trucks/enforce_job_sequence_request.dart';
import 'package:emr_one_transport/data/services/date_helper.dart';
import 'package:emr_one_transport/data/services/job_helper.dart';
import 'package:emr_one_transport/data/services/shared_preferences_service.dart';
import 'package:emr_one_transport/data/services/signalr_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_timezone/flutter_timezone.dart';

class SchedulerController extends ChangeNotifier {
  SchedulerController(
    this._filterController,
    this._dataController,
    this._sharedPreferenceService,
    this.unscheduleController,
    this._signalRService,
    this.screenRefreshController,
  );
  final SignalrService _signalRService;
  final SchedulerFilterController _filterController;
  final SchedulerDataController _dataController;
  final SharedPreferencesService _sharedPreferenceService;
  final UnscheduleController unscheduleController;
  final ScreenRefreshController screenRefreshController;
  SchedulerTruckGroupBy schedulerGroupBy = SchedulerTruckGroupBy.haulier;
  final ValueNotifier<DateTime> selectedDateNotifier = ValueNotifier(
    DateTime.now(),
  );

  List<SchedulerGroup> scheduleJobResponse = [];
  SchedulerJob? jobToFocus;
  bool isloading = true;
  DateTime calendarStartDate = DateTime(2010);
  DateTime calendarEndDate = DateTime(2050);
  ValueNotifier<bool> showUnscheduledJobs = ValueNotifier(false);
  List<SchedulerGroup> allManagedJobs = [];
  late SchedulerState appliedState;
  final debounceSearch = Debounceable<List<UnscheduledJob>>();
  ValueNotifier<bool> isUnscheduledJobsSortAscending = ValueNotifier(true);
  ValueNotifier<bool> is24HourFormat = ValueNotifier(false);
  ValueNotifier<String> unscheduledJobSearchTerm = ValueNotifier('');
  List<ThirdPartyHaulierWithJobs> haulierJobs = <ThirdPartyHaulierWithJobs>[];
  List<ThirdpartyHaulierDto> thirdPartyJobsMasterList = [];
  ValueNotifier<HaulierType> switchTabNotifier = ValueNotifier(
    HaulierType.internal,
  );
  EmrFilterController getFilterController() {
    return _filterController;
  }

  void pauseScreenRefresh() {
    screenRefreshController.pauseScreenRefresh();
  }

  void resumeScreenRefresh() {
    screenRefreshController.resumeScreenRefresh();
    notifyListeners();
  }

  Set<int> get allJobNumbersOnScreen => {
    ...scheduleJobResponse
        .expand((y) => y.trucks)
        .expand((t) => t.schedulerJobs)
        .map((j) => j.jobNumber),
    ...allManagedJobs
        .expand((y) => y.trucks)
        .expand((t) => t.schedulerJobs)
        .map((j) => j.jobNumber),
    ...thirdPartyJobsMasterList.expand((y) => y.jobs).map((j) => j.jobNumber),
  };
  Future<String?> initialize(int? jobNumber) async {
    String? error;
    if (jobNumber != null) {
      error = await initializeScreenForLocateJob(jobNumber);
    } else {
      try {
        await _filterController.fetchFilterValues();
        await _loadOrResetState();
        unawaited(
          unscheduleController.setFilter(
            appliedState.filter,
            selectedDateNotifier.value,
            appliedState.unscheduledJobSearchTerm,
          ),
        );
        await fetchAllJobs();
        collapseGroup(scheduleJobResponse);
        collapseGroup(allManagedJobs);
        await _attachListeners();
      } catch (e) {
        error = e.toString();
      }
    }
    return error;
  }

  Future<String?> initializeScreenForLocateJob(int jobNumber) async {
    try {
      showloader();
      final joblocateResponse = await _dataController.getJobLocate(jobNumber);

      jobToFocus = joblocateResponse.job;
      await _filterController.fetchFilterValues();
      await _loadStateForLocateJob(joblocateResponse);
      unawaited(
        unscheduleController.setFilter(
          appliedState.filter,
          selectedDateNotifier.value,
          appliedState.unscheduledJobSearchTerm,
        ),
      );
      await _fetchAllScheduledJobs();
      _bringYardToTop(joblocateResponse);
      _adjustVORSchedule();
      _reArrangeTrucksFromPreference();
      _mapThirdPartyResponse();
      await _attachListeners();
      _switchTabsBasedOnHaulierType(joblocateResponse);
      _checkForJobLocateError(joblocateResponse);
    } catch (e) {
      return e.toString();
    } finally {
      hideloader();
    }
    return null;
  }

  void _checkForJobLocateError(JobLocateResponse joblocateResponse) {
    if (joblocateResponse.job == null) {
      throw Exception('Job not found');
    }

    final jobNumber = joblocateResponse.job!.jobNumber;
    dynamic isJobLocated;

    if (isInternal(joblocateResponse.haulierType)) {
      isJobLocated = scheduleJobResponse
          .expand((yard) => yard.trucks)
          .expand((truck) => truck.schedulerJobs)
          .firstWhereOrNull((e) => e.jobNumber == jobNumber);
    }

    if (isManaged(joblocateResponse.haulierType)) {
      isJobLocated = allManagedJobs
          .expand((yard) => yard.trucks)
          .expand((truck) => truck.schedulerJobs)
          .firstWhereOrNull((e) => e.jobNumber == jobNumber);
    }

    if (isThirdparty(joblocateResponse.haulierType)) {
      isJobLocated = thirdPartyJobsMasterList
          .expand((haulier) => haulier.jobs)
          .firstWhereOrNull((e) => e.jobNumber == jobNumber);
    }

    if (isJobLocated == null) {
      throw Exception('Unable to locate the job $jobNumber');
    }
  }

  Future<void> fetchAllJobs() async {
    showloader();
    await _fetchAllScheduledJobs();
    _mapThirdPartyResponse();
    _adjustVORSchedule();
    _reArrangeTrucksFromPreference();
    hideloader();
  }

  Future<void> _fetchAllScheduledJobs() async {
    final response = await _dataController.fetchScheduledJobs(
      selectedDateNotifier.value,
      appliedState.filter,
    );
    scheduleJobResponse = getSchedulerGroupFromPreference(
      response.internalHaulier,
    );
    allManagedJobs.clear();
    for (final e in response.managedHauliers) {
      allManagedJobs.add(
        SchedulerGroup(
          groupBy: SchedulerTruckGroupBy.haulier,
          groupTitle: e.haulierCode,
          groupSubTitle: e.haulierName ?? '',
          trucks: e.trucks,
        ),
      );
    }
    thirdPartyJobsMasterList = response.thirdPartyHauliers;
  }

  void showloader() {
    isloading = true;
    notifyListeners();
  }

  void hideloader() {
    isloading = false;
    notifyListeners();
  }

  Future<ApiResponse<void>> scheduleLoadsForPlan(
    int planId,
    int noOfLoads,
    String truckOrHaulier,
    HaulierType targetHaulierType,
  ) async {
    return ApiResponse<void>(
      null,
      isSuccess: false,
      errorMessage: 'Failed to schedule loads',
    );
  }

  Future<void> onSlectedDateChanged() async {
    await _persistState();
    await unscheduleController.setFilter(
      appliedState.filter,
      selectedDateNotifier.value,
      appliedState.unscheduledJobSearchTerm,
    );
    await fetchAllJobsAndArrangeJobs();
  }

  Future<void> fetchAllJobsAndArrangeJobs() async {
    await fetchAllJobs();
    collapseGroup(scheduleJobResponse);
    collapseGroup(allManagedJobs);
    notifyListeners();
  }

  Future<void> onFilterChanged() async {
    await _persistState();
    await unscheduleController.setFilter(
      appliedState.filter,
      selectedDateNotifier.value,
      appliedState.unscheduledJobSearchTerm,
    );
    await fetchAllJobsAndArrangeJobs();
  }

  Future<void> saveCurrentStateInCache() async {
    await _sharedPreferenceService.setSchedulerState(appliedState);
  }

  Future<ApiResponse<bool>> reArrangeTrucksAndSave(
    String yardCode,
    List<String> incomingTruckOrder,
  ) async {
    await _reArrangeTrucks(yardCode, incomingTruckOrder);

    _dataController.truckDisplayOrder[yardCode] = incomingTruckOrder;

    return _dataController.saveTruckDisplayOrder(yardCode, incomingTruckOrder);
  }

  Future<void> _reArrangeTrucks(
    String yardCode,
    List<String> incomingTruckOrder,
  ) async {
    showloader();
    try {
      // find your yard
      final haulierTrucks = _getTrucksForHaulierCOde(yardCode);

      if (haulierTrucks.isEmpty) {
        // nothing to do
        return;
      }

      // map vrm → Truck
      final truckMap = {for (final t in haulierTrucks) t.vrm: t};

      // build ordered list:
      //    a) first, all trucks in the incoming order (if they exist)
      //    b) then, any trucks _not_ mentioned, in their original order
      final orderedTrucks = <SchedulerTruck>[
        for (final vrm in incomingTruckOrder)
          if (truckMap.containsKey(vrm)) truckMap[vrm]!,
        for (final t in haulierTrucks)
          if (!incomingTruckOrder.contains(t.vrm)) t,
      ];

      // apply the new ordering
      haulierTrucks
        ..clear()
        ..addAll(orderedTrucks);
    } finally {
      hideloader();
    }
  }

  List<SchedulerTruck> _getTrucksForHaulierCOde(String haulierCode) {
    final yardResponse = scheduleJobResponse.firstWhereOrNull(
      (e) => e.groupTitle == haulierCode,
    );
    if (yardResponse != null) {
      return yardResponse.trucks;
    }
    final managedResponse = allManagedJobs.firstWhereOrNull(
      (e) => e.groupTitle == haulierCode,
    );
    if (managedResponse != null) {
      return managedResponse.trucks;
    }
    return [];
  }

  void _reArrangeTrucksFromPreference() {
    _dataController.truckDisplayOrder.forEach(_reArrangeTrucks);
  }

  Future<String?> scheduleJob(
    JobBase job,
    TimeOfDay? time,
    HaulierType targetHaulierType,
  ) async {
    showloader();
    String? errorMessage;
    try {
      if (targetHaulierType == HaulierType.thirdParty) {
        await _processThirdPartyHaulier(job);
      } else {
        _validateTime(time);
        await _processInternalManagedHaulier(job, time!, targetHaulierType);
      }
    } catch (e) {
      errorMessage = e.toString();
    } finally {
      hideloader();
    }
    return errorMessage;
  }

  /// Rebuilds the third-party haulier UI list from the master list.
  void _mapThirdPartyResponse() {
    haulierJobs.clear();
    haulierJobs.addAll(
      thirdPartyJobsMasterList.map(
        (item) => ThirdPartyHaulierWithJobs(
          haulierCode: item.haulierCode,
          haulierName: item.haulierName ?? '',
          groupedJobsOnJobType: item.groupJobsByType(),
          allJobs: item.jobs,
        ),
      ),
    );
  }

  // Validates that time is provided for hauliers that need it.
  void _validateTime(TimeOfDay? time) {
    if (time == null) {
      throw ArgumentError(StringConstants.errorMsgTimeRequired);
    }
  }

  // ---------------------------------------------------------------------------
  // Processing based on HaulierType and Job dragItemType.
  // ---------------------------------------------------------------------------
  Future<void> _processInternalManagedHaulier(
    JobBase job,
    TimeOfDay time,
    HaulierType targetHaulierType,
  ) async {
    if (_isStandardJobType(job)) {
      await _processStandardJob(job, time, targetHaulierType);
    } else if (_isThirdParty(job)) {
      await _processThirdPartyJobToInternalManaged(
        job,
        time,
        targetHaulierType,
      );
    } else {
      throw Exception(StringConstants.errorMsgHaulierDoesNotSupport);
    }
  }

  bool _isStandardJobType(JobBase job) {
    const standardTypes = {
      DragItemType.unscheduledJob,
      DragItemType.internalJob,
      DragItemType.managedJob,
    };
    return standardTypes.contains(job.dragItemType);
  }

  bool _isThirdParty(JobBase job) {
    const thirdPartyTypes = {
      DragItemType.thirdPartyJob,
      DragItemType.thirdPartyJobGroup,
    };
    return thirdPartyTypes.contains(job.dragItemType);
  }

  // ---------------------------------------------------------------------------
  // Standard Job Processing
  // ---------------------------------------------------------------------------
  Future<void> _processStandardJob(
    JobBase job,
    TimeOfDay time,
    HaulierType targetHaulierType,
  ) async {
    final scheduledTime = _getScheduleDateTime(timeOfTheDay: time);
    final scheduleInfo = _buildStandardJobScheduleInfo(job, scheduledTime);

    final response = await _dataController.scheduleJob(
      scheduleInfo.jobNumber,
      1,
      scheduleInfo.scheduledDate,
      scheduleInfo.vrm,
      scheduleInfo.duration,
      targetHaulierType,
    );
    _updateDataSource(job, targetHaulierType, response);
  }

  JobScheduleInfo _buildStandardJobScheduleInfo(
    JobBase job,
    DateTime scheduledTime,
  ) {
    if (job is UnscheduledJobWrapper) {
      return job.buildScheduleInfo(scheduledTime);
    } else if (job is InternalJobWrapper) {
      return job.buildScheduleInfo(scheduledTime);
    } else if (job is ManagedJobWrapper) {
      return job.buildScheduleInfo(scheduledTime);
    }
    throw Exception(StringConstants.errorMsgHaulierDoesNotSupport);
  }

  // ---------------------------------------------------------------------------
  // Third-party job Scheduling to Internal/Managed Hauliers.
  // ---------------------------------------------------------------------------
  Future<void> _processThirdPartyJobToInternalManaged(
    JobBase job,
    TimeOfDay time,
    HaulierType targetHaulierType,
  ) async {
    final request = await _createReassignJobRequest(
      job,
      time: time,
      haulierType: targetHaulierType,
    );
    final result = await _dataController.reassignJobs(request);
    if (result.isSuccess) {
      _handleThirdPartyScheduling(job, result.data!, targetHaulierType);
    } else {
      throw Exception(result.errorMessage);
    }
  }

  // ---------------------------------------------------------------------------
  // Third-party Scheduling Processing
  // ---------------------------------------------------------------------------
  Future<void> _processThirdPartyHaulier(JobBase jobBase) async {
    final request = await _createReassignJobRequest(
      jobBase,
      haulierType: HaulierType.thirdParty,
    );
    final result = await _dataController.reassignJobs(request);

    if (result.isSuccess) {
      _handleThirdPartyHaulierSuccess(jobBase, result.data!);
    } else {
      _handleThirdPartyHaulierFailure(jobBase);
      throw Exception(result.errorMessage);
    }
  }

  // Builds a ReassignJobRequest for a job and target haulier.
  Future<ReassignJobRequest> _createReassignJobRequest(
    JobBase job, {
    required HaulierType haulierType,
    TimeOfDay? time,
  }) async {
    final scheduleDate = (time != null)
        ? _getScheduleDateTime(timeOfTheDay: time)
        : _getScheduleDateTime();

    return ReassignJobRequest(
      dispatchYard: '',
      vrm: job.targetVrm ?? '',
      scheduleDate: scheduleDate,
      jobs: getReassignInfo(job),
      haulierType: haulierType.toString(),
      haulierCode: job.tagetHaulierCode ?? '',
      timezoneId: await FlutterTimezone.getLocalTimezone(),
    );
  }

  // ---------------------------------------------------------------------------
  // Handling Third-party responses for internal/managed jobs.
  // ---------------------------------------------------------------------------

  void _handleThirdPartyScheduling(
    JobBase job,
    List<SchedulerJob> scheduledJobs,
    HaulierType targetHaulierType,
  ) {
    addJobsToTruck(scheduledJobs, job.targetHaulierType);
    _removeScheduledJobsFromMaster(scheduledJobs, job);
    _mapThirdPartyResponse();
  }

  void _removeScheduledJobsFromMaster(
    List<SchedulerJob> scheduledJobs,
    JobBase job,
  ) {
    final jobNumbersToRemove = scheduledJobs
        .map((info) => info.jobNumber)
        .toList();
    final haulierEntry = thirdPartyJobsMasterList.firstWhere(
      (entry) => entry.haulierCode == (job.fromHaulierCode ?? ''),
    );
    haulierEntry.removeJobWhere(
      (scheduledJob) => jobNumbersToRemove.contains(scheduledJob.jobNumber),
    );
  }

  // ---------------------------------------------------------------------------
  // Handling Third-party scheduling success for directly third-party jobs.
  // ---------------------------------------------------------------------------

  void _handleThirdPartyHaulierSuccess(
    JobBase jobBase,
    List<SchedulerJob> resultData,
  ) {
    if (jobBase.dragItemType == DragItemType.unscheduledJob) {
      final scheduledJob = resultData.first;
      unscheduleController.removeJob(scheduledJob.jobNumber);
      _addUnscheduledJobToThirdParty(
        jobBase.tagetHaulierCode!,
        (jobBase as UnscheduledJobWrapper).unscheduledJob,
        resultData,
      );
    } else if (jobBase.dragItemType == DragItemType.internalJob ||
        jobBase.dragItemType == DragItemType.managedJob) {
      final internalJobBefore = jobBase is InternalJobWrapper
          ? jobBase.internalJob
          : (jobBase as ManagedJobWrapper).managedJob;

      internalJobBefore.vrm = null;

      final haulierJobs = thirdPartyJobsMasterList.firstWhere(
        (e) => e.haulierCode == jobBase.tagetHaulierCode,
      );

      final alreadyExists = haulierJobs.jobs.any(
        (j) => j.jobNumber == internalJobBefore.jobNumber,
      );

      if (!alreadyExists) {
        haulierJobs.addJob(internalJobBefore);
      }
    } else if (jobBase.dragItemType == DragItemType.thirdPartyJob ||
        jobBase.dragItemType == DragItemType.thirdPartyJobGroup) {
      _removeJobsFromThirdParty(jobBase, resultData);
    }
    _mapThirdPartyResponse();
  }

  // Handles third-party scheduling failures by re-adding the job.
  void _handleThirdPartyHaulierFailure(JobBase jobBase) {
    if (jobBase.dragItemType == DragItemType.internalJob) {
      addJobsToTruck([
        (jobBase as InternalJobWrapper).internalJob,
      ], HaulierType.internal);
    } else if (jobBase.dragItemType == DragItemType.managedJob) {
      addJobsToTruck([
        (jobBase as ManagedJobWrapper).managedJob,
      ], HaulierType.managed);
    }
  }

  // ---------------------------------------------------------------------------
  // Updating Data Sources & UI
  // ---------------------------------------------------------------------------

  void _updateDataSource(
    JobBase job,
    HaulierType targetHaulierType,
    ApiResponse<SchedulerJob> response,
  ) {
    if (job.dragItemType == DragItemType.unscheduledJob) {
      if (!response.isSuccess) {
        throw Exception(response.errorMessage);
      }
      unscheduleController.removeJob(response.data!.jobNumber);
      _removeJobFromUI(response.data!.jobNumber);
      addJobsToTruck([response.data!], targetHaulierType);
      notifyListeners();
      return;
    }

    if (response.isSuccess) {
      addJobsToTruck([response.data!], targetHaulierType);
    } else {
      if (job.dragItemType == DragItemType.internalJob) {
        addJobsToTruck([
          (job as InternalJobWrapper).internalJob,
        ], targetHaulierType);
      } else if (job.dragItemType == DragItemType.managedJob) {
        addJobsToTruck([
          (job as ManagedJobWrapper).managedJob,
        ], targetHaulierType);
      }
      throw Exception(response.errorMessage);
    }
  }

  // ---------------------------------------------------------------------------
  // Third-party Master List Utilities
  // ---------------------------------------------------------------------------

  void _removeJobsFromThirdParty(JobBase job, List<SchedulerJob> resultJobs) {
    final sourceHaulier = thirdPartyJobsMasterList.firstWhere(
      (entry) => entry.haulierCode == job.fromHaulierCode,
    );
    final targetHaulier = thirdPartyJobsMasterList.firstWhere(
      (entry) => entry.haulierCode == job.tagetHaulierCode,
    );

    final jobNumbersToMove = resultJobs.map((j) => j.jobNumber).toSet();

    final jobsToMove = sourceHaulier.jobs
        .where((j) => jobNumbersToMove.contains(j.jobNumber))
        .toList();

    sourceHaulier.removeJobWhere((j) => jobNumbersToMove.contains(j.jobNumber));
    targetHaulier.addJobs(jobsToMove);
  }

  void _addUnscheduledJobToThirdParty(
    String haulierCode,
    UnscheduledJob unscheduledJob,
    List<SchedulerJob> resultData,
  ) {
    final haulierEntry = thirdPartyJobsMasterList.firstWhere(
      (entry) => entry.haulierCode == haulierCode,
    );
    final job = resultData.firstWhere(
      (j) => j.jobNumber == unscheduledJob.jobNumber!,
    );

    haulierEntry.addJob(job);
  }

  // ---------------------------------------------------------------------------
  // Date Conversion Helper
  // ---------------------------------------------------------------------------

  DateTime _getScheduleDateTime({TimeOfDay? timeOfTheDay}) {
    final base = selectedDateNotifier.value;
    final dateTime = DateTime(
      base.year,
      base.month,
      base.day,
      timeOfTheDay?.hour ?? 0,
      timeOfTheDay?.minute ?? 0,
    );
    return dateTime;
  }

  // ---------------------------------------------------------------------------
  // Job Reassignment Data Extraction
  // ---------------------------------------------------------------------------
  List<JobReassignInfo> getReassignInfo(JobBase jobBase) {
    switch (jobBase.dragItemType) {
      case DragItemType.unscheduledJob:
        final wrapper = jobBase as UnscheduledJobWrapper;
        return [
          JobReassignInfo(
            duration: 0,
            jobNumber: wrapper.unscheduledJob.jobNumber!,
          ),
        ];

      case DragItemType.internalJob:
        final wrapper = jobBase as InternalJobWrapper;
        return [
          JobReassignInfo(
            duration: 0,
            jobNumber: wrapper.internalJob.jobNumber,
          ),
        ];

      case DragItemType.managedJob:
        final wrapper = jobBase as ManagedJobWrapper;
        return [
          JobReassignInfo(
            duration: wrapper.managedJob.duration,
            jobNumber: wrapper.managedJob.jobNumber,
          ),
        ];

      case DragItemType.thirdPartyJob:
        final wrapper = jobBase as ThirdPartyJobWrapper;
        return [
          JobReassignInfo(
            duration: wrapper.thirdPartyJob.duration,
            jobNumber: wrapper.thirdPartyJob.jobNumber,
          ),
        ];

      case DragItemType.thirdPartyJobGroup:
        final wrapper = jobBase as ThirdPartyJobGroupWrapper;
        return wrapper.jobsToSchedule
            .map(
              (job) => JobReassignInfo(
                duration: job.duration,
                jobNumber: job.jobNumber,
              ),
            )
            .toList();

      case DragItemType.plan:
        throw UnimplementedError(
          '${StringConstants.errorMsgForReassignment}${jobBase.dragItemType} ',
        );
    }
  }

  SchedulerTruck? _findTruck(String? vrm, HaulierType type) {
    if (vrm == null) {
      return null;
    }
    var source = allManagedJobs;
    if (type == HaulierType.internal) {
      source = scheduleJobResponse;
    }
    for (final yard in source) {
      for (final truck in yard.trucks) {
        if (truck.vrm == vrm) return truck;
      }
    }
    return null;
  }

  /// 2) Remove any matching job
  void removeJobFromTruck(SchedulerJob job, HaulierType type) {
    final truck = _findTruck(job.vrm, type);
    if (truck != null) {
      truck.schedulerJobs.removeWhere((j) => j.jobNumber == job.jobNumber);
    }
  }

  /// 3) Replace in-place if it exists
  void replaceJobInSource(SchedulerJob newJob, String vrm, HaulierType type) {
    final truck = _findTruck(vrm, type);
    if (truck != null) {
      final idx = truck.schedulerJobs.indexWhere(
        (j) => j.jobNumber == newJob.jobNumber,
      );
      if (idx != -1) {
        truck.schedulerJobs[idx] = newJob;
      }
    }
  }

  /// 4) Upsert & resort
  void addJobsToTruck(List<SchedulerJob> jobs, HaulierType type) {
    final selectedDate = selectedDateNotifier.value;
    //Sometimes when multiple jobs are scheduled, the jobs may
    //spillover to next day,so just fetch the jobs scheduled for selected date
    final selectedDateJobs = jobs.where((job) {
      final scheduledDate = job.scheduledDate.toLocal();
      return scheduledDate.year == selectedDate.year &&
          scheduledDate.month == selectedDate.month &&
          scheduledDate.day == selectedDate.day;
    }).toList();

    if (selectedDateJobs.isEmpty) return;

    final vrm = selectedDateJobs.first.vrm;
    final truck = _findTruck(vrm, type);
    if (truck == null) return;

    for (final incoming in selectedDateJobs) {
      final idx = truck.schedulerJobs.indexWhere(
        (j) => j.jobNumber == incoming.jobNumber,
      );
      if (idx == -1) {
        truck.schedulerJobs.add(incoming);
      } else {
        truck.schedulerJobs[idx] = incoming; // update/replace
      }
    }

    truck.schedulerJobs.sort(
      (a, b) => a.scheduledDate.compareTo(b.scheduledDate),
    );
  }

  Future<String?> schedulePlan(
    JobBase jobBase,
    TimeOfDay? schedulingTime,
  ) async {
    String? errorMessage;
    try {
      showloader();

      final plan = (jobBase as PlanWrapper).unscheduledJob;
      final isInternalPlan = isInternal(plan.haulierType ?? '');
      final planRequest = SchedulePlanRequest(
        planId: plan.planId!,
        vrm: jobBase.targetVrm,
        scheduleDate: _getScheduleDateTime(timeOfTheDay: schedulingTime),
        targetHaulierCode: jobBase.tagetHaulierCode!,
        targetHaulierType: jobBase.targetHaulierType.toString(),
        fromHaulierCode: plan.haulierCode!,
        fromHaulierType: isInternalPlan
            ? HaulierType.internal.toString()
            : HaulierType.managed.toString(),
        loadsToSchedule: jobBase.loads!,
        duration: 0,
        isExactSchedule: true,
        timezoneId: await FlutterTimezone.getLocalTimezone(),
      );
      final result = await _dataController.schedulePlan(planRequest);
      if (result.isSuccess) {
        _updatePlanAfterSchedule(plan, jobBase.loads!);
        if (jobBase.targetHaulierType == HaulierType.internal ||
            jobBase.targetHaulierType == HaulierType.managed) {
          for (final job in result.data!) {
            addJobsToTruck([job], jobBase.targetHaulierType);
          }
        } else {
          final haulierJob = thirdPartyJobsMasterList.firstWhere(
            (e) => e.haulierCode == jobBase.tagetHaulierCode,
          );
          for (final job in result.data!) {
            haulierJob.addJob(job);
          }
          _mapThirdPartyResponse();
        }
      } else {
        errorMessage = result.errorMessage;
      }
      return errorMessage;
    } catch (e) {
      return e.toString();
    } finally {
      hideloader();
    }
  }

  void _updatePlanAfterSchedule(UnscheduledJob plan, int scheduledLoads) {
    unscheduleController.updatePlanLoad(
      plan.planNumber!,
      plan.haulierCode!,
      scheduledLoads,
    );
  }

  Future<void> _persistState() async {
    final changedFilter = await _filterController.getFilterValues();

    final filter = appliedState.filter.copyWith(
      yardCodes: changedFilter.yardCodes,
      managedThirdPartyHaulierCodes:
          changedFilter.managedThirdPartyHaulierCodes,
      thirdPartyHaulierCodes: changedFilter.thirdPartyHaulierCodes,
      jobTypes: changedFilter.jobTypes,
      containerTypes: changedFilter.containerTypes,
      truckTypes: changedFilter.truckTypes,
      productFamilies: changedFilter.productFamilies,
    );
    final cashedData = await _sharedPreferenceService.getSchedulerState();
    appliedState = appliedState.copyWith(
      selectedDate: selectedDateNotifier.value,
      showUnScheduledJobs: showUnscheduledJobs.value,
      unscheduledJobSearchTerm: cashedData?.unscheduledJobSearchTerm,
      unscheduledJobSortAscending: cashedData?.unscheduledJobSortAscending,
      filter: filter,
      is24HrFormat: is24HourFormat.value,
    );

    await saveCurrentStateInCache();
  }

  Future<void> _loadOrResetState() async {
    await _fetchCachedScreenState();
    is24HourFormat.value = appliedState.is24HrFormat;
    showUnscheduledJobs.value = appliedState.showUnScheduledJobs;
    selectedDateNotifier.value = appliedState.selectedDate;
    unscheduledJobSearchTerm.value = appliedState.unscheduledJobSearchTerm;
    _filterController.applyFilters(appliedState.filter);
  }

  Future<void> _attachListeners() async {
    unawaited(_signalRService.start());
    _signalRService.on(
      StringConstants.jobCreatedUpdated,
      jobUpdateSignalRHandler,
    );
    _filterController.filters.addListener(onFilterChanged);
    selectedDateNotifier.addListener(onSlectedDateChanged);
    showUnscheduledJobs.addListener(_persistState);
    is24HourFormat.addListener(_persistState);
  }

  @override
  void dispose() {
    super.dispose();
    debounceSearch.dispose();
    _signalRService.stop();
    _filterController.filters.removeListener(onFilterChanged);
    selectedDateNotifier.removeListener(onSlectedDateChanged);
    showUnscheduledJobs.removeListener(_persistState);
    is24HourFormat.removeListener(_persistState);
  }

  Future<void> onYardRowCollapsed(
    String code, {
    required bool isCollapsed,
  }) async {
    if (isCollapsed) {
      appliedState.collapsedYards.add(code);
    } else {
      appliedState.collapsedYards.remove(code);
    }
    await saveCurrentStateInCache();
  }

  void unAssignJob(SchedulerJob job, HaulierType haulierType) {
    showloader();
    _removeJobFromUI(job.jobNumber);
    final unscheduledJob = UnscheduledJob.fromScheduledJob(job);

    unscheduleController.addJob(unscheduledJob);
    hideloader();
  }

  Future<ApiResponse<SchedulerJob>> startJob(
    SchedulerJob job,
    HaulierType haulierType,
  ) async {
    showloader();
    try {
      final jobStartedDateTime = DateTime.now().toUtc();
      final request = JobSchedulerUpdateRequest(
        id: job.id,
        isAbandoned: false,
        startedTime: jobStartedDateTime,
      );

      final result = await _dataController.updateJobFromScheduler(request);
      if (result.isSuccess) {
        await fetchAllJobsAndArrangeJobs();
      }
      return result;
    } finally {
      hideloader();
    }
  }

  Future<JobList?> getJobDetails(int jobNumber) {
    showloader();
    final job = _dataController.getJobDetails(jobNumber);
    hideloader();
    return job;
  }

  void collapseGroup(List<SchedulerGroup> source) {
    for (final groupItem in source) {
      groupItem.isExpanded = !appliedState.collapsedYards.contains(
        groupItem.groupTitle,
      );
    }
  }

  void _adjustVORSchedule() {
    for (final yard in scheduleJobResponse) {
      for (final truck in yard.trucks) {
        if (truck.vorSchedules != null && truck.vorSchedules!.isNotEmpty) {
          for (var i = 0; i < truck.vorSchedules!.length; i++) {
            final vor = truck.vorSchedules![i];
            truck.vorSchedules![i] = mapVORToDate(
              vor,
              selectedDateNotifier.value,
            );
          }
        }
      }
    }
  }

  VorSchedule mapVORToDate(VorSchedule vor, DateTime targetDate) {
    // Step 1: Compute local start and end of the selected date
    final startOfDay = DateTime(
      targetDate.year,
      targetDate.month,
      targetDate.day,
    );
    final endOfDay = startOfDay.add(const Duration(days: 1));

    // Step 2: Convert VOR start and end to local time
    final localStart = vor.startDateTime.toLocal();
    final localEnd = vor.endDateTime.toLocal();

    // Step 3: Clip within local day
    final clippedStart = localStart.isBefore(startOfDay)
        ? startOfDay
        : localStart;
    final clippedEnd = localEnd.isAfter(endOfDay) ? endOfDay : localEnd;

    // Step 4: Convert back to UTC
    return vor.copyWith(
      startDateTime: clippedStart.toUtc(),
      endDateTime: clippedEnd.toUtc(),
    );
  }

  Future<void> _loadStateForLocateJob(
    JobLocateResponse joblocateResponse,
  ) async {
    await _fetchCachedScreenState();

    if (joblocateResponse.dispatchYard != null &&
        !appliedState.filter.yardCodes.contains(
          joblocateResponse.dispatchYard,
        ) &&
        isInternal(joblocateResponse.haulierType)) {
      appliedState.filter.yardCodes.add(joblocateResponse.dispatchYard!);
    } else if (joblocateResponse.haulierCode != null &&
        isManaged(joblocateResponse.haulierType) &&
        !appliedState.filter.managedThirdPartyHaulierCodes.contains(
          joblocateResponse.haulierCode,
        )) {
      appliedState.filter.managedThirdPartyHaulierCodes.add(
        joblocateResponse.haulierCode!,
      );
    } else if (joblocateResponse.haulierCode != null &&
        isThirdparty(joblocateResponse.haulierType) &&
        !appliedState.filter.thirdPartyHaulierCodes.contains(
          joblocateResponse.haulierCode,
        )) {
      appliedState.filter.thirdPartyHaulierCodes.add(
        joblocateResponse.haulierCode!,
      );
    }
    showUnscheduledJobs.value = false;
    is24HourFormat.value = appliedState.is24HrFormat;
    selectedDateNotifier.value =
        joblocateResponse.job?.scheduledDate.toLocal() ?? DateTime.now();
    unscheduledJobSearchTerm.value = '';
    _filterController.applyFilters(appliedState.filter);
  }

  Future<void> _fetchCachedScreenState() async {
    final cached = await _sharedPreferenceService.getSchedulerState();
    final today = DateTime.now();
    if (cached != null && DateHelper.isSameDate(cached.createdDate, today)) {
      // same day → prune filter, keep rest
      appliedState = cached.copyWith(
        filter: cached.filter.updateForUserAccess(_dataController),
      );
    } else {
      // new day or no cache → brand-new defaults
      appliedState = SchedulerState.defaults(
        _dataController,
        today: today,
        is24HourFormat: cached?.is24HrFormat ?? false,
        collapsedYards: cached?.collapsedYards ?? [],
      );
    }
  }

  void _bringYardToTop(JobLocateResponse joblocateResponse) {
    try {
      if (isInternal(joblocateResponse.haulierType)) {
        final matchCriteeria = schedulerGroupBy == SchedulerTruckGroupBy.yard
            ? joblocateResponse.dispatchYard
            : joblocateResponse.haulierCode;

        JobHelper.bringItemToTop<SchedulerGroup>(
          list: scheduleJobResponse,
          match: (y) => y.groupTitle == matchCriteeria,
        );
      } else if (isManaged(joblocateResponse.haulierType)) {
        JobHelper.bringItemToTop<SchedulerGroup>(
          list: allManagedJobs,
          match: (y) => y.groupTitle == joblocateResponse.haulierCode,
        );
      } else {
        // Third-party: bring haulier and job to top
        final haulier = JobHelper.bringItemToTop<ThirdpartyHaulierDto>(
          list: thirdPartyJobsMasterList,
          match: (y) => y.haulierCode == joblocateResponse.haulierCode,
        );

        if (haulier != null) {
          JobHelper.bringItemToTop<SchedulerJob>(
            list: haulier.jobs,
            match: (j) => j.jobNumber == joblocateResponse.job!.jobNumber,
          );
        }
      }
    } catch (_) {
      // Silently ignore any error
    }
  }

  bool isInternal(String internal) {
    return internal == HaulierType.internal.toString();
  }

  bool isManaged(String managed) {
    return managed == HaulierType.managed.toString();
  }

  bool isThirdparty(String thirdParty) {
    return thirdParty == HaulierType.thirdParty.toString();
  }

  void _switchTabsBasedOnHaulierType(JobLocateResponse joblocateResponse) {
    if (isInternal(joblocateResponse.haulierType)) {
      switchTabNotifier.value = HaulierType.internal;
    }
    if (isManaged(joblocateResponse.haulierType)) {
      switchTabNotifier.value = HaulierType.managed;
    }
    if (isThirdparty(joblocateResponse.haulierType)) {
      switchTabNotifier.value = HaulierType.thirdParty;
    }
  }

  Future<ActionResult> enforceJobSequence(
    String truckVrm, {
    required bool enforceJobSequence,
  }) async {
    try {
      showloader();
      final startUtc = selectedDateNotifier.value.dateOnly.toUtc();
      final endtUtc = selectedDateNotifier.value.dateOnly
          .add(const Duration(hours: 23, minutes: 59, seconds: 59))
          .toUtc();

      final request = EnforceJobSequenceRequest(
        truckVrm: truckVrm,
        startDateUtc: startUtc,
        endDateUtc: endtUtc,
        enforceJobSequence: enforceJobSequence,
      );
      final result = await _dataController.enforceJobSequenceOnTruck(request);

      if (result.isSuccess) {
        scheduleJobResponse
                .expand((yard) => yard.trucks)
                .firstWhere((t) => t.vrm == truckVrm)
                .isJobSequenceEnforced =
            enforceJobSequence;
        return ActionResult(status: ActionStatus.apiSuccess);
      } else {
        return ActionResult(
          status: ActionStatus.apiFailure,
          errorMessage: result.errorMessage,
        );
      }
    } finally {
      hideloader();
    }
  }

  /// Group job [newJobId] with existing group anchored at [anchorJobId].
  Future<ActionResult> groupJob({
    required SchedulerJob anchorJob,
    required SchedulerJob jobToBeGrouped,
  }) async {
    try {
      showloader();
      final jobIds = <String>{};
      final allJobs = scheduleJobResponse
          .expand((yard) => yard.trucks)
          .expand((truck) => truck.schedulerJobs)
          .toList();

      if (anchorJob.groupId == null && jobToBeGrouped.groupId == null) {
        // → both ungrouped: just the two
        jobIds.addAll([anchorJob.id, jobToBeGrouped.id]);
      } else if (anchorJob.groupId != null && jobToBeGrouped.groupId == null) {
        // → merge incoming into anchor’s group
        jobIds.addAll(
          allJobs.where((j) => j.groupId == anchorJob.groupId).map((j) => j.id),
        );
        jobIds.add(jobToBeGrouped.id);
      }
      final result = await _dataController.updateGroup(
        jobIds.toList(),
        null,
        doCombineGroup: true,
      );
      if (result.isSuccess) {
        return ActionResult(status: ActionStatus.apiSuccess);
      } else {
        return ActionResult(
          status: ActionStatus.apiFailure,
          errorMessage: result.errorMessage,
        );
      }
    } finally {
      hideloader();
    }
  }

  Future<ActionResult> ungroupJob(SchedulerJob job) async {
    try {
      showloader();
      final allJobs = scheduleJobResponse
          .expand((yard) => yard.trucks)
          .expand((truck) => truck.schedulerJobs)
          .toList();
      final jobsInSameGroup = allJobs.where((j) => j.groupId == job.groupId);
      final result = await _dataController.updateGroup(
        jobsInSameGroup.map((j) => j.id).toList(),
        job.groupId,
        doCombineGroup: false,
      );
      if (result.isSuccess) {
        return ActionResult(status: ActionStatus.apiSuccess);
      } else {
        return ActionResult(
          status: ActionStatus.apiFailure,
          errorMessage: result.errorMessage,
        );
      }
    } finally {
      hideloader();
    }
  }

  void jobUpdateSignalRHandler(List<Object?>? args) {
    if (args == null || args.isEmpty) return;

    final jobJson = args[0] as Map<String, dynamic>?;
    if (jobJson == null) return;

    final job = SchedulerJob.fromJson(jobJson);

    final isUnassigned = job.jobStatus == StringConstants.pendingApiValue;
    final isDeleted = job.jobStatus == StringConstants.deletedApiValue;
    final isOnScreen = allJobNumbersOnScreen.contains(job.jobNumber);

    if (isUnassigned && isOnScreen) {
      _removeJobFromUI(job.jobNumber);
      unscheduleController.addJob(UnscheduledJob.fromScheduledJob(job));
      _refreshIfAllowed();
      return;
    }

    if (isDeleted && isOnScreen) {
      _removeJobFromUI(job.jobNumber);
      _refreshIfAllowed();
      return;
    }

    final isInSelectedDateWindow = DateHelper.isDateInDayWindow(
      selectedDateNotifier.value,
      job.scheduledDate,
    );

    if (isUnassigned || !isInSelectedDateWindow) return;
    if (args.length < 2 || args[1] == null) return;

    final haulierJson = args[1]! as Map<String, dynamic>;
    final haulierDetail = HaulierDetails.fromJson(haulierJson);
    final haulierType = HaulierType.fromString(haulierDetail.haulierType!);

    _removeJobFromUI(job.jobNumber);

    switch (haulierType) {
      case HaulierType.internal:
      case HaulierType.managed:
        addJobsToTruck([job], haulierType);

      case HaulierType.thirdParty:
        addJobToHaulierUI(job, haulierDetail.haulierCode!);
    }

    _refreshIfAllowed();
  }

  void _refreshIfAllowed() {
    if (screenRefreshController.canRefreshScreen()) {
      notifyListeners();
    }
  }

  //Add one job into the right haulier
  void addJobToHaulierUI(SchedulerJob job, String haulierCode) {
    final haulier = thirdPartyJobsMasterList.firstWhereOrNull(
      (h) => h.haulierCode == haulierCode,
    );
    if (haulier == null) return;

    final haulierListBoundToUI = haulierJobs.firstWhereOrNull(
      (h) => h.haulierCode == haulierCode,
    );

    haulier.addJob(job);
    haulierListBoundToUI!.refreshGroupedJobs(haulier);
  }

  void _removeJobFromUI(int jobNumber) {
    for (final yard in scheduleJobResponse) {
      for (final truck in yard.trucks) {
        final hits = truck.schedulerJobs
            .where((j) => j.jobNumber == jobNumber)
            .toList(); // toList() to avoid concurrent modification
        for (final job in hits) {
          removeJobFromTruck(job, HaulierType.internal);
        }
      }
    }

    // Managed haulier
    for (final yard in allManagedJobs) {
      for (final truck in yard.trucks) {
        final hits = truck.schedulerJobs
            .where((j) => j.jobNumber == jobNumber)
            .toList();
        for (final job in hits) {
          removeJobFromTruck(job, HaulierType.managed);
        }
      }
    }

    // Third-party hauliers
    for (final tph in thirdPartyJobsMasterList) {
      final removed = tph.removeJobByNumber(jobNumber);
      if (!removed) continue;

      // Sync derived/grouped jobs since something was actually removed
      final haulier = haulierJobs.firstWhereOrNull(
        (h) => h.haulierCode == tph.haulierCode,
      );
      if (haulier != null) {
        haulier.refreshGroupedJobs(tph);
      }
      break; // job can only exist in one haulier
    }
  }

  Future<ActionResult> printDispatchSlips(List<String> jobIds) async {
    try {
      showloader();
      final result = await _dataController.printDispatchSlipForJobs(jobIds);
      if (result.isSuccess) {
        return ActionResult(status: ActionStatus.apiSuccess);
      } else {
        return ActionResult(
          status: ActionStatus.apiFailure,
          errorMessage: result.errorMessage,
        );
      }
    } finally {
      hideloader();
    }
  }

  String? _findIternalTruckYardCode(String? vrm) {
    if (vrm == null) {
      return null;
    }
    for (final yard in scheduleJobResponse) {
      for (final truck in yard.trucks) {
        if (truck.vrm == vrm) {
          return yard.groupTitle; // return the yard code if truck found
        }
      }
    }
    return null;
  }

  Future<ActionResult> printDispatchSlipForTrucks(
    List<String> vrms,
    String? yardCode,
  ) async {
    try {
      showloader();
      final result = await _dataController.printDispatchSlipForTrucks(
        vrms,
        selectedDateNotifier.value,
        yardCode ?? _findIternalTruckYardCode(vrms.first) ?? '',
      );
      if (result.isSuccess) {
        return ActionResult(status: ActionStatus.apiSuccess);
      } else {
        return ActionResult(
          status: ActionStatus.apiFailure,
          errorMessage: result.errorMessage,
        );
      }
    } finally {
      hideloader();
    }
  }

  List<SchedulerGroup> getSchedulerGroupFromPreference(
    InternalHaulierDto? internalHaulierDto,
  ) {
    schedulerGroupBy = internalHaulierDto?.hauliers.isEmpty ?? true
        ? SchedulerTruckGroupBy.yard
        : SchedulerTruckGroupBy.haulier;

    switch (schedulerGroupBy) {
      case SchedulerTruckGroupBy.yard:
        return internalHaulierDto?.yards
                .map(
                  (e) => SchedulerGroup(
                    groupBy: SchedulerTruckGroupBy.yard,
                    groupTitle: e.yardCode,
                    groupSubTitle: e.yardName,
                    trucks: e.trucks,
                  ),
                )
                .toList() ??
            [];

      case SchedulerTruckGroupBy.haulier:
        return internalHaulierDto?.hauliers
                .map(
                  (e) => SchedulerGroup(
                    groupBy: SchedulerTruckGroupBy.haulier,
                    groupTitle: e.haulierCode,
                    groupSubTitle: e.haulierName,
                    trucks: e.trucks,
                  ),
                )
                .toList() ??
            [];
    }
  }
}
