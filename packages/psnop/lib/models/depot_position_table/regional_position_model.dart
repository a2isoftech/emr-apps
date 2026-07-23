import 'package:json_annotation/json_annotation.dart';
import 'package:psnop/models/depot_position_table/depot_position_summary_model.dart';
import 'package:psnop/models/depot_position_table/region_grouped_total_model.dart';

part 'regional_position_model.g.dart';

@JsonSerializable()
class RegionPositionModel {
  RegionPositionModel({
    required this.regionTotal,
    required this.depotPositionSummary,
  });

  /// Connect the generated [_$RegionPositionModelFromJson] function to the
  /// `fromJson` factory.
  factory RegionPositionModel.fromJson(Map<String, dynamic> json) =>
      _$RegionPositionModelFromJson(json);

  /// Connect the generated [_$RegionPositionModelToJson] function to the
  /// `toJson` method.
  Map<String, dynamic> toJson() => _$RegionPositionModelToJson(this);

  RegionGroupedTotalModel regionTotal;
  List<DepotPositionSummaryModel> depotPositionSummary;

  // extensions for UI
  @JsonKey(includeFromJson: false, includeToJson: false)
  bool expanded = false;
}
