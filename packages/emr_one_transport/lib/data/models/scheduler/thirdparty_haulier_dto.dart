import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/scheduler/haulier_bucket.dart';
import 'package:emr_one_transport/data/models/scheduler/scheduler_job.dart';
import 'package:emr_one_transport/data/models/scheduler/third_party_job_group.dart';
import 'package:json_annotation/json_annotation.dart';

part 'thirdparty_haulier_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class ThirdpartyHaulierDto extends HaulierBucket {
  ThirdpartyHaulierDto({
    required List<SchedulerJob> jobs,
    required super.haulierType,
    required super.haulierCode,
    super.haulierName,
  }) : _jobsByNumber = {for (final j in jobs) j.jobNumber: j};

  factory ThirdpartyHaulierDto.fromJson(Map<String, dynamic> json) =>
      _$ThirdpartyHaulierDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ThirdpartyHaulierDtoToJson(this);

  final Map<int, SchedulerJob> _jobsByNumber;

  /// Read-only view of jobs, always sorted by job number.
  List<SchedulerJob> get jobs {
    final sorted = _jobsByNumber.values.toList()
      ..sort((a, b) => a.jobNumber.compareTo(b.jobNumber));
    return List.unmodifiable(sorted);
  }

  void addJob(SchedulerJob job) {
    _jobsByNumber[job.jobNumber] = job; // upsert by design
  }

  void addJobs(Iterable<SchedulerJob> newJobs) {
    for (final job in newJobs) {
      _jobsByNumber[job.jobNumber] = job;
    }
  }

  bool removeJobByNumber(int jobNumber) {
    return _jobsByNumber.remove(jobNumber) != null;
  }

  bool removeJobWhere(bool Function(SchedulerJob) test) {
    final before = _jobsByNumber.length;
    _jobsByNumber.removeWhere((_, job) => test(job));
    return _jobsByNumber.length != before;
  }

  SchedulerJob? getJobByNumber(int jobNumber) => _jobsByNumber[jobNumber];

  List<ThirdPartyJobGroup> groupJobsByType() {
    final buckets = <String, _StatusBuckets>{};

    // Iterate in sorted order so bucket lists come out sorted for free.
    final sortedJobs = _jobsByNumber.values.toList()
      ..sort((a, b) => a.jobNumber.compareTo(b.jobNumber));

    for (final job in sortedJobs) {
      final bucket = buckets.putIfAbsent(job.jobType, _StatusBuckets.new);
      switch (job.jobStatus) {
        case StringConstants.startedApiValue:
          bucket.started.add(job);
        case StringConstants.completedApiValue:
          bucket.completed.add(job);
        case StringConstants.abandonedApiValue:
          bucket.abandoned.add(job);
        case StringConstants.scheduledApiValue:
          bucket.scheduled.add(job);
      }
    }

    return buckets.entries.map((entry) {
        final b = entry.value;
        return ThirdPartyJobGroup(
          jobType: jobTypeFromApiValue(entry.key),
          haulierCode: haulierCode,
          haulierName: haulierName ?? '',
          startedJobs: b.started,
          completedJobs: b.completed,
          abandonedJobs: b.abandoned,
          scheduledJobs: b.scheduled,
        );
      }).toList()
      ..sort((a, b) => a.jobType.toString().compareTo(b.jobType.toString()));
  }
}

class _StatusBuckets {
  final List<SchedulerJob> started = [];
  final List<SchedulerJob> completed = [];
  final List<SchedulerJob> abandoned = [];
  final List<SchedulerJob> scheduled = [];
}
