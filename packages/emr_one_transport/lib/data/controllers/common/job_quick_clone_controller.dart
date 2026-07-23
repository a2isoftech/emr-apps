import 'package:emr_one_transport/data/models/common/action_result.dart';
import 'package:emr_one_transport/data/models/common/clone_haulier_info.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/common/job_quick_clone_request.dart';
import 'package:emr_one_transport/data/models/jobs/job_list.dart';
import 'package:emr_one_transport/data/models/jobs/truck_info.dart';
import 'package:emr_one_transport/data/services/joblist_service.dart';
import 'package:flutter/material.dart';

class JobQuickCloneController extends ChangeNotifier {
  JobQuickCloneController({required this.jobListService});
  JobList job = JobList();
  final JobListService jobListService;
  ValueNotifier<TruckInfo?> selectedhaulier = ValueNotifier(null);
  ValueNotifier<int?> noOfJobsToCloneNotifier = ValueNotifier<int?>(1);
  ValueNotifier<DateTime?> selectedDateNotifier = ValueNotifier<DateTime?>(
    null,
  );
  ValueNotifier<DateTime?> selectedDueDateNotifier = ValueNotifier<DateTime?>(
    null,
  );
  final formKey = GlobalKey<FormState>();

  Future<bool> initialize(int jobNumber, JobList? jobDetails) async {
    reset();
    if (jobDetails == null) {
      await _fetchJob(jobNumber);
    } else {
      job = jobDetails;
    }
    return true;
  }

  void reset() {
    job = JobList();
    selectedDueDateNotifier.value = null;
    selectedDateNotifier.value = null;
    noOfJobsToCloneNotifier.value = 1;
    selectedhaulier.value = null;
  }

  Future<void> _fetchJob(int jobNumber) async {
    job = (await jobListService.getJobDetailsByJobNumber(jobNumber))!;
  }

  Future<ActionResult> quickClone() async {
    if (!(formKey.currentState?.validate() ?? false)) {
      return ActionResult(status: ActionStatus.formValidationFailed);
    }
    final truck = selectedhaulier.value;
    final request = JobQuickCloneRequest(
      cloneFromJobId: job.id!,
      noOfJobsToBeCreated: noOfJobsToCloneNotifier.value ?? 1,
      targetScheduledDate: selectedDateNotifier.value != null
          ? DateTime(
              selectedDateNotifier.value!.year,
              selectedDateNotifier.value!.month,
              selectedDateNotifier.value!.day,
            )
          : null,
      targetHaulierTruck: truck != null
          ? CloneJobHaulierInfo(
              haulierCode: truck.haulierCode!,
              haulierTypeId: truck.haulierType!,
              vrm: (truck.vrm == null || truck.vrm == '') ? null : truck.vrm,
            )
          : null,
      targetDueDate: selectedDueDateNotifier.value!.toUtc(),
    );

    final apiResponse = await jobListService.quickCloneJob(request);
    if (apiResponse.isSuccess) {
      return ActionResult(
        status: ActionStatus.apiSuccess,
        data: apiResponse.data?.map((e) => e.split('/').last).toList(),
      );
    } else {
      return ActionResult(
        status: ActionStatus.apiFailure,
        errorMessage: apiResponse.errorMessage,
      );
    }
  }
}
