import 'package:json_annotation/json_annotation.dart';
import 'package:psnop/models/depot_position_table/grand_total_model.dart';
import 'package:psnop/models/depot_position_table/regional_position_model.dart';

part 'depot_position_response_model.g.dart';

@JsonSerializable()
class DepotPositionResponseModel {
  DepotPositionResponseModel({
    required this.grandTotal,
    required this.regionPositionModels,
  });

  factory DepotPositionResponseModel.empty() => DepotPositionResponseModel(
        grandTotal: GrandTotalModel.empty(),
        regionPositionModels: [],
      );

  /// Connect the generated [_$DepotPositionResponseModelFromJson] function
  /// to the `fromJson` factory.
  factory DepotPositionResponseModel.fromJson(Map<String, dynamic> json) =>
      _$DepotPositionResponseModelFromJson(json);

  /// Connect the generated [_$DepotPositionResponseModelToJson] function
  /// to the `toJson` method.
  Map<String, dynamic> toJson() => _$DepotPositionResponseModelToJson(this);

  GrandTotalModel grandTotal;
  List<RegionPositionModel> regionPositionModels;
}
