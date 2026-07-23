import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/models/common/action_result.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/common/list_details.dart';
import 'package:emr_one_transport/data/models/containers/scheduler_container_update_request.dart';
import 'package:emr_one_transport/data/models/containers/updatable_driver_event_job_container_dto.dart';
import 'package:emr_one_transport/data/models/jobs/driver_event.dart';
import 'package:emr_one_transport/data/models/jobs/job_delay.dart';
import 'package:emr_one_transport/data/models/jobs/updatable_driver_event_job_dto.dart';
import 'package:emr_one_transport/data/models/jobs/update_driver_event_request.dart';
import 'package:emr_one_transport/data/models/scheduler/scheduler_job.dart';
import 'package:emr_one_transport/data/services/common_service.dart';
import 'package:emr_one_transport/data/services/driver_event_service.dart';
import 'package:flutter/material.dart';

class DriverEventController extends ChangeNotifier {
  DriverEventController({
    required this.driverEventService,
    required this.commonService,
  });
  final DriverEventService driverEventService;
  final CommonService commonService;
  bool isloading = false;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  late SchedulerJob job;

  ValueNotifier<DateTime?> jobStartDate = ValueNotifier(null);
  ValueNotifier<DateTime?> jobEndDate = ValueNotifier(null);
  ValueNotifier<String?> dispatcherNotesNotifier = ValueNotifier(null);
  ValueNotifier<String?> officeNotesNotifier = ValueNotifier(null);
  ValueNotifier<String?> driverNotesNotifier = ValueNotifier(null);
  ValueNotifier<bool> isJobStartDateTimeRequiredField = ValueNotifier(false);
  ValueNotifier<bool> isJobEndDateTimeRequiredField = ValueNotifier(false);

  List<ListDetails> delayReasons = [];

  UpdatableDriverEventJobDto? driverEventDto;

  List<DriverEvent> get events => driverEventDto?.driverEvents ?? [];
  final ValueNotifier<List<JobDelay>> jobDelaysNotifier = ValueNotifier([]);

  Future<void> initialize(SchedulerJob job) async {
    this.job = job;
    _showLoader();
    await Future.wait([_getData(), _getDelayReasons()]);
    jobEndDate.addListener(checkStartDate);
    jobEndDate.addListener(changeDelayState);
    _hideLoader();
  }

  void resetForm() {
    jobEndDate.removeListener(checkStartDate);
    driverEventDto = null;
  }

  Future<void> _getData() async {
    final response = await driverEventService.getDetails(job.id);
    if (response.isSuccess) {
      driverEventDto = response.data;
      // Job start/end
      final start = driverEventDto!.startedDateTime?.toLocal();
      jobStartDate.value = start;
      if (start != null) {
        isJobStartDateTimeRequiredField.value = true;
      }

      final jobEndDateTime = driverEventDto!.finishedDateTime?.toLocal();
      jobEndDate.value = jobEndDateTime;
      if (jobEndDateTime != null) {
        isJobEndDateTimeRequiredField.value = true;
      }
      dispatcherNotesNotifier.value = driverEventDto!.dispatcherNotes;
      officeNotesNotifier.value = driverEventDto!.officeNotes;
      driverNotesNotifier.value = driverEventDto!.driverNotes;

      jobDelaysNotifier.value = driverEventDto!.driverEvents
          .where((d) => d.active)
          .map(
            (e) => JobDelay.fromEvent(
              e,
              isInProgress: e.ended == null && jobEndDateTime == null,
            ),
          )
          .toList();
    }
  }

  Future<void> _getDelayReasons() async {
    delayReasons = await commonService.getListByType(
      StringConstants.kDelayTypes,
    );
  }

  void _showLoader() {
    isloading = true;
    notifyListeners();
  }

  void _hideLoader() {
    isloading = false;
    notifyListeners();
  }

  void removeDriverEvent(int index) {
    final delays = jobDelaysNotifier.value;
    if (delays[index].id == null) {
      delays.removeAt(index);
    } else {
      delays[index].active = false;
    }
    jobDelaysNotifier.value = List<JobDelay>.from(delays);
  }

  void updateDelay(int index, JobDelay delay) {
    final delays = jobDelaysNotifier.value;
    delays[index] = delay;
    jobDelaysNotifier.value = List<JobDelay>.from(delays);
  }

  TimeOfDay timeOfDayFromMinutes(int totalMinutes) {
    final hour = totalMinutes ~/ 60;
    final minute = totalMinutes % 60;
    return TimeOfDay(hour: hour, minute: minute);
  }

  Future<ActionResult> updateDriverEvents() async {
    if (!(formKey.currentState?.validate() ?? false)) {
      return ActionResult(status: ActionStatus.formValidationFailed);
    }

    //delay and container info could be updated only for comleted/abandoned job
    final canContainerAndDelayUpdated =
        job.jobStatus == StringConstants.abandonedApiValue ||
        jobEndDate.value != null;
    final containerInfo = canContainerAndDelayUpdated
        ? [
            ...driverEventDto?.customerLocationContainers ?? [],
            ...driverEventDto?.startLocationContainers ?? [],
          ].map((c) {
            return SchedulerContainerUpdateRequest(
              assetNumberUsed: c.assetNumberUsed ?? '',
              containerGuid: c.containerGuid,
              isRetained: c.isRetained,
            );
          })
        : <SchedulerContainerUpdateRequest>[];
    final delays = <DriverEvent>[];

    final request = UpdateDriverEventRequest(
      jobId: job.id,
      containerRetention: containerInfo.toList(),
      driverDelayEvents: delays,
    );
    if (jobStartDate.value != null) {
      request.startedTime = jobStartDate.value!.toUtc();
    }
    if (jobEndDate.value != null) {
      request.finishedTime = jobEndDate.value!.toUtc();
    }
    request.dispatcherNotes = dispatcherNotesNotifier.value;
    request.officeNotes = officeNotesNotifier.value;

    if (canContainerAndDelayUpdated) {
      for (final delay in jobDelaysNotifier.value) {
        final d = DriverEvent(
          eventId: delay.id,
          subType: delay.selectedDelayCode,
          started: delay.startedDateTime!.toUtc(),
          ended: delay.endDateTime!.toUtc(),
          comments: delay.comment,
          active: delay.active,
        );
        delays.add(d);
      }
    }

    final apiResponse = await driverEventService.updateDetails(request);
    if (apiResponse.isSuccess) {
      return ActionResult(status: ActionStatus.apiSuccess);
    } else {
      return ActionResult(
        status: ActionStatus.apiFailure,
        errorMessage: apiResponse.errorMessage,
      );
    }
  }

  void updateStartContainer(UpdatableDriverEventJobContainerDto updatedDto) {
    _updateContainerList(driverEventDto?.startLocationContainers, updatedDto);
  }

  void updateCustomerContainer(UpdatableDriverEventJobContainerDto updatedDto) {
    _updateContainerList(
      driverEventDto?.customerLocationContainers,
      updatedDto,
    );
  }

  void _updateContainerList(
    List<UpdatableDriverEventJobContainerDto>? list,
    UpdatableDriverEventJobContainerDto updatedDto,
  ) {
    if (list == null) return;
    final idx = list.indexWhere(
      (c) => c.containerGuid == updatedDto.containerGuid,
    );
    if (idx == -1) return;
    list[idx] = updatedDto;
    notifyListeners();
  }

  void checkStartDate() {
    if (jobEndDate.value != null && jobStartDate.value == null) {
      isJobStartDateTimeRequiredField.value = true;
    }
  }

  //If there are any inprogress delay, mark completed so that user has to
  //provide new delay end time for such delays
  void changeDelayState() {
    if (jobEndDate.value != null) {
      final updated = jobDelaysNotifier.value;

      for (final e in updated) {
        if (e.endDateTime == null) {
          e.isInProgress = false;
        }
      }

      jobDelaysNotifier.value = updated;
    }
  }
}
