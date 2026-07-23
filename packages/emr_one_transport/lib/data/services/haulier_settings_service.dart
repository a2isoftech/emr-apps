import 'dart:async';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/api_response.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/models/common/action_result.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/filters/paged_filter_request.dart';
import 'package:emr_one_transport/data/models/haulier_settings/haulier_settings.dart';
import 'package:emr_one_transport/data/services/api_service.dart';

class HaulierSettingsService {
  HaulierSettingsService({
    required this.httpClient,
  }) : _apiService = ApiService(httpClient: httpClient);
  final ResilientHttpClient httpClient;
  final ApiService _apiService;

  Future<ApiResponse<List<HaulierSettings>>> getHaulierSettings(
    PagedFilterRequest paginationInfo,
  ) async {
    return _apiService.getGraphQLResponse<HaulierSettings>(
      StringConstants.kgetHaulierSettingsUrl,
      pageInfo: paginationInfo,
      fromJsonT: HaulierSettings.fromJson,
      queryParams: {
        StringConstants.getAllRecords: StringConstants.falseString,
        StringConstants.includeInternal: StringConstants.falseString,
      },
    );
  }

  Future<ActionResult> saveHaulierSettings(List<HaulierSettings> body) async {
    final response = await _apiService.post<void>(
      StringConstants.ksaveHaulierSettingsUrl,
      body: body,
    );
    if (response.isSuccess) {
      return ActionResult(
        status: ActionStatus.apiSuccess,
      );
    }
    return ActionResult(
      status: ActionStatus.apiFailure,
      errorMessage: response.errorMessage,
    );
  }
}
