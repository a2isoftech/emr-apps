import 'package:emr_one_transport/data/models/scheduler/scheduler_truck.dart';
import 'package:json_annotation/json_annotation.dart';

part 'scheduler_yard.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class SchedulerYard {
  SchedulerYard({
    required this.yardCode,
    required this.yardName,
    required this.trucks,
  });

  factory SchedulerYard.fromJson(Map<String, dynamic> json) =>
      _$SchedulerYardFromJson(json);

  Map<String, dynamic> toJson() => _$SchedulerYardToJson(this);

  final String yardCode;
  final String yardName;
  final List<SchedulerTruck> trucks;
}
