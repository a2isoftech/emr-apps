import 'package:emr_one_transport/data/models/common/useractioninfo.dart';
import 'package:emr_one_transport/data/models/vor/vor_schedule.dart';
import 'package:json_annotation/json_annotation.dart';

part 'truck_vor_schedule.g.dart';

@JsonSerializable()
class TruckVORSchedule {
  TruckVORSchedule({
    this.id,
    this.vrm,
    this.vorSchedule,
    this.created,
    this.modified,
  });

  factory TruckVORSchedule.fromJson(Map<String, dynamic> json) =>
      _$TruckVORScheduleFromJson(json);

  Map<String, dynamic> toJson() => _$TruckVORScheduleToJson(this);

  final String? id;
  final String? vrm;
  final List<VORSchedule>? vorSchedule;
  final UserActionInfo? created;
  final UserActionInfo? modified;
}
