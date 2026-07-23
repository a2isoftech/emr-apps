import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/scheduler/scheduler_job.dart';
import 'package:emr_one_transport/data/models/scheduler/third_party_job_group.dart';
import 'package:emr_one_transport/data/models/scheduler/thirdparty_haulier_dto.dart';

class ThirdPartyHaulierWithJobs {
  ThirdPartyHaulierWithJobs({
    required this.haulierCode,
    required this.haulierName,
    required this.groupedJobsOnJobType,
    required this.allJobs,
    this.showJobType,
  });
  String haulierCode;
  String haulierName;
  JobType? showJobType;
  List<ThirdPartyJobGroup> groupedJobsOnJobType;
  List<SchedulerJob> allJobs;

  /// Rebuilds the grouped-jobs list from the given DTO, preserving
  /// per-group UI state (displayJobsByStatus) across the rebuild.
  void refreshGroupedJobs(ThirdpartyHaulierDto dto) {
    final previousDisplayState = {
      for (final g in groupedJobsOnJobType) g.jobType: g.displayJobsByStatus,
    };

    final newGroups = dto.groupJobsByType();
    for (final group in newGroups) {
      final previous = previousDisplayState[group.jobType];
      if (previous != null) {
        group.displayJobsByStatus = previous;
      }
    }

    groupedJobsOnJobType = newGroups;
  }
}
