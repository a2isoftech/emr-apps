import 'package:emr_one_transport/core/api_response.dart';
import 'package:emr_one_transport/core/constants/constants.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/common/list_details.dart';
import 'package:emr_one_transport/data/models/filters/paged_filter_request.dart';
import 'package:emr_one_transport/data/models/jobs/job_list.dart';
import 'package:emr_one_transport/data/models/jobs/job_scheduler_update_request.dart';
import 'package:emr_one_transport/data/models/scheduler/fetch_scheduler_job_request.dart';
import 'package:emr_one_transport/data/models/scheduler/haulier.dart';
import 'package:emr_one_transport/data/models/scheduler/job_locate_response.dart';
import 'package:emr_one_transport/data/models/scheduler/reassign_job_request.dart';
import 'package:emr_one_transport/data/models/scheduler/schedule_plan_request.dart';
import 'package:emr_one_transport/data/models/scheduler/scheduler_bucket.dart';
import 'package:emr_one_transport/data/models/scheduler/scheduler_filter.dart';
import 'package:emr_one_transport/data/models/scheduler/scheduler_job.dart';
import 'package:emr_one_transport/data/models/scheduler/scheduler_yard.dart';
import 'package:emr_one_transport/data/models/scheduler/third_party_job_api_response.dart';
import 'package:emr_one_transport/data/models/scheduler/unscheduled_job.dart';
import 'package:emr_one_transport/data/models/trucks/enforce_job_sequence_request.dart';
import 'package:emr_one_transport/data/models/user_preferences/dispatch_yards.dart';
import 'package:emr_one_transport/data/models/user_preferences/scheduler_preference.dart';
import 'package:emr_one_transport/data/models/user_preferences/user_managed_hauliers.dart';
import 'package:emr_one_transport/data/models/user_preferences/user_thirdparty_hauliers.dart';
import 'package:emr_one_transport/data/services/api_service.dart';
import 'package:emr_one_transport/data/services/common_service.dart';
import 'package:emr_one_transport/data/services/joblist_service.dart';
import 'package:emr_one_transport/data/services/truck_service.dart';
import 'package:emr_one_transport/data/services/user_settings_service.dart';
import 'package:flutter_timezone/flutter_timezone.dart';

class SchedulerDataController {
  SchedulerDataController(
    this._apiService,
    this._commonService,
    this.jobListService,
    this.truckService,
    this.userSettingsService,
  );
  final ApiService _apiService;
  final CommonService _commonService;
  final JobListService jobListService;
  final TruckService truckService;
  final UserSettingsService userSettingsService;

  List<DispatchYards> allYards = [];
  Map<String, List<String>> truckDisplayOrder = {};
  List<ListDetails> allContainerTypes = [];
  List<ListDetails> allProductFamilies = [];
  List<ListDetails> allTruckTypes = [];
  List<Haulier> allHaulierCodes = [];
  List<Haulier> myManagedHauliers = [];
  List<Haulier> myThirdPartyHauliers = [];
  List<ListDetails> allJobTypes = [];
  SchedulerPreference? schedulerPreference;

  Future<void> getFilterValues() async {
    allJobTypes = JobType.values.map((e) {
      return ListDetails(code: e.apiValue, description: e.toString());
    }).toList();
    allJobTypes.sort((a, b) => a.description!.compareTo(b.description!));

    await Future.wait([
      getUserYards(),
      storeSchedulerPreference(),
      getTruckDisplayOrder(),
      fetchMyFavouriteHauliers(),
      fetchContainerTypes(),
      fetchTruckTypes(),
      fetchProductTypes(),
    ]);
  }

  Future<JobLocateResponse> getJobLocate(int jobNumber) async {
    final response = await _apiService.get<JobLocateResponse>(
      StringConstants.kJobLocateUrl,
      fromJsonT: (json) =>
          JobLocateResponse.fromJson(json as Map<String, dynamic>),
      queryParams: {StringConstants.jobNumberUrlName: jobNumber.toString()},
    );
    if (!response.isSuccess) {
      return JobLocateResponse(haulierType: HaulierType.internal.toString());
    }
    return response.data!;
  }

  Future<List<UnscheduledJob>> fetchUnscheduledJobs(
    PagedFilterRequest request,
  ) async {
    final response = await _apiService.postList<UnscheduledJob>(
      StringConstants.kschedulergetUnscheduledJobUrl,
      fromJsonT: UnscheduledJob.fromJson,
      body: request.toQueryParam(),
    );
    return response.data ?? [];
  }

  Future<void> getTruckDisplayOrder() async {
    final response = await _apiService.get<Map<String, List<String>>>(
      StringConstants.getTruckOrderUrl,
      fromJsonT: (json) {
        final rawMap = json as Map<String, dynamic>;
        return rawMap.map(
          (key, value) => MapEntry(key, List<String>.from(value as List)),
        );
      },
    );
    truckDisplayOrder = response.data ?? <String, List<String>>{};
  }

  Future<ApiResponse<bool>> saveTruckDisplayOrder(
    String yardCode,
    List<String> truckOrder,
  ) async {
    final response = await _apiService.post<bool>(
      StringConstants.saveTruckOrderUrl,
      body: {'YardCode': yardCode, 'TruckVrmDisplayOrder': truckOrder},
    );
    return response;
  }

  Future<void> fetchContainerTypes() async {
    allContainerTypes = await _commonService.getListByType(
      StringConstants.containerTypes,
    );
  }

  Future<void> fetchTruckTypes() async {
    allTruckTypes = await _commonService.getListByType(
      StringConstants.truckTypes,
    );
  }

  Future<void> fetchProductTypes() async {
    allProductFamilies = await getProductTypes();
  }

  Future<List<ListDetails>> getProductTypes() async {
    final apiResponse = await _apiService.getList<ListDetails>(
      StringConstants.kgetProductFamiliesUrl,
      fromJsonT: ListDetails.fromJson,
    );

    if (apiResponse.isSuccess && apiResponse.data != null) {
      return apiResponse.data!;
    }
    return [];
  }

  Future<List<UnscheduledJob>> fetchUnscheduledPlans(
    List<String> yardCodes,
    List<String> containerTypes,
    List<String> jobTypes,
    List<String> productFamiles,
    DateTime planDate,
  ) async {
    final response = await _apiService.postList(
      StringConstants.kschedulergetUnscheduledPlansUrl,
      fromJsonT: UnscheduledJob.fromJson,
      body: {
        'dispatchYards': yardCodes,
        'jobTypes': jobTypes,
        'containerTypes': containerTypes,
        'productFamilies': productFamiles,
        'planDate': planDate.toIso8601String(),
        'timezoneId': await FlutterTimezone.getLocalTimezone(),
      },
    );
    return response.data ?? [];
  }

  Future<SchedulerBucket> fetchScheduledJobs(
    DateTime date,
    SchedulerFilter filters,
  ) async {
    return fetchSchedulerJobs(date, filters);
  }

  Future<List<SchedulerYard>> fetchManagedHaulierScheduledJobs(
    DateTime date,
    SchedulerFilter filters,
  ) async {
    if (filters.managedThirdPartyHaulierCodes.isEmpty) {
      return Future.value([]);
    }
    return fetchManagedHauliersJobsAndTruck(date, filters);
  }

  Future<void> getUserYards() async {
    allYards = await fetchUserDispatchYards();
    allYards.sort((a, b) => a.yardCode!.compareTo(b.yardCode!));
  }

  Future<void> fetchMyFavouriteHauliers() async {
    final response = await _apiService.getList<Haulier>(
      StringConstants.kFavourieHauliers,
      fromJsonT: Haulier.fromJson,
    );
    if (response.isSuccess) {
      allHaulierCodes = response.data ?? [];
      myManagedHauliers = allHaulierCodes
          .where((e) => e.isManaged == true)
          .toList();
      myThirdPartyHauliers = allHaulierCodes
          .where((e) => e.isThirdParty == true)
          .toList();
    }
  }

  Future<ApiResponse<SchedulerJob>> scheduleJob(
    int? jobNumber,
    int? loads,
    DateTime dueDateTime,
    String vrm,
    int proposedDurationInMinutes,
    HaulierType targetHaulierType,
  ) async {
    return jobListService.scheduleJob(
      jobNumber,
      loads,
      dueDateTime,
      vrm,
      proposedDurationInMinutes,
      targetHaulierType,
      isFlexibleSchedule: false,
    );
  }

  Future<SchedulerBucket> fetchSchedulerJobs(
    DateTime dueDate,
    SchedulerFilter filters,
  ) async {
    final request = FetchSchedulerJobRequest(
      yardCodes: filters.yardCodes,
      haulierCodes: {
        HaulierType.managed.toString(): filters.managedThirdPartyHaulierCodes,
        HaulierType.thirdParty.toString(): filters.thirdPartyHaulierCodes,
      },
      haulierTypes: [
        HaulierType.internal.toString(),
        HaulierType.managed.toString(),
        HaulierType.thirdParty.toString(),
      ],
      dueInDays: Constants.dateFormat.format(dueDate),
      containerTypes: filters.containerTypes
          .map((e) => e.description ?? '')
          .toList(),
      truckTypes: filters.truckTypes.map((e) => e.code ?? '').toList(),
      jobTypes: filters.jobTypes.map((e) => e.code ?? '').toList(),
      productFamilies: filters.productFamilies
          .map((e) => e.code ?? '')
          .toList(),
      scheduledDate: Constants.dateFormat.format(dueDate),
      timezoneId: await FlutterTimezone.getLocalTimezone(),
    );
    final response = await _apiService.post<SchedulerBucket>(
      StringConstants.kschedulergetYardTruckJobUrl,
      fromJsonT: (json) =>
          SchedulerBucket.fromJson(json as Map<String, dynamic>),
      body: request.toJson(),
    );

    return response.data ??
        SchedulerBucket(thirdPartyHauliers: [], managedHauliers: []);
  }

  Future<List<SchedulerYard>> fetchManagedHauliersJobsAndTruck(
    DateTime dueDate,
    SchedulerFilter filters,
  ) async {
    return [];
  }

  Future<List<ThirdPartyJobApiResponse>> fetchThirdPartyJobsAndTruck(
    DateTime dueDate,
    SchedulerFilter filters,
  ) async {
    return [];
  }

  Future<List<DispatchYards>> fetchUserDispatchYards() async {
    final response = await _apiService.getList(
      StringConstants.kschedulergetUserYardsUrl,
      fromJsonT: DispatchYards.fromJson,
    );
    if (response.isSuccess) {
      response.data!.removeWhere((e) => e.isDispatchYard == false);
    }
    return response.data ?? [];
  }

  Future<void> storeSchedulerPreference() async {
    final response = await userSettingsService.getSchedulerPreference();
    if (response.isSuccess) schedulerPreference = response.data;
  }

  Future<ApiResponse<List<SchedulerJob>>> reassignJobs(
    ReassignJobRequest request,
  ) async {
    return jobListService.reassignJobs(request);
  }

  Future<ApiResponse<List<SchedulerJob>>> schedulePlan(
    SchedulePlanRequest request,
  ) {
    return _apiService.postList(
      StringConstants.kSchedulePlanUrl,
      body: request.toJson(),
      fromJsonT: SchedulerJob.fromJson,
    );
  }

  List<Haulier> mergeHauliers({
    required List<UserManagedHauliers> managed,
    required List<UserThirdPartyHauliers> thirdParty,
  }) {
    final haulierMap = <String, Haulier>{};

    for (final m in managed) {
      final code = m.haulierCode ?? '';
      final haulier = haulierMap.putIfAbsent(
        code,
        () => Haulier(code: code, name: m.haulierName ?? ''),
      );
      haulier.isManaged = m.isMyManagedHaulier ?? false;
    }

    for (final t in thirdParty) {
      final code = t.haulierCode ?? '';
      final haulier = haulierMap.putIfAbsent(
        code,
        () => Haulier(code: code, name: t.haulierName ?? ''),
      );
      haulier.isThirdParty = t.isMyThirdPartyHaulier ?? false;
    }

    return haulierMap.values.toList();
  }

  Future<ApiResponse<SchedulerJob>> updateJobFromScheduler(
    JobSchedulerUpdateRequest body,
  ) async {
    final response = await _apiService.post<SchedulerJob>(
      StringConstants.kJobUpdateFromSchedulerUrl,
      body: body,
      fromJsonT: (e) => SchedulerJob.fromJson(e as Map<String, dynamic>),
    );
    return response;
  }

  Future<JobList?> getJobDetails(int jobNumber) {
    return jobListService.getJobDetailsByJobNumber(jobNumber);
  }

  Future<ApiResponse<String>> enforceJobSequenceOnTruck(
    EnforceJobSequenceRequest request,
  ) async {
    return truckService.enforceJobSequenceOnTruck(request);
  }

  Future<ApiResponse<String>> updateGroup(
    List<String> jobIds,
    String? groupId, {
    required bool doCombineGroup,
  }) async {
    return _apiService.post<String>(
      StringConstants.kUpdateJobGroupUrl,
      body: {
        'jobIds': jobIds,
        'doGrouping': doCombineGroup,
        'groupId': groupId,
      },
    );
  }

  Future<ApiResponse<String>> printDispatchSlipForJobs(
    List<String> jobIds,
  ) async {
    return jobListService.downloadDispatchSlipForJobs(jobIds);
  }

  Future<ApiResponse<String>> printDispatchSlipForTrucks(
    List<String> vrms,
    DateTime scheduledDate,
    String yardCode,
  ) async {
    return jobListService.downloadDispatchSlipForTrucks(
      vrms,
      scheduledDate,
      yardCode,
    );
  }
}
