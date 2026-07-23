import 'package:emr_one_transport/data/models/plans/haulier_schedule_detail.dart';
import 'package:json_annotation/json_annotation.dart';

part 'haulier_and_remaining_loads.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class HaulierAndRemainingLoads {
  HaulierAndRemainingLoads({
    required this.haulierDetails,
    required this.remainingLoads,
    this.jobsAndStatus = const {},
  });

  factory HaulierAndRemainingLoads.fromJson(Map<String, dynamic> json) =>
      _$HaulierAndRemainingLoadsFromJson(json);

  Map<String, dynamic> toJson() => _$HaulierAndRemainingLoadsToJson(this);

  HaulierScheduleDetail haulierDetails;
  int remainingLoads;
  Map<int, String> jobsAndStatus;
}
