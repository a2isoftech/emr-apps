import 'package:emr_one_core/networking/http/resilient_http_client.dart';
import 'package:emr_one_transport/core/api_response.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/models/filters/paged_filter_request.dart';
import 'package:emr_one_transport/data/models/trucks/enforce_job_sequence_request.dart';
import 'package:emr_one_transport/data/models/trucks/transport_truck.dart';
import 'package:emr_one_transport/data/models/trucks/transport_truck_request.dart';
import 'package:emr_one_transport/data/services/api_service.dart';

class TruckService {
  TruckService({
    required this.httpClient,
  }) : _apiService = ApiService(httpClient: httpClient);
  final ResilientHttpClient httpClient;
  final ApiService _apiService;

  Future<ApiResponse<List<TransportTruck>>> searchTrucks(
    PagedFilterRequest body,
  ) async {
    final response = await _apiService.postList<TransportTruck>(
      StringConstants.kSearchTruckUrl,
      body: body.toQueryParam(),
      fromJsonT: TransportTruck.fromJson,
    );
    return response;
  }

  Future<TransportTruck?> getTruckById(String id) async {
    final encodedTruckId = Uri.encodeComponent('transportTrucks/$id');

    final apiResponse = await _apiService.get<TransportTruck>(
      '${StringConstants.kTruckUrl}'
      '?encodedTruckId=$encodedTruckId',
      fromJsonT: (response) =>
          TransportTruck.fromJson(response as Map<String, dynamic>),
    );

    if (apiResponse.isSuccess && apiResponse.data != null) {
      return apiResponse.data;
    }
    return null;
  }

  Future<ApiResponse<TransportTruckRequest>> createTruck(
    TransportTruckRequest model,
  ) async {
    final response = await _apiService.post<TransportTruckRequest>(
      StringConstants.kTruckUrl,
      body: model,
    );
    return response;
  }

  Future<ApiResponse<TransportTruckRequest>> updateTruck(
    String encodedTruckId,
    TransportTruckRequest model,
  ) async {
    final response = await _apiService.put<TransportTruckRequest>(
      '${StringConstants.kTruckUrl}?encodedTruckId=$encodedTruckId',
      body: model,
    );
    return response;
  }

  Future<ApiResponse<bool>> deleteTrucks(List<String> ids) async {
    if (ids.isEmpty) {
      return ApiResponse<bool>(
        null,
        isSuccess: false,
        errorMessage: StringConstants.invalidIds,
      );
    }

    final apiResponse = await _apiService.delete<bool>(
      StringConstants.kTruckUrl,
      ids,
    );

    return apiResponse;
  }

  Future<ApiResponse<bool>> updateTruckYard(
    String truckId,
    String dispatchYard,
  ) async {
    if (truckId.isEmpty || dispatchYard.isEmpty) {
      return ApiResponse<bool>(
        null,
        isSuccess: false,
        errorMessage:
            '${StringConstants.invalidIds} / ${StringConstants.dispatchYardDisplay}',
      );
    }

    final encodedTruckId = Uri.encodeComponent('transportTrucks/$truckId');
    final endpoint = '${StringConstants.kUpdateDispatchYard}$encodedTruckId';

    final apiResponse = await _apiService.patch<bool>(
      endpoint,
      fromJsonT: (json) => true,
      body: {
        'dispatchYard': dispatchYard,
      },
    );

    return apiResponse;
  }

  Future<ApiResponse<String>> enforceJobSequenceOnTruck(
    EnforceJobSequenceRequest request,
  ) async {
    return _apiService.patch<String>(
      StringConstants.kEnforceJobSequenceUrl,
      fromJsonT: (json) => json.toString(),
      body: request,
    );
  }

  Future<String> getNextAssetNumber() async {
    final apiResponse = await _apiService.get<String>(
      StringConstants.kTruckNextAssetNumber,
      fromJsonT: (resp) => resp.toString(),
    );
    return apiResponse.data ?? '';
  }

  Future<bool?> isVrmUnique(String vrm, String? truckId) async {
    final apiResponse = await _apiService.get<bool?>(
      StringConstants.kTruckIsVrmUnique,
      fromJsonT: (response) => response as bool?,
      queryParams: {
        'vrm': vrm,
        'encodedTruckId': truckId,
      },
    );
    return apiResponse.data;
  }
}
