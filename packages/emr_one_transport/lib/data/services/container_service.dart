import 'dart:async';

import 'package:emr_one_core/networking/http/resilient_http_client.dart';
import 'package:emr_one_transport/core/api_response.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/models/common/search_result.dart';
import 'package:emr_one_transport/data/models/containers/asset_review_skip_request.dart';
import 'package:emr_one_transport/data/models/containers/container.dart';
import 'package:emr_one_transport/data/models/containers/create_container_request.dart';
import 'package:emr_one_transport/data/models/containers/update_container_request.dart';
import 'package:emr_one_transport/data/models/filters/paged_filter_request.dart';
import 'package:emr_one_transport/data/models/jobs/get_last_x_jobs_with_containers_request.dart';
import 'package:emr_one_transport/data/models/jobs/last_x_jobs_with_container_response.dart';
import 'package:emr_one_transport/data/services/api_service.dart';

class ContainerService {
  ContainerService({required this.httpClient})
    : _apiService = ApiService(httpClient: httpClient);
  final ResilientHttpClient httpClient;
  final ApiService _apiService;

  Future<ApiResponse<List<Containers>>> searchContainers(
    PagedFilterRequest body,
  ) async {
    final response = await _apiService.postList<Containers>(
      StringConstants.kContainerSearch,
      body: body.toQueryParam(),
      fromJsonT: Containers.fromJson,
    );
    return response;
  }

  Future<ApiResponse<SearchResult<Containers>>> containersToExpire(
    int days,
  ) async {
    final apiResponse = await _apiService.get<SearchResult<Containers>>(
      StringConstants.kContainersWillExpireInXDays,
      fromJsonT: (json) => SearchResult<Containers>.fromJson(
        json as Map<String, dynamic>,
        (item) => Containers.fromJson(item! as Map<String, dynamic>),
      ),
      queryParams: {'days': days.toString()},
    );

    return apiResponse;
  }

  Future<ApiResponse<List<LastXJobsWithContainerResponse>>>
  getLatestContainerJobs(GetLastXJobsWithContainersRequest request) async {
    final response = await _apiService.postList<LastXJobsWithContainerResponse>(
      StringConstants.kContainerLatestXJobs,
      body: request,
      fromJsonT: LastXJobsWithContainerResponse.fromJson,
    );

    return response;
  }

  Future<ApiResponse<CreateContainerRequest>> createContainer(
    CreateContainerRequest body,
  ) async {
    final response = await _apiService.post<CreateContainerRequest>(
      StringConstants.kContainerCreate,
      body: body,
    );
    return response;
  }

  Future<ApiResponse<UpdateContainerRequest>> updateContainer(
    UpdateContainerRequest model,
  ) async {
    final response = await _apiService.post<UpdateContainerRequest>(
      StringConstants.kContainerUpdate,
      body: model,
    );
    return response;
  }

  Future<Containers?> getContainerById(String id) async {
    final encodedContainerId = Uri.encodeComponent(id);

    final apiResponse = await _apiService.get<Containers>(
      '${StringConstants.kContainerUrl}'
      '?encodedContainerId=$encodedContainerId',
      fromJsonT: (response) =>
          Containers.fromJson(response as Map<String, dynamic>),
    );

    if (apiResponse.isSuccess && apiResponse.data != null) {
      return apiResponse.data;
    }
    return null;
  }

  Future<String> getNextContainerId() async {
    final apiResponse = await _apiService.get<String>(
      StringConstants.kContainerNextAssetNumber,
      fromJsonT: (response) => response.toString(),
    );
    return apiResponse.data ?? '';
  }

  Future<String?> assetNumberUsedForContainer(String assetNumber) async {
    final apiResponse = await _apiService.get<String?>(
      StringConstants.kContainerAssetNumberUsed,
      fromJsonT: (response) => response?.toString(),
      queryParams: {'assetNumber': assetNumber},
    );
    return apiResponse.data;
  }

  Future<ApiResponse<bool>> deleteContainers(List<String> ids) async {
    if (ids.isEmpty) {
      return ApiResponse<bool>(
        null,
        isSuccess: false,
        errorMessage: StringConstants.invalidIds,
      );
    }

    final apiResponse = await _apiService.post<bool>(
      StringConstants.kContainerDeleteUrl,
      body: ids,
    );

    return apiResponse;
  }

  Future<ApiResponse<bool>> skipReviewContainer(
    AssetReviewSkipRequest request,
  ) async {
    final apiResponse = await _apiService.post<bool>(
      StringConstants.kAssetReviewSkip,
      body: request,
    );

    return apiResponse;
  }
}
