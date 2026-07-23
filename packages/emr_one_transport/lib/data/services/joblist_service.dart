import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/api_response.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/models/common/account.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/common/job_quick_clone_request.dart';
import 'package:emr_one_transport/data/models/common/list_details.dart';
import 'package:emr_one_transport/data/models/common/provisional_cost_details.dart';
import 'package:emr_one_transport/data/models/common/provisional_cost_request_model.dart';
import 'package:emr_one_transport/data/models/filters/paged_filter_request.dart';
import 'package:emr_one_transport/data/models/jobs/containers.dart';
import 'package:emr_one_transport/data/models/jobs/delete_job_request.dart';
import 'package:emr_one_transport/data/models/jobs/job_list.dart';
import 'package:emr_one_transport/data/models/jobs/job_request_model.dart';
import 'package:emr_one_transport/data/models/jobs/search_truck_and_haulier.dart';
import 'package:emr_one_transport/data/models/jobs/truck_info.dart';
import 'package:emr_one_transport/data/models/scheduler/clone_jobs_for_the_day_request.dart';
import 'package:emr_one_transport/data/models/scheduler/job_assign_request.dart';
import 'package:emr_one_transport/data/models/scheduler/move_outstanding_jobs.dart';
import 'package:emr_one_transport/data/models/scheduler/reassign_job_request.dart';
import 'package:emr_one_transport/data/models/scheduler/scheduler_job.dart';
import 'package:emr_one_transport/data/models/user_preferences/dispatch_yards.dart';
import 'package:emr_one_transport/data/services/api_service.dart';
import 'package:emr_one_transport/data/services/job_helper.dart';
import 'package:file_saver/file_saver.dart';
import 'package:flutter_timezone/flutter_timezone.dart';

class JobListService {
  JobListService({required this.httpClient})
    : _apiService = ApiService(httpClient: httpClient);
  final ResilientHttpClient httpClient;
  final ApiService _apiService;

  Future<ApiResponse<List<JobList>>> searchJobs(PagedFilterRequest body) async {
    final response = await _apiService.postList<JobList>(
      StringConstants.kgetAllJobsForOverviewUrl,
      body: body.toQueryParam(),
      fromJsonT: JobList.fromJson,
    );
    return response;
  }

  Future<List<ListDetails>> getContainerTypes() async {
    final apiResponse = await _apiService.getList<ListDetails>(
      StringConstants.kgetListUrl,
      fromJsonT: ListDetails.fromJson,
      queryParams: {StringConstants.type: StringConstants.containerTypes},
    );

    if (apiResponse.isSuccess && apiResponse.data != null) {
      return apiResponse.data!;
    }
    return [];
  }

  Future<List<ListDetails>> getTrailerTypes() async {
    final apiResponse = await _apiService.getList<ListDetails>(
      StringConstants.kgetListUrl,
      fromJsonT: ListDetails.fromJson,
      queryParams: {StringConstants.type: StringConstants.trailerTypes},
    );

    if (apiResponse.isSuccess && apiResponse.data != null) {
      return apiResponse.data!;
    }
    return [];
  }

  Future<List<DispatchYards>> getDispatchYardsForUser() async {
    final apiResponse = await _apiService.getList<DispatchYards>(
      StringConstants.kgetDispatchYardsForUserUrl,
      fromJsonT: DispatchYards.fromJson,
    );

    if (apiResponse.isSuccess && apiResponse.data != null) {
      return apiResponse.data!;
    }
    return [];
  }

  Future<List<ListDetails>> getDeleteReasons() async {
    final apiResponse = await _apiService.getList<ListDetails>(
      StringConstants.kgetListUrl,
      fromJsonT: ListDetails.fromJson,
      queryParams: {StringConstants.type: StringConstants.deletereasons},
    );

    if (apiResponse.isSuccess && apiResponse.data != null) {
      return apiResponse.data!;
    }
    return [];
  }

  Future<List<TruckInfo>> searchTruckHaulierForUser(String query) async {
    final apiResponse = await _apiService.get<SearchTruckAndHaulier>(
      StringConstants.ksearchTruckOrHaulierUrl,
      fromJsonT: (response) =>
          SearchTruckAndHaulier.fromJson(response as Map<String, dynamic>),
      queryParams: {StringConstants.searchQuery: query},
    );

    if (apiResponse.isSuccess && apiResponse.data != null) {
      final internalTrucksList = apiResponse.data!.internalTrucks
          .map(
            (e) => TruckInfo(
              haulierType: e.haulierType,
              haulierCode: e.haulierCode,
              haulierName: e.haulierName,
              assetNumber: e.assetNumber,
              vrm: e.vrm,
              driverName: e.driverName,
            ),
          )
          .toList();

      final hauliersList = <TruckInfo>[];

      for (final h in apiResponse.data!.hauliers) {
        if (h.trucks.isNotEmpty) {
          hauliersList.addAll(
            h.trucks
                .map(
                  (e) => TruckInfo(
                    haulierType: e.haulierType,
                    haulierCode: e.haulierCode,
                    haulierName: e.haulierName,
                    assetNumber: e.assetNumber,
                    vrm: e.vrm,
                    driverName: e.driverName,
                  ),
                )
                .toList(),
          );
        }
        hauliersList.add(
          TruckInfo(
            haulierType: h.haulierType,
            haulierCode: h.haulierCode,
            haulierName: h.haulierName,
          ),
        );
      }

      hauliersList.sort((a, b) => a.haulierCode!.compareTo(b.haulierCode!));
      return [...internalTrucksList, ...hauliersList];
    }
    return [];
  }

  Future<ApiResponse<DeleteJobRequest>> deleteJobs(
    List<DeleteJobRequest> body,
  ) async {
    final response = await _apiService.delete<DeleteJobRequest>(
      StringConstants.kdeleteJobsUrl,
      body.map((e) => e.toJson()).toList(),
    );

    return response;
  }

  Future<List<Account>> partySearchByAccountOrName(String searchTerm) async {
    final apiResponse = await _apiService.getList<Account>(
      StringConstants.kAccountSearchUrl,
      fromJsonT: Account.fromJson,
      queryParams: {StringConstants.searchTerm: searchTerm},
    );

    if (apiResponse.isSuccess && apiResponse.data != null) {
      return apiResponse.data!;
    }
    return [];
  }

  Future<ApiResponse<JobList>> createJob(JobRequestModel body) async {
    final response = await _apiService.post<JobList>(
      StringConstants.kcreateJobUrl,
      body: body,
      fromJsonT: (response) =>
          JobList.fromJson(response as Map<String, dynamic>),
    );
    return response;
  }

  Future<ApiResponse<List<int>>> cloneJobs(JobRequestModel body) async {
    final response = await _apiService.post<List<int>>(
      StringConstants.kcloneJobsUrl,
      body: body,
      fromJsonT: (dynamic json) => List<int>.from(json as List),
    );
    return response;
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

  Future<List<ProvisionalCostDetails>> _getProvisionalCosts(
    ProvisionalCostRequestModel body,
  ) async {
    final apiResponse = await _apiService.postList<ProvisionalCostDetails>(
      StringConstants.kgetProvisionalCostsUrl,
      body: body,
      fromJsonT: ProvisionalCostDetails.fromJson,
    );

    if (apiResponse.isSuccess && apiResponse.data != null) {
      return apiResponse.data!;
    }
    return [];
  }

  Future<List<ProvisionalCostDetails>> getProvisionalCosts({
    required String? jobType,
    required String? startLocationCode,
    required String? endLocationCode,
    required String? customerLocationCode,
    required DateTime? startDate,
  }) async {
    if (jobType == null || jobType.isEmpty) {
      return [];
    }
    final (
      String? firstLocation,
      String? secondLocation,
    ) = JobHelper.getStartAndEndLocation(
      jobType,
      startLocationCode,
      endLocationCode,
      customerLocationCode,
    );

    if (firstLocation == null ||
        firstLocation.isEmpty ||
        secondLocation == null ||
        secondLocation.isEmpty) {
      return [];
    }

    final endLocations = <String>[secondLocation];

    return _getProvisionalCosts(
      ProvisionalCostRequestModel(
        firstLocationCode: firstLocation,
        secondLocationCodes: endLocations,
        haulierAccountNo: '',
        startDate: startDate ?? DateTime.now(),
      ),
    );
  }

  Future<int?> getProposedJobDuration(
    String jobType,
    String startLocationCode,
    String endLocationCode,
    String customerLocationCode,
  ) async {
    final apiResponse = await _apiService.get<int>(
      StringConstants.kgetProposedJobDurationUrl,
      queryParams: {
        'jobType': jobType,
        'startLocationCode': startLocationCode,
        'endLocationCode': endLocationCode,
        'customerLocationCode': customerLocationCode,
      },
      fromJsonT: (json) => json as int,
    );

    return apiResponse.data;
  }

  Future<List<ListDetails>> getProductByFamily(String productFamilyName) async {
    final apiResponse = await _apiService.getList<ListDetails>(
      StringConstants.kgetProductsByFamilyUrl,
      fromJsonT: ListDetails.fromJson,
      queryParams: {StringConstants.productFamily: productFamilyName},
    );

    if (apiResponse.isSuccess && apiResponse.data != null) {
      return apiResponse.data!;
    }
    return [];
  }

  Future<List<ListDetails>> getProductsBySearchTerm(String searchTerm) async {
    final apiResponse = await _apiService.getList<ListDetails>(
      StringConstants.kgetProductsBySearchTermUrl,
      fromJsonT: ListDetails.fromJson,
      queryParams: {StringConstants.searchTerm: searchTerm},
    );

    if (apiResponse.isSuccess && apiResponse.data != null) {
      return apiResponse.data!;
    }
    return [];
  }

  Future<JobList?> getJobDetailsByJobNumber(int jobNumber) async {
    final apiResponse = await _apiService.get<JobList>(
      '${StringConstants.kjobDetailsByJobNumberUrl}/$jobNumber',
      fromJsonT: (response) =>
          JobList.fromJson(response as Map<String, dynamic>),
    );

    if (apiResponse.isSuccess && apiResponse.data != null) {
      return apiResponse.data;
    }
    return null;
  }

  Future<ApiResponse<JobList>> updateJobDetailsbyId(
    JobRequestModel model,
  ) async {
    final encodedJobId = Uri.encodeComponent(model.id ?? '');

    final apiResponse = await _apiService.put<JobList>(
      '${StringConstants.kupdateJobByIdUrl}?encodedJobId=$encodedJobId',
      fromJsonT: (response) =>
          JobList.fromJson(response as Map<String, dynamic>),
      body: model,
    );

    return apiResponse;
  }

  Future<List<Containers>> getContainersAtLocation(String locationCode) async {
    final apiResponse = await _apiService.getList<Containers>(
      '${StringConstants.kgetContainersAtLocationUrl}/$locationCode',
      fromJsonT: Containers.fromJson,
    );

    if (apiResponse.isSuccess && apiResponse.data != null) {
      return apiResponse.data!;
    }
    return [];
  }

  Future<ApiResponse<List<String>>> quickCloneJob(
    JobQuickCloneRequest request,
  ) async {
    return _apiService.post<List<String>>(
      StringConstants.kJobQuickClone,
      body: request.toJson(),
      fromJsonT: (dynamic json) => List<String>.from(json as List),
    );
  }

  Future<ApiResponse<void>> movePendingJobs(MovePendingJobsRequest request) {
    return _apiService.post<String?>(
      StringConstants.kMovePendingJobs,
      body: request.toJson(),
      fromJsonT: (json) => json as String?,
    );
  }

  Future<ApiResponse<String?>> cloneJobsForward(
    CloneJobsForTheDayRequest request,
  ) {
    return _apiService.post<String?>(
      StringConstants.kCloneJobsForDay,
      body: request.toJson(),
      fromJsonT: (json) => json as String?,
    );
  }

  Future<ApiResponse<SchedulerJob>> scheduleJob(
    int? jobNumber,
    int? loads,
    DateTime dueDateTime,
    String vrm,
    int proposedDurationInMinutes,
    HaulierType targetHaulierType, {
    required bool isFlexibleSchedule,
  }) async {
    final request = JobAssignRequest(
      jobNumber: jobNumber ?? 0,
      proposedDurationMinutes: proposedDurationInMinutes,
      proposedScheduledDate: dueDateTime,
      loads: loads ?? 1,
      vrm: vrm,
      haulierTypeEnum: targetHaulierType.toString(),
      timezoneId: await FlutterTimezone.getLocalTimezone(),
      isFlexibleSchedule: isFlexibleSchedule,
    );
    return _apiService.post<SchedulerJob>(
      StringConstants.kschedulerScheduleJobUrl,
      fromJsonT: (val) => SchedulerJob.fromJson(val as Map<String, dynamic>),
      body: request.toJson(),
    );
  }

  Future<ApiResponse<List<SchedulerJob>>> reassignJobs(
    ReassignJobRequest request,
  ) async {
    return _apiService.postList(
      StringConstants.kReassignJobsUrl,
      body: request.toJson(),
      fromJsonT: SchedulerJob.fromJson,
    );
  }

  Future<ApiResponse<String>> downloadDispatchSlipForJobs(
    List<String> jobIds,
  ) async {
    final response = await _apiService.getFileBytes(
      StringConstants.dispatchSlipForJobsUrl,
      queryParams: {'jobIds': jobIds},
    );
    if (response.isSuccess) {
      await FileSaver.instance.saveFile(
        name: StringConstants.dispatchSlipFileName,
        bytes: response.data,
        mimeType: MimeType.pdf,
      );
      return ApiResponse(null);
    }
    return ApiResponse(response.errorMessage, isSuccess: false);
  }

  Future<ApiResponse<String>> downloadDispatchSlipForTrucks(
    List<String> vrms,
    DateTime scheduleDate,
    String yardCode,
  ) async {
    final response = await _apiService.getFileBytes(
      StringConstants.dispatchSlipForTrucksUrl,
      queryParams: {
        'truckVrms': vrms,
        'scheduleDate': scheduleDate.dateOnly.toIso8601date,
        'yardCode': yardCode,
        'timezoneId': await FlutterTimezone.getLocalTimezone(),
      },
    );
    if (response.isSuccess) {
      await FileSaver.instance.saveFile(
        name: StringConstants.dispatchSlipFileName,
        bytes: response.data,
        mimeType: MimeType.pdf,
      );
      return ApiResponse(null);
    }
    return ApiResponse(
      null,
      errorMessage: response.errorMessage,
      isSuccess: false,
    );
  }
}
