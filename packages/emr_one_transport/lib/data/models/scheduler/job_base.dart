import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/scheduler/job_schedule_info.dart';
import 'package:emr_one_transport/data/models/scheduler/scheduler_job.dart';
import 'package:emr_one_transport/data/models/scheduler/third_party_job_group.dart';
import 'package:emr_one_transport/data/models/scheduler/unscheduled_job.dart';

// Base class for all job wrappers.
class JobBase {
  JobBase(this.dragItemType);

  final DragItemType dragItemType;
  late HaulierType targetHaulierType;
  late String? targetVrm;
  late String? targetTruckYard;
  late String? tagetHaulierCode;
  late String? targetHaulierName;
  late String? fromHaulierCode;
  late int? jobDuration;
}

/// For unscheduled, internal, and managed jobs that require scheduling,
/// each class provides a `buildScheduleInfo` method
/// returning a minimal JobScheduleInfo.
class UnscheduledJobWrapper extends JobBase {
  UnscheduledJobWrapper(this.unscheduledJob)
      : super(DragItemType.unscheduledJob) {
    jobDuration = unscheduledJob.duration;
  }

  final UnscheduledJob unscheduledJob;

  JobScheduleInfo buildScheduleInfo(DateTime selectedDate) {
    return JobScheduleInfo(
      jobNumber: unscheduledJob.jobNumber!,
      duration: 0,
      scheduledDate: selectedDate,
      vrm: targetVrm!, // Assumes that targetVrm is set.
    );
  }
}

class InternalJobWrapper extends JobBase {
  InternalJobWrapper(this.internalJob) : super(DragItemType.internalJob) {
    jobDuration = internalJob.duration;
  }

  final SchedulerJob internalJob;

  JobScheduleInfo buildScheduleInfo(DateTime selectedDate) {
    return JobScheduleInfo(
      jobNumber: internalJob.jobNumber,
      duration: internalJob.duration,
      scheduledDate: selectedDate,
      vrm: targetVrm!,
    );
  }
}

class ManagedJobWrapper extends JobBase {
  ManagedJobWrapper(this.managedJob) : super(DragItemType.managedJob) {
    jobDuration = managedJob.duration;
  }

  final SchedulerJob managedJob;

  JobScheduleInfo buildScheduleInfo(DateTime selectedDate) {
    return JobScheduleInfo(
      jobNumber: managedJob.jobNumber,
      duration: managedJob.duration,
      scheduledDate: selectedDate,
      vrm: targetVrm!,
    );
  }
}

/// For third-party jobs, the wrappers provide a getReassignInfo
///  method to extract
/// just the necessary data to build reassign requests.
class ThirdPartyJobWrapper extends JobBase {
  ThirdPartyJobWrapper(this.thirdPartyJob) : super(DragItemType.thirdPartyJob) {
    jobDuration = thirdPartyJob.duration;
  }

  final SchedulerJob thirdPartyJob;
}

class ThirdPartyJobGroupWrapper extends JobBase {
  ThirdPartyJobGroupWrapper(this.thirdPartyJobGroup)
      : super(DragItemType.thirdPartyJobGroup) {
    jobDuration = null;
  }

  final ThirdPartyJobGroup thirdPartyJobGroup;
  List<SchedulerJob> jobsToSchedule = <SchedulerJob>[];
}

/// If the plan type doesn't require scheduling or reassigning, it
///  remains a simple wrapper.
class PlanWrapper extends JobBase {
  PlanWrapper(this.unscheduledJob) : super(DragItemType.plan) {
    jobDuration = null;
  }
  final UnscheduledJob unscheduledJob;
  int? loads;
}
