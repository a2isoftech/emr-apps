import 'package:emr_one_core/extensions/date_extensions.dart';
import 'package:emr_one_transport/data/models/common/action_result.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/jobs/truck_info.dart';
import 'package:emr_one_transport/data/models/scheduler/clone_jobs_for_the_day_request.dart';
import 'package:emr_one_transport/data/models/scheduler/scheduler_truck.dart';
import 'package:emr_one_transport/data/services/joblist_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_timezone/flutter_timezone.dart';

class CloneJobsForwardController extends ChangeNotifier {
  CloneJobsForwardController({required this.jobListService});
  final JobListService jobListService;

  final sourceDateNotifier = ValueNotifier(DateTime.now().dateOnly);
  final targetDateNotifier = ValueNotifier<DateTime?>(null);
  final targetDueDateNotifier = ValueNotifier<DateTime?>(null);

  ValueNotifier<TruckInfo?> selectedTargethaulier = ValueNotifier(null);
  SchedulerTruck? sourceTruck;
  String? sourceHaulierCode;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Future<void> initialize(
    DateTime sourceDate,
    SchedulerTruck? sourceTruck,
    String? sourceHaulierCode,
  ) async {
    initForm();
    this.sourceTruck = sourceTruck;
    sourceDateNotifier.value = sourceDate.dateOnly;
    this.sourceHaulierCode = sourceHaulierCode;
  }

  void initForm() {
    selectedTargethaulier.value = null;
    targetDateNotifier.value = null;
    targetDueDateNotifier.value = null;
  }

  Future<ActionResult> cloneJobsForward() async {
    if (!(formKey.currentState?.validate() ?? false)) {
      return ActionResult(status: ActionStatus.formValidationFailed);
    }

    final request = CloneJobsForTheDayRequest(
      timezoneId: await FlutterTimezone.getLocalTimezone(),
      sourceDate: sourceDateNotifier.value,
      targetDueDate: targetDueDateNotifier.value.dateOnly!,
      targetDate: targetDateNotifier.value!,
      sourceTruckVrm: sourceTruck?.vrm,
      targetVrm: selectedTargethaulier.value?.vrm,
      targetHaulierCode: selectedTargethaulier.value?.haulierCode,
      sourceHaulierCode: sourceTruck?.haulierCode ?? '',
    );
    final apiResponse = await jobListService.cloneJobsForward(request);
    if (apiResponse.isSuccess) {
      return ActionResult(status: ActionStatus.apiSuccess);
    } else {
      return ActionResult(
        status: ActionStatus.apiFailure,
        errorMessage: apiResponse.errorMessage,
      );
    }
  }
}
