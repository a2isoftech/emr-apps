import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/models/jobs/job_tracking_details.dart';
import 'package:emr_one_transport/data/models/jobs/job_truck_geometry.dart';
import 'package:emr_one_transport/data/services/api_service.dart';

class JobTrackingService {
  JobTrackingService({
    required this.httpClient,
  });
  final ResilientHttpClient httpClient;

  Future<JobTrackingDetails> getJobTrackingDetails(
    int jobNumber,
    String? territoryCode,
  ) async {
    final apiservice = ApiService(httpClient: httpClient);
    var endpoint = '${StringConstants.kjobTimelineUrl}/$jobNumber';

    if (territoryCode != null) {
      endpoint += '/$territoryCode';
    }

    final apiresponse = await apiservice.get<JobTrackingDetails>(
      endpoint,
      fromJsonT: (response) =>
          JobTrackingDetails.fromJson(response as Map<String, dynamic>),
    );

    if (apiresponse.isSuccess && apiresponse.data != null) {
      final response = apiresponse.data;
      return response!;
    }

    throw Exception(
      'Failed to load job tracking details: ${apiresponse.errorMessage}',
    );
  }

  Future<JobTruckGeometry?> getJobTruckGeometry(
    int jobNumber,
  ) async {
    final apiservice = ApiService(httpClient: httpClient);
    final apiresponse = await apiservice.getList<JobTruckGeometry>(
      '${StringConstants.kjobTruckGeometryUrl}$jobNumber',
      fromJsonT: JobTruckGeometry.fromJson,
    );

    if (apiresponse.isSuccess) {
      if (apiresponse.data?.isNotEmpty ?? false) {
        return apiresponse.data![0];
      } else {
        return null;
      }
    } else {
      return null;
    }
  }
}
