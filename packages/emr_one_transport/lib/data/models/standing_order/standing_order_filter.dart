import 'package:emr_one_transport/data/models/common/date_range_value.dart';
import 'package:json_annotation/json_annotation.dart';

part 'standing_order_filter.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class StandingOrderFilter {
  StandingOrderFilter({
    this.dateRange,
    this.status,
    this.jobTypes,
    this.containerTpes,
    this.trailerTypes,
    this.startLocations,
    this.endLocation,
    this.actionLocations,
    this.yardCodes,
  });

  factory StandingOrderFilter.fromJson(Map<String, dynamic> json) =>
      _$StandingOrderFilterFromJson(json);

  Map<String, dynamic> toJson() => _$StandingOrderFilterToJson(this);

  DateRangeValue? dateRange;
  List<String>? status;
  List<String>? jobTypes;
  List<String>? containerTpes;
  List<String>? trailerTypes;
  List<String>? startLocations;
  List<String>? endLocation;
  List<String>? actionLocations;
  List<String>? yardCodes;
}
