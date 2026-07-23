import 'package:json_annotation/json_annotation.dart';

part 'route_to_market_model.g.dart';

@JsonSerializable()
class RouteToMarketModel {
  RouteToMarketModel({
    this.originDepot,
    this.destinationDepot,
    this.grade,
    this.numberOfLoads,
    this.weightPerLoad,
    this.movementDate,
    this.comments,
  });

  factory RouteToMarketModel.empty() => RouteToMarketModel();

  /// Connect the generated [_$RouteToMarketModelFromJson] function
  /// to the `fromJson`factory.
  factory RouteToMarketModel.fromJson(Map<String, dynamic> json) =>
      _$RouteToMarketModelFromJson(json);

  /// Connect the generated [_$RouteToMarketModelToJson] function
  /// to the `toJson` method.
  Map<String, dynamic> toJson() => _$RouteToMarketModelToJson(this);

  String? originDepot;
  String? destinationDepot;
  String? grade;
  int? numberOfLoads;
  double? weightPerLoad;
  DateTime? movementDate;
  String? comments;
}
