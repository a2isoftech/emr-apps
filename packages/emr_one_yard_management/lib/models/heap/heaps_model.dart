import 'package:json_annotation/json_annotation.dart';

part 'heaps_model.g.dart';

@JsonSerializable()
class HeapsModel {
  HeapsModel({
    required this.heapNo,
    required this.depotNo,
    required this.heapDesc,
    required this.heapShortName,
    required this.gradeCode,
    required this.heapDisplayName,
    this.uomId,
  });

  factory HeapsModel.fromJson(Map<String, dynamic> json) =>
      _$HeapsModelFromJson(json);
  int heapNo;
  String depotNo;
  String heapDesc;
  String heapShortName;
  String gradeCode;
  String heapDisplayName;
  int? uomId;

  Map<String, dynamic> toJson() => _$HeapsModelToJson(this);
}
