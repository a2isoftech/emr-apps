import 'package:json_annotation/json_annotation.dart';

part 'live_loads_print_model.g.dart';

@JsonSerializable()
class LiveLoadsPrintModel {
  LiveLoadsPrintModel({
    required this.date,
    required this.direction,
    required this.job,
    required this.status,
    required this.haulier,
    required this.customer,
    required this.planned,
    required this.actual,
    required this.remaining,
    required this.instructions,
  });

  factory LiveLoadsPrintModel.fromJson(Map<String, dynamic> json) =>
      _$LiveLoadsPrintModelFromJson(json);

  String date;
  String direction;
  String job;
  String status;
  String haulier;
  String customer;
  String planned;
  String actual;
  String remaining;
  String instructions;

  Map<String, dynamic> toJson() => _$LiveLoadsPrintModelToJson(this);
}
