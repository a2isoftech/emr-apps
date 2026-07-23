import 'package:emr_one_securitymgmt/models/schedule_item.dart';
import 'package:json_annotation/json_annotation.dart';

part 'schedule_result.g.dart';

@JsonSerializable()
class SmScheduleResult {
  SmScheduleResult(this.scheduleId, this.availabilityView, this.scheduleItems,
      {this.isFaulted = false,});

  factory SmScheduleResult.fromJson(Map<String, dynamic> json) =>
      _$SmScheduleResultFromJson(json);

  Map<String, dynamic> toJson() => _$SmScheduleResultToJson(this);
  List<bool> toWeekView() {
    return [true, true, false, false, true];
  }

  final String scheduleId;
  final String availabilityView;
  final List<SmScheduleItem> scheduleItems;
  final bool isFaulted;
}
