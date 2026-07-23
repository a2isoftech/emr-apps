import 'package:emr_one_core/extensions/date_extensions.dart';
import 'package:emr_one_transport/data/models/common/action_result.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/jobs/job_list.dart';
import 'package:emr_one_transport/data/models/jobs/truck_info.dart';
import 'package:emr_one_transport/data/models/scheduler/job_reassign_info.dart';
import 'package:emr_one_transport/data/models/scheduler/reassign_job_request.dart';
import 'package:emr_one_transport/data/services/joblist_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_timezone/flutter_timezone.dart';

class JobScheduleController extends ChangeNotifier {
  JobScheduleController({required this.jobListService});

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  ValueNotifier<TruckInfo?> selectedhaulier = ValueNotifier(null);
  final JobListService jobListService;
  late JobList jobDetails;

  Future<ActionResult> save() async {
    if (!(formKey.currentState?.validate() ?? false)) {
      return ActionResult(status: ActionStatus.formValidationFailed);
    }
    final haulierType =
        HaulierType.fromString(selectedhaulier.value?.haulierType ?? '');

    if (haulierType == HaulierType.thirdParty) {
      return reassignJob();
    }

    return scheduleJob(haulierType);
  }

  Future<ActionResult> scheduleJob(HaulierType targetHaulierType) async {
    final apiResponse = await jobListService.scheduleJob(
      jobDetails.jobNumber,
      1,
      DateTime.now().dateOnly,
      selectedhaulier.value!.vrm!,
      0,
      targetHaulierType,
      isFlexibleSchedule: true,
    );
    if (apiResponse.isSuccess) {
      return ActionResult(status: ActionStatus.apiSuccess);
    } else {
      return ActionResult(
        status: ActionStatus.apiFailure,
        errorMessage: apiResponse.errorMessage,
      );
    }
  }

  Future<ActionResult> reassignJob() async {
    final request = ReassignJobRequest(
      scheduleDate: DateTime.now().dateOnly,
      haulierType: HaulierType.thirdParty.toString(),
      haulierCode: selectedhaulier.value?.haulierCode ?? '',
      dispatchYard: jobDetails.dispatchYard ?? '',
      jobs: [JobReassignInfo(jobNumber: jobDetails.jobNumber!, duration: 0)],
      vrm: '',
      timezoneId: await FlutterTimezone.getLocalTimezone(),
    );
    final apiResponse = await jobListService.reassignJobs(request);
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
