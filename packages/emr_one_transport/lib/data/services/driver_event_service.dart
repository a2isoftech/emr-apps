import 'package:emr_one_transport/core/api_response.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/models/jobs/updatable_driver_event_job_dto.dart';
import 'package:emr_one_transport/data/models/jobs/update_driver_event_request.dart';
import 'package:emr_one_transport/data/services/api_service.dart';

class DriverEventService {
  DriverEventService({required this.apiService});

  final ApiService apiService;

  Future<ApiResponse<UpdatableDriverEventJobDto>> getDetails(
    String jobId,
  ) async {
    return apiService.get<UpdatableDriverEventJobDto>(
      StringConstants.kGetUpdatableDriverEventsUrl,
      queryParams: {'encodedJobId': jobId},
      fromJsonT: (json) =>
          UpdatableDriverEventJobDto.fromJson(json as Map<String, dynamic>),
    );
  }

  Future<ApiResponse<UpdatableDriverEventJobDto>> updateDetails(
    UpdateDriverEventRequest request,
  ) {
    return apiService.post<UpdatableDriverEventJobDto>(
      StringConstants.kUpdateDriverEventsUrl,
      body: request.toJson(),
      fromJsonT: (json) =>
          UpdatableDriverEventJobDto.fromJson(json as Map<String, dynamic>),
    );
  }
}
