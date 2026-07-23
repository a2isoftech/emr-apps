import 'dart:typed_data';

import 'package:emr_one_core/networking/http/resilient_http_client.dart';
import 'package:emr_one_transport/core/api_response.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/models/filters/paged_filter_request.dart';
import 'package:emr_one_transport/data/models/plans/clone_plan_request.dart';
import 'package:emr_one_transport/data/models/plans/haulier_and_remaining_loads.dart';
import 'package:emr_one_transport/data/models/plans/haulier_schedule_detail.dart';
import 'package:emr_one_transport/data/models/plans/plan_job_response.dart';
import 'package:emr_one_transport/data/models/plans/plan_request.dart';
import 'package:emr_one_transport/data/models/plans/plan_response.dart';
import 'package:emr_one_transport/data/models/plans/truck.dart';
import 'package:emr_one_transport/data/services/api_service.dart';
import 'package:file_saver/file_saver.dart';

class PlanService {
  PlanService({required this.httpClient})
    : _apiService = ApiService(httpClient: httpClient);
  final ResilientHttpClient httpClient;
  final ApiService _apiService;

  String haulierCode = 'hauliercode';
  String sortBy = 'AssetNumber';
  String sortOrder = 'asc';

  Future<ApiResponse<List<PlanResponse>>> getPlans(
    PagedFilterRequest request,
  ) async {
    final response = await _apiService.postList<PlanResponse>(
      StringConstants.kPlanSearchUrl,
      fromJsonT: PlanResponse.fromJson,
      body: request.toQueryParam(),
    );
    return response;
  }

  Future<ApiResponse<List<PlanJobResponse>>> getJobsForPlans(
    List<PagedFilterRequest> request,
  ) async {
    final requestBody = request.map((r) => r.toQueryParam()).toList();
    final response = await _apiService.postList<PlanJobResponse>(
      StringConstants.kJobSearchByPlanUrl,
      fromJsonT: PlanJobResponse.fromJson,
      body: requestBody,
    );
    return response;
  }

  Future<List<HaulierAndRemainingLoads>> getRemainingLoads(
    int planNumber,
  ) async {
    final response = await _apiService.getList<HaulierAndRemainingLoads>(
      '${StringConstants.kgetRemainingLoadsOfPlanUrl}$planNumber',
      fromJsonT: HaulierAndRemainingLoads.fromJson,
    );
    if (response.data != null) {
      return response.data!.toList();
    }
    return [];
  }

  Future<ApiResponse<List<PlanJobResponse>>> getOverdueJobs(
    PagedFilterRequest request,
  ) async {
    final requestBody = request.toQueryParam();
    final response = await _apiService.postList<PlanJobResponse>(
      StringConstants.kOverdueJobUrl,
      fromJsonT: PlanJobResponse.fromJson,
      body: requestBody,
    );
    return response;
  }

  Future<ApiResponse<PlanResponse>> createPlan(PlanRequest body) async {
    final response = await _apiService.post<PlanResponse>(
      StringConstants.kCreatePlanUrl,
      body: body,
      fromJsonT: (response) =>
          PlanResponse.fromJson(response as Map<String, dynamic>),
    );
    return response;
  }

  Future<ApiResponse<PlanResponse>> updatePlan({
    required String id,
    required PlanRequest body,
  }) async {
    final encodedPlanNumber = Uri.encodeComponent(id);
    final response = await _apiService.put<PlanResponse>(
      '${StringConstants.kUpdatePlanUrl}$encodedPlanNumber',
      body: body,
      fromJsonT: (response) =>
          PlanResponse.fromJson(response as Map<String, dynamic>),
    );
    return response;
  }

  Future<PlanResponse?> getPlanDetailsByPlanNumber(int planNumber) async {
    final encodedPlanNumber = Uri.encodeComponent(planNumber.toString());
    final apiResponse = await _apiService.get<PlanResponse>(
      '${StringConstants.kPlanDetailsByPlanNumberUrl}/$encodedPlanNumber',
      fromJsonT: (response) =>
          PlanResponse.fromJson(response as Map<String, dynamic>),
    );

    if (apiResponse.isSuccess && apiResponse.data != null) {
      return apiResponse.data;
    }
    return null;
  }

  Future<List<String>> getTruckByHaulier(HaulierScheduleDetail haulier) async {
    final myFilter = {
      'haulierCode': [haulier.haulierCode],
      'hauliertype': [haulier.haulierType],
    };
    final request = PagedFilterRequest(
      1,
      150,
      filters: myFilter,
      includeFacets: false,
      sortBy: sortBy,
      sortOrder: sortOrder,
    );

    final response = await _apiService.postList<Truck>(
      StringConstants.kSearchTruckUrl,
      fromJsonT: Truck.fromJson,
      body: request.toQueryParam(),
      queryParams: {'useDispatchYardDuringSearch': 'true'},
    );
    final trucks = response.data!;

    return trucks.map((e) => '${e.vrm} - ${e.assetNumber}').toList();
  }

  Future<ApiResponse<List<PlanJobResponse>>> getJobDetailsByPlanNumber(
    PagedFilterRequest request,
  ) async {
    final requestBody = request.toQueryParam();
    final response = await _apiService.postList<PlanJobResponse>(
      StringConstants.kJobDetailsPlanUrl,
      fromJsonT: PlanJobResponse.fromJson,
      body: requestBody,
    );
    return response;
  }

  Future<ApiResponse<bool>> clonePlan(ClonePlanRequest request) async {
    final requestBody = request.toJson();
    final response = await _apiService.post<bool>(
      StringConstants.kClonePlanUrl,
      fromJsonT: (response) => response as bool,
      body: requestBody,
    );
    return response;
  }

  Future<ApiResponse<bool>> deletePlan(
    String territoryCode,
    int planNumber,
  ) async {
    final planId = 'transportPlans/$territoryCode/$planNumber';
    final encodedPlanNumber = Uri.encodeComponent(planId);
    final response = await _apiService.delete<bool>(
      '${StringConstants.kDeletePlanUrl}$encodedPlanNumber',
      '',
    );
    return response;
  }

  Future<void> downloadTemplate() async {
    final response = await _apiService.getFileBytes(
      StringConstants.importTemplateDownloadUrl,
    );

    if (response.isSuccess) {
      await FileSaver.instance.saveFile(
        name: StringConstants.planImportTemplateFileName,
        bytes: response.data,
        mimeType: MimeType.microsoftExcel,
      );
    }
  }

  Future<String?> uploadPlan(Uint8List fileBytes) async {
    final response = await _apiService.uploadDocument<String>(
      endpoint: StringConstants.planUploadUrl,
      fileBytes: fileBytes,
    );

    if (!response.isSuccess) {
      return response.errorMessage;
    }
    return null;
  }

  Future<void> exportPlans(PagedFilterRequest request) async {
    final response = await _apiService.postFileBytes(
      StringConstants.exportPlansReportUrl,
      body: request.toQueryParam(),
    );

    if (response.isSuccess) {
      await FileSaver.instance.saveFile(
        name: StringConstants.explortPlanFileName,
        bytes: response.data,
        mimeType: MimeType.microsoftExcel,
      );
    }
  }
}
