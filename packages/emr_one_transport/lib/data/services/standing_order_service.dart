import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/api_response.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/models/filters/paged_filter_request.dart';
import 'package:emr_one_transport/data/models/standing_order/delete_standing_order_request.dart';
import 'package:emr_one_transport/data/models/standing_order/standing_order.dart';
import 'package:emr_one_transport/data/models/standing_order/standing_order_request_model.dart';
import 'package:emr_one_transport/data/services/api_service.dart';

class StandingOrderService {
  StandingOrderService({
    required this.httpClient,
  }) : _apiService = ApiService(httpClient: httpClient);
  final ResilientHttpClient httpClient;
  final ApiService _apiService;

  Future<ApiResponse<List<StandingOrder>>> searchStandingOrders(
    PagedFilterRequest body,
  ) async {
    final response = await _apiService.postList<StandingOrder>(
      StringConstants.kStandingOrdersOverviewUrl,
      body: body.toQueryParam(),
      fromJsonT: StandingOrder.fromJson,
    );
    return response;
  }

  Future<ApiResponse<StandingOrder>> createStandingOrder(
    StandingOrderRequestModel body,
  ) async {
    final response = await _apiService.post<StandingOrder>(
      StringConstants.kCreateStandingOrdersUrl,
      body: body,
      fromJsonT: (response) =>
          StandingOrder.fromJson(response as Map<String, dynamic>),
    );
    return response;
  }

  Future<ApiResponse<StandingOrder>> updateStandingOrderDetailsbyId(
    StandingOrderRequestModel model,
  ) async {
    final encodedId = Uri.encodeComponent(model.id ?? '');

    final apiResponse = await _apiService.put<StandingOrder>(
      '${StringConstants.kUpdateStandingOrderByIdUrl}?encodedId=$encodedId',
      fromJsonT: (response) =>
          StandingOrder.fromJson(response as Map<String, dynamic>),
      body: model,
    );
    return apiResponse;
  }

  Future<ApiResponse<StandingOrder>> updateStandingOrderDetailsWithJobsbyId(
    StandingOrderRequestModel model,
  ) async {
    final encodedId = Uri.encodeComponent(model.id ?? '');

    final apiResponse = await _apiService.put<StandingOrder>(
      '${StringConstants.kUpdateStandingOrderWithJobByIdUrl}$encodedId',
      fromJsonT: (response) =>
          StandingOrder.fromJson(response as Map<String, dynamic>),
      body: model,
    );
    return apiResponse;
  }

  Future<StandingOrder?> getStandingOrderDetailsById(
    String standingOrderId,
  ) async {
    final encodedId = Uri.encodeComponent(standingOrderId);

    final apiResponse = await _apiService.get<StandingOrder>(
      '${StringConstants.kStandingOrderDetailsByIdUrl}'
      '?encodedId=$encodedId',
      fromJsonT: (response) =>
          StandingOrder.fromJson(response as Map<String, dynamic>),
    );

    if (apiResponse.isSuccess && apiResponse.data != null) {
      return apiResponse.data;
    }
    return null;
  }

  Future<ApiResponse<StandingOrder>> deleteStandingOrder(
    String standingOrderId,
  ) async {
    final encodedId = Uri.encodeComponent(standingOrderId);
    final response = await _apiService.delete<StandingOrder>(
      '${StringConstants.kDeleteStandingOrderUrl}'
          '?encodedId=$encodedId',
      '',
    );
    return response;
  }

  Future<ApiResponse<DeleteStandingOrderRequest>> deleteStandingOrderWithJobs(
    DeleteStandingOrderRequest deleteRequestModel,
  ) async {
    deleteRequestModel.standingOrderId =
        Uri.encodeComponent(deleteRequestModel.standingOrderId);
    final response = await _apiService.delete<DeleteStandingOrderRequest>(
      StringConstants.kDeleteStandingOrderWithJobsUrl,
      deleteRequestModel.toJson(),
    );
    return response;
  }
}
