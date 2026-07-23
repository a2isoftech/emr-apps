import 'package:emr_one_core/networking/http/resilient_http_client.dart';
import 'package:emr_one_transport/core/api_response.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/models/vor/truck_vor_schedule.dart';
import 'package:emr_one_transport/data/models/vor/vor_schedule.dart';
import 'package:emr_one_transport/data/models/vor/vor_schedule_request.dart';
import 'package:emr_one_transport/data/services/api_service.dart';

class VORService {
  VORService({required this.httpClient})
    : _apiService = ApiService(httpClient: httpClient);
  final ResilientHttpClient httpClient;
  final ApiService _apiService;

  Future<ApiResponse<TruckVORSchedule>> getVORSchedules(String vrm) async {
    final response = await _apiService.get<TruckVORSchedule>(
      '${StringConstants.kVORUrl}/$vrm',
      fromJsonT: (response) =>
          TruckVORSchedule.fromJson(response as Map<String, dynamic>),
    );
    return response;
  }

  Future<ApiResponse<List<VORSchedule>>> getVORSchedulesByDate(
    String vrm,
    DateTime startDate,
    int days,
  ) async {
    final encodedVrm = Uri.encodeComponent(vrm);

    final response = await _apiService.getList<VORSchedule>(
      StringConstants.kVorByDateUrl.replaceFirst('{vrm}', encodedVrm),
      fromJsonT: VORSchedule.fromJson,
      queryParams: {
        'fromDate': startDate.toIso8601String(),
        StringConstants.days: days.toString(),
        'vrm': vrm,
      },
    );
    return response;
  }

  Future<ApiResponse<String>> createVORSchedules(
    String vrm,
    List<VORScheduleRequest> body,
  ) async {
    final response = await _apiService.post<String>(
      '${StringConstants.kVORUrl}/$vrm',
      body: body,
    );
    return response;
  }

  Future<ApiResponse<String>> updateVorSchedule(
    String vrm,
    String scheduleId,
    VORScheduleRequest model,
  ) async {
    final encodedVrm = Uri.encodeComponent(vrm);
    final encodedScheduleId = Uri.encodeComponent(scheduleId);

    final response = await _apiService.put<String>(
      '${StringConstants.kVORUrl}/$encodedVrm/$encodedScheduleId',
      body: model,
    );
    return response;
  }

  Future<bool> deleteVORSchedule(String vrm, String scheduleId) async {
    final encodedVrm = Uri.encodeComponent(vrm);
    final encodedScheduleId = Uri.encodeComponent(scheduleId);

    final apiResponse = await _apiService.delete<bool>(
      '${StringConstants.kVORUrl}/$encodedVrm/$encodedScheduleId',
      scheduleId,
    );

    return apiResponse.isSuccess;
  }
}
