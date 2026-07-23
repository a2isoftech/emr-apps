import 'package:emr_one_elv_inspection/models/model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cat_lookup_model.g.dart';

@JsonSerializable()
class CatLookupModel {
  CatLookupModel({
    required this.techemetFoundNoResults,
    required this.success,
    this.data,
  });

  factory CatLookupModel.fromJson(Map<String, dynamic> json) =>
      _$CatLookupModelFromJson(json);

  Map<String, dynamic> toJson() => _$CatLookupModelToJson(this);

  final bool techemetFoundNoResults;
  final bool success;
  final TechCatDataModel? data;
}
