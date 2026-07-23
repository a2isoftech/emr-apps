import 'package:emr_one_transport/data/models/common/date_range_value.dart';
import 'package:json_annotation/json_annotation.dart';

part 'plan_filter.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class PlanFilter {
  PlanFilter({
    this.fromTo,
    this.dateRange,
    this.jobTypes,
    this.planTypes,
    this.containerTypes,
    this.startLocations,
    this.endLocation,
    this.actionLocations,
    this.yardCodes,
    this.haulierCodes,
    this.productFamilies,
    this.products,
    this.jobStatuses,
  });

  factory PlanFilter.fromJson(Map<String, dynamic> json) =>
      _$PlanFilterFromJson(json);

  Map<String, dynamic> toJson() => _$PlanFilterToJson(this);

  String? fromTo;
  DateRangeValue? dateRange;
  List<String>? jobTypes;
  List<String>? planTypes;
  List<String>? containerTypes;
  List<String>? startLocations;
  List<String>? endLocation;
  List<String>? actionLocations;
  List<String>? yardCodes;
  List<String>? haulierCodes;
  List<String>? productFamilies;
  List<String>? products;
  List<String>? jobStatuses;
}
