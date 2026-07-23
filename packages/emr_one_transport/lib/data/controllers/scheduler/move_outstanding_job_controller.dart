import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/api_response.dart';
import 'package:emr_one_transport/data/models/common/action_result.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/jobs/truck_info.dart';
import 'package:emr_one_transport/data/models/scheduler/move_outstanding_jobs.dart';
import 'package:emr_one_transport/data/models/scheduler/scheduler_truck.dart';
import 'package:emr_one_transport/data/services/joblist_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_timezone/flutter_timezone.dart';

class MoveOutstandingJobController extends ChangeNotifier {
  MoveOutstandingJobController(this.jobListService);

  late DateTime sourceDate;
  late SchedulerTruck sourceTruck;
  final JobListService jobListService;
  final ValueNotifier<TruckInfo?> selectedHaulier = ValueNotifier(null);
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Future<void> initialize(
    SchedulerTruck sourceTruck,
    DateTime sourceDate,
  ) async {
    this.sourceTruck = sourceTruck;
    this.sourceDate = sourceDate;
    selectedHaulier.value = null;
  }

  Future<ActionResult> moveOutStandingJobs() async {
    if (!(formKey.currentState?.validate() ?? false)) {
      return ActionResult(status: ActionStatus.formValidationFailed);
    }

    final apiResponse = await proceedforMovingOutstandingJobs();

    if (apiResponse.isSuccess) {
      return ActionResult(status: ActionStatus.apiSuccess);
    } else {
      return ActionResult(
        status: ActionStatus.apiFailure,
        errorMessage: apiResponse.errorMessage,
      );
    }
  }

  Future<ApiResponse<void>> proceedforMovingOutstandingJobs() async {
    final targetTruckHaulier = selectedHaulier.value!;
    final request = MovePendingJobsRequest(
      sourceTruckVrm: sourceTruck.vrm,
      targetHaulierType:
          targetTruckHaulier.haulierType ?? HaulierType.internal.toString(),
      sourceDate: sourceDate.dateOnly,
      targetDate: sourceDate.dateOnly,
      targetTruckVrm: targetTruckHaulier.vrm,
      targetHaulierCode: targetTruckHaulier.haulierCode ?? '',
      timezoneId: await FlutterTimezone.getLocalTimezone(),
    );
    final response = await jobListService.movePendingJobs(request);
    return response;
  }
}
