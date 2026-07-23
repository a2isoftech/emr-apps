import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/scheduler/scheduler_job.dart';

class ThirdPartyJobGroup {
  ThirdPartyJobGroup({
    required this.jobType,
    required this.haulierCode,
    required this.haulierName,
    this.startedJobs = const [],
    this.completedJobs = const [],
    this.abandonedJobs = const [],
    this.scheduledJobs = const [],
  });

  JobType jobType;
  String haulierCode;
  String haulierName;
  ThirdPartyJobDisplayEnum displayJobsByStatus = ThirdPartyJobDisplayEnum.none;
  List<SchedulerJob> startedJobs;
  List<SchedulerJob> completedJobs;
  List<SchedulerJob> abandonedJobs;
  List<SchedulerJob> scheduledJobs;
}
