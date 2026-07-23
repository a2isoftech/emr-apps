import 'package:emr_one_transport/data/models/scheduler/scheduler_truck.dart';
import 'package:json_annotation/json_annotation.dart';

part 'scheduler_haulier.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class SchedulerHaulier {
  SchedulerHaulier({
    required this.haulierCode,
    required this.haulierName,
    required this.trucks,
  });

  factory SchedulerHaulier.fromJson(Map<String, dynamic> json) =>
      _$SchedulerHaulierFromJson(json);

  Map<String, dynamic> toJson() => _$SchedulerHaulierToJson(this);

  final String haulierCode;
  final String haulierName;
  final List<SchedulerTruck> trucks;
}
