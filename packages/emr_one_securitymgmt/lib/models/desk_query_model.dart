import 'package:emr_one_securitymgmt/models/date_query_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'desk_query_model.g.dart';

@JsonSerializable()
class SmDeskQueryModel {
  SmDeskQueryModel(this.schedules, this.startTime, this.endTime);

  factory SmDeskQueryModel.fromJson(Map<String, dynamic> json) =>
      _$SmDeskQueryModelFromJson(json);

  Map<String, dynamic> toJson() => _$SmDeskQueryModelToJson(this);

  final List<String> schedules;
  final SmDateQueryModel startTime;
  final SmDateQueryModel endTime;
  final int availabilityViewInterval = 60;
}
