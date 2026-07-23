import 'package:emr_one_transport/core/api_response.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/models/tracking/job_summary_model.dart';
import 'package:emr_one_transport/data/models/tracking/tracker_summary_model.dart';
import 'package:emr_one_transport/data/models/tracking/truck_position_model.dart';
import 'package:emr_one_transport/data/services/api_service.dart';

/// Service for fetching truck location data and tracking information.
/// Provides truck-specific endpoints for positions, summaries, and jobs.
class TrucksLocatorService {
  TrucksLocatorService({required this.apiService});

  final ApiService apiService;

  /// Get truck positions for multiple yards with optional date range.
  Future<ApiResponse<List<TruckPosition>>> getTruckPosition({
    required List<String> yardCodes,
    DateTime? fromDate,
    DateTime? toDate,
  }) async {
    final requestBody = <String, dynamic>{
      'yardCodes': yardCodes,
      if (fromDate != null) 'fromDate': fromDate.toIso8601String(),
      if (toDate != null) 'toDate': toDate.toIso8601String(),
    };

    final response = await apiService.postList<TruckPosition>(
      StringConstants.kGetTruckPosition,
      body: requestBody,
      fromJsonT: TruckPosition.fromJson,
    );
    return response;
  }

  /// Get truck summary with current position and active job
  Future<ApiResponse<TrackerSummary>> getTruckSummary({
    required String assetNumber,
  }) async {
    final response = await apiService.get<TrackerSummary>(
      StringConstants.kTrackerSummary,
      queryParams: {'assetNumber': assetNumber},
      fromJsonT: (response) =>
          TrackerSummary.fromJson(response as Map<String, dynamic>),
    );
    return response;
  }

  /// Get jobs for a truck within a date range
  Future<ApiResponse<List<JobSummary>>> getTruckJobsByDateRange({
    required String assetNumber,
    int limit = 50,
    DateTime? fromDate,
    DateTime? toDate,
  }) async {
    final queryParams = <String, String>{
      'assetNumber': assetNumber,
      'take': limit.toString(),
    };

    if (fromDate != null) {
      queryParams['fromDate'] = fromDate.toUtc().toIso8601String();
    }
    if (toDate != null) {
      queryParams['toDate'] = toDate.toUtc().toIso8601String();
    }

    final response = await apiService.getList<JobSummary>(
      StringConstants.kTruckJobsByDateRange,
      queryParams: queryParams,
      fromJsonT: JobSummary.fromJson,
    );
    return response;
  }
}
