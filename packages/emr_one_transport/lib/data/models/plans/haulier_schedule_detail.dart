import 'package:json_annotation/json_annotation.dart';

part 'haulier_schedule_detail.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class HaulierScheduleDetail {
  HaulierScheduleDetail({
    required this.active,
    required this.haulierCode,
    required this.haulierType,
    this.haulierId,
    this.haulierName,
    this.loads,
  });

  factory HaulierScheduleDetail.fromJson(Map<String, dynamic> json) =>
      _$HaulierScheduleDetailFromJson(json);

  Map<String, dynamic> toJson() => _$HaulierScheduleDetailToJson(this);

  final String? haulierId;
  final String haulierCode;
  final String? haulierName;
  final String haulierType;
  int? loads;
  bool active;
}
