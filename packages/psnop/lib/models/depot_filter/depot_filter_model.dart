import 'package:json_annotation/json_annotation.dart';

part 'depot_filter_model.g.dart';

@JsonSerializable()
class DepotFilterModel {
  DepotFilterModel({
    this.depotNo,
    this.gradeGroup,
    this.grade,
    this.gradeType,
    this.ignoreZeroHeaps,
    this.weeks,
  });

  /// Connect the generated [_$DepotFilterModelFromJson] function to
  /// the `fromJson` factory.
  factory DepotFilterModel.fromJson(Map<String, dynamic> json) =>
      _$DepotFilterModelFromJson(json);

  /// Connect the generated [_$DepotFilterModelToJson] function to
  /// the `toJson` method.
  Map<String, dynamic> toJson() => _$DepotFilterModelToJson(this);

  String? depotNo;
  String? gradeGroup;
  String? grade;
  String? gradeType;
  bool? ignoreZeroHeaps;
  int? weeks;
}
