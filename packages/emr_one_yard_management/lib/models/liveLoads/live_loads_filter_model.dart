import 'package:emr_one_yard_management/models/liveLoads/live_loads_search_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'live_loads_filter_model.g.dart';

@JsonSerializable()
class LiveLoadsFilterModel {
  LiveLoadsFilterModel({required this.search});

  factory LiveLoadsFilterModel.fromJson(Map<String, dynamic> json) =>
      _$LiveLoadsFilterModelFromJson(json);

  LiveLoadsSearchModel? search;

  Map<String, dynamic> toJson() => _$LiveLoadsFilterModelToJson(this);
}
