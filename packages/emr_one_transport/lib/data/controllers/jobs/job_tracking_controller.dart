import 'package:emr_one_transport/data/models/jobs/job_tracking_details.dart';
import 'package:emr_one_transport/data/models/jobs/job_truck_geometry.dart';
import 'package:emr_one_transport/data/services/jobs/job_tracking_service.dart';
import 'package:flutter/material.dart';

class JobTrackingController extends ChangeNotifier {
  JobTrackingController({required this.service});
  final JobTrackingService service;
  late JobTrackingDetails _trackingDetails;
  JobTruckGeometry? _truckGeometry;
  JobTrackingDetails get trackingDetails => _trackingDetails;
  JobTruckGeometry? get truckGeometry => _truckGeometry;

  Future<void> fetchJobTrackingDetails(
    int jobNumber,
    String? territoryCode,
  ) async {
    final result = await service.getJobTrackingDetails(
      jobNumber,
      territoryCode,
    );

    if (result.jobStartTime != null) {
      final geometryData = await service.getJobTruckGeometry(jobNumber);
      _truckGeometry = geometryData;
    }
    _trackingDetails = result;

    notifyListeners();
  }
}
