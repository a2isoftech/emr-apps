import 'package:json_annotation/json_annotation.dart';

part 'live_loads_model.g.dart';

@JsonSerializable()
class LiveLoadsModel {
  LiveLoadsModel({
    required this.direction,
    required this.scheduledDate,
    required this.type,
    required this.haulierName,
    required this.jobNumber,
    required this.customerLocation,
    required this.planned,
    required this.instruction,
    required this.actual,
    required this.remaining,
    required this.status,
    required this.statusOrder,
    required this.statusId,
    required this.fromYardCode,
    required this.toYardCode,
    required this.duration,
  });

  factory LiveLoadsModel.fromJson(Map<String, dynamic> json) =>
      _$LiveLoadsModelFromJson(json);

  String direction;
  DateTime scheduledDate;
  String type;
  String haulierName;
  int jobNumber;
  String customerLocation;
  String? planned;
  String? instruction;
  String? actual;
  String? remaining;
  String status;
  int statusOrder;
  int statusId;
  String fromYardCode;
  String toYardCode;
  double duration;

  Map<String, dynamic> toJson() => _$LiveLoadsModelToJson(this);
}
