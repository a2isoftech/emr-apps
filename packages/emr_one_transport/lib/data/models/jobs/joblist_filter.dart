import 'package:emr_one_transport/data/models/common/date_range_value.dart';
import 'package:json_annotation/json_annotation.dart';

part 'joblist_filter.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class JoblistFilter {
  JoblistFilter({
    this.fromTo,
    this.dateRange,
    this.jobTypes,
    this.jobStatuses,
    this.containerTpes,
    this.trailerTypes,
    this.startLocations,
    this.endLocation,
    this.actionLocations,
    this.yardCodes,
    this.hasJobContainerImages,
    this.haulierCodes,
    this.jobSources,
    this.products,
    this.productFamilies,
  });

  factory JoblistFilter.fromJson(Map<String, dynamic> json) =>
      _$JoblistFilterFromJson(json);

  Map<String, dynamic> toJson() => _$JoblistFilterToJson(this);

  String? fromTo;
  DateRangeValue? dateRange;
  List<String>? jobTypes;
  List<String>? jobStatuses;
  List<String>? containerTpes;
  List<String>? trailerTypes;
  List<String>? startLocations;
  List<String>? endLocation;
  List<String>? actionLocations;
  List<String>? yardCodes;
  List<String>? hasJobContainerImages;
  List<String>? haulierCodes;
  List<String>? jobSources;
  List<String>? productFamilies;
  List<String>? products;
}
