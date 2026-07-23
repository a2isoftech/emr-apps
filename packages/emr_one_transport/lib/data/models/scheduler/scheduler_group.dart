import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/scheduler/scheduler_truck.dart';
import 'package:json_annotation/json_annotation.dart';

part 'scheduler_group.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class SchedulerGroup {
  SchedulerGroup({
    required this.groupBy,
    required this.groupTitle,
    required this.groupSubTitle,
    required this.trucks,
  });

  factory SchedulerGroup.fromJson(Map<String, dynamic> json) =>
      _$SchedulerGroupFromJson(json);

  Map<String, dynamic> toJson() => _$SchedulerGroupToJson(this);

  final String groupTitle;
  final String groupSubTitle;
  final SchedulerTruckGroupBy groupBy;
  final List<SchedulerTruck> trucks;

  @JsonKey(includeFromJson: false, includeToJson: false)
  bool isExpanded = true;
}
