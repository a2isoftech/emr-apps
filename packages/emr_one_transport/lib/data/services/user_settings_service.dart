import 'dart:async';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/api_response.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/filters/paged_filter_request.dart';
import 'package:emr_one_transport/data/models/user_preferences/dispatch_yards.dart';
import 'package:emr_one_transport/data/models/user_preferences/scheduler_preference.dart';
import 'package:emr_one_transport/data/models/user_preferences/user_managed_hauliers.dart';
import 'package:emr_one_transport/data/models/user_preferences/user_managed_hauliers_request.dart';
import 'package:emr_one_transport/data/models/user_preferences/user_preference_thirdparty_haulier_request.dart';
import 'package:emr_one_transport/data/models/user_preferences/user_thirdparty_hauliers.dart';
import 'package:emr_one_transport/data/services/api_service.dart';

class UserSettingsService {
  UserSettingsService({required this.httpClient})
    : _apiService = ApiService(httpClient: httpClient);
  final ResilientHttpClient httpClient;
  final ApiService _apiService;

  Future<List<DispatchYards>> getUserDispatchYards() async {
    final apiResponse = await _apiService.getList<DispatchYards>(
      StringConstants.kgetUserSettingsDispatchYardsUrl,
      fromJsonT: DispatchYards.fromJson,
    );

    if (apiResponse.isSuccess && apiResponse.data != null) {
      return apiResponse.data!;
    }
    return [];
  }

  Future<ApiResponse<void>> saveUserDispatchYards(
    Map<String, String> body,
  ) async {
    final response = await _apiService.post<void>(
      StringConstants.ksaveUserSettingsDispatchYardsUrl,
      body: body,
    );
    return response;
  }

  Future<ApiResponse<List<UserManagedHauliers>>> getUserManagedHauliers(
    PagedFilterRequest paginationInfo,
  ) async {
    return _apiService.getGraphQLResponse<UserManagedHauliers>(
      StringConstants.kgetManagedHauliers,
      pageInfo: paginationInfo,
      fromJsonT: UserManagedHauliers.fromJson,
    );
  }

  Future<ApiResponse<void>> saveUserManagedHauliers(
    List<UserManagedHauliersRequest> body,
  ) async {
    final response = await _apiService.post<void>(
      StringConstants.ksaveManagedHauliers,
      body: body.map((e) => e.toJson()).toList(),
    );
    return response;
  }

  Future<ApiResponse<List<UserThirdPartyHauliers>>> getUserThirdPartyHauliers(
    PagedFilterRequest paginationInfo,
  ) async {
    return _apiService.getGraphQLResponse<UserThirdPartyHauliers>(
      StringConstants.kgetThirdPartyHauliers,
      pageInfo: paginationInfo,
      fromJsonT: UserThirdPartyHauliers.fromJson,
    );
  }

  Future<ApiResponse<void>> saveUserThirdPartyHauliers(
    List<UserPreferenceThirdPartyHaulierRequest> body,
  ) async {
    final response = await _apiService.post<void>(
      StringConstants.ksaveThirdPartyHauliers,
      body: body.map((e) => e.toJson()).toList(),
    );
    return response;
  }

  Future<ApiResponse<SchedulerPreference>> getSchedulerPreference() async {
    return _apiService.get<SchedulerPreference>(
      StringConstants.kgetSchedulerPreference,
      fromJsonT: (json) =>
          SchedulerPreference.fromJson(json as Map<String, dynamic>),
    );
  }

  Future<ApiResponse<void>> saveSchedulerPreference(
    SchedulerTruckGroupBy groupingBy,
    LocationTypeEnum locationAddressTypeEnum,
    AddressFormatType addressFormatType,
  ) async {
    final response = await _apiService.post<void>(
      StringConstants.kSaveSchedulerPreference,
      body: SchedulerPreference(
        truckGrouping: groupingBy,
        locationTypeEnum: locationAddressTypeEnum,
        addressFormatType: addressFormatType,
      ),
    );
    return response;
  }
}
