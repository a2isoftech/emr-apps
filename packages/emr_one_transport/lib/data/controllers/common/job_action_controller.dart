import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/models/common/action_result.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/common/list_details.dart';
import 'package:emr_one_transport/data/models/jobs/delete_job_request.dart';
import 'package:emr_one_transport/data/models/jobs/job_scheduler_update_request.dart';
import 'package:emr_one_transport/data/models/scheduler/scheduler_job.dart';
import 'package:emr_one_transport/data/models/scheduler/unassign_job_request.dart';
import 'package:emr_one_transport/data/services/api_service.dart';
import 'package:emr_one_transport/data/services/common_service.dart';
import 'package:emr_one_transport/data/services/joblist_service.dart';
import 'package:flutter/material.dart';

class JobActionController extends ChangeNotifier {
  JobActionController(
    this.commonService,
    this.apiService,
    this.jobListService,
  );

  final CommonService commonService;
  final JobListService jobListService;
  final ApiService apiService;
  ValueNotifier<List<ListDetails>> actionReasons =
      ValueNotifier<List<ListDetails>>([]);
  ValueNotifier<ListDetails?> selectedReason =
      ValueNotifier<ListDetails?>(null);
  bool isLoading = true;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late JobContextMenuOptions _action;

  ValueNotifier<String> actionComment = ValueNotifier<String>('');

  Future<void> initialize(JobContextMenuOptions action) async {
    if (action == JobContextMenuOptions.abandonJob ||
        action == JobContextMenuOptions.unassignJob ||
        action == JobContextMenuOptions.deleteJob) {
      _action = action;
      await fetchUnassignReason();
      hideLoader();
      return;
    }
  }

  void showLoader() {
    isLoading = true;
    notifyListeners();
  }

  void hideLoader() {
    isLoading = false;
    notifyListeners();
  }

  void reset() {
    actionReasons.value = [];
    actionComment.value = '';
    selectedReason.value = null;
    isLoading = false;
  }

  Future<void> fetchUnassignReason() async {
    var reasonKey = StringConstants.kunassignReasonKey;
    if (_action == JobContextMenuOptions.abandonJob) {
      reasonKey = StringConstants.kAbandonReasonKey;
    } else if (_action == JobContextMenuOptions.deleteJob) {
      reasonKey = StringConstants.kDeleteReasonKey;
    }

    actionReasons.value = await commonService.getListByType(reasonKey);
  }

  Future<ActionResult> completeTheAction(SchedulerJob job) async {
    if (!(formKey.currentState?.validate() ?? false)) {
      return ActionResult(status: ActionStatus.formValidationFailed);
    }
    showLoader();
    try {
      if (_action == JobContextMenuOptions.unassignJob) {
        return unassignJob(job);
      }
      if (_action == JobContextMenuOptions.abandonJob) {
        return abandonJob(job);
      }
      if (_action == JobContextMenuOptions.deleteJob) {
        return deleteJob(job);
      }
    } finally {
      hideLoader();
    }
    return ActionResult(status: ActionStatus.apiFailure);
  }

  Future<ActionResult> unassignJob(SchedulerJob job) async {
    final request = UnassignJobRequest(
      jobId: job.id,
      unAssignReasonCode: selectedReason.value?.code ?? '',
      unAssignReason: selectedReason.value?.description ?? '',
      unAssignComments: actionComment.value,
    );

    final apiResponse = await apiService.post<String>(
      StringConstants.kunassignJobsUrl,
      body: [request],
      fromJsonT: (res) => res as String,
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

  Future<ActionResult> abandonJob(SchedulerJob job) async {
    final request = JobSchedulerUpdateRequest(
      id: job.id,
      isAbandoned: true,
      abandonReason: selectedReason.value?.description ?? '',
      abandonComments: actionComment.value,
    );

    final apiResponse = await apiService.post<SchedulerJob>(
      StringConstants.kJobUpdateFromSchedulerUrl,
      body: request,
      fromJsonT: (e) => SchedulerJob.fromJson(e as Map<String, dynamic>),
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

  Future<ActionResult> deleteJob(SchedulerJob job) async {
    final deleteJobsRequestModel = [
      DeleteJobRequest(
        job.jobNumber,
        selectedReason.value?.description ?? '',
        actionComment.value,
      ),
    ];
    final apiResponse = await jobListService.deleteJobs(deleteJobsRequestModel);

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
