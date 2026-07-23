import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/models/filters/paged_filter_request.dart';
import 'package:emr_one_transport/data/models/needs_container/container_without_asset_number.dart';
import 'package:emr_one_transport/data/models/needs_container/needs_container_response.dart';
import 'package:emr_one_transport/data/models/needs_container/save_container_asset_number.dart';
import 'package:emr_one_transport/data/services/api_service.dart';

class NeedsContainerService {
  NeedsContainerService({required this.httpClient});
  final ResilientHttpClient httpClient;

  Future<NeedsContainerResponse> getJobsWithoutAssetNumber(
    PagedFilterRequest request,
  ) async {
    request.searchTerm = '';
    request.includeFacets = false;

    final apiservice = ApiService(httpClient: httpClient);
    final apiresponse = await apiservice.postList<ContainerWithoutAssetNumber>(
      StringConstants.kcontainerWithoutAssetNumberUrl,
      fromJsonT: ContainerWithoutAssetNumber.fromJson,
      body: request.toQueryParam(),
    );

    if (apiresponse.isSuccess && apiresponse.data != null) {
      final response = NeedsContainerResponse(
        apiresponse.totalItems,
        apiresponse.data!,
      );
      return response;
    }
    throw Exception(
      'Failed to fetch jobs without asset number: ${apiresponse.errorMessage}',
    );
  }

  Future<String?> saveAssetNumber(SaveContainerAssetNumber request) async {
    final apiservice = ApiService(httpClient: httpClient);
    final apiresponse = await apiservice.patch<bool?>(
      StringConstants.kcontainerSaveContainerUrl,
      fromJsonT: (response) => response as bool?,
      body: request.toJson(),
    );

    if (apiresponse.isSuccess && apiresponse.data != null) {
      return null;
    }
    return apiresponse.errorMessage;
  }
}
