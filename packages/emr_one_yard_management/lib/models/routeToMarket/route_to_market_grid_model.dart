import 'package:emr_one_yard_management/models/routeToMarket/change_history_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'route_to_market_grid_model.g.dart';

@JsonSerializable()
class RouteToMarketGridModel {
  RouteToMarketGridModel({
    required this.id,
    required this.createdBy,
    required this.createdDate,
    required this.active,
    this.depotNo,
    this.grade,
    this.route,
    this.modifiedDate,
    this.effectiveDate,
    this.modifiedBy,
    this.changeHistories,
  });

  factory RouteToMarketGridModel.fromJson(Map<String, dynamic> json) =>
      _$RouteToMarketGridModelFromJson(json);

  int id;
  String? depotNo;
  String? grade;
  String? route;
  DateTime createdDate;
  DateTime? modifiedDate;
  DateTime? effectiveDate;
  String createdBy;
  String? modifiedBy;
  bool active;
  List<ChangeHistoryModel>? changeHistories;
  Map<String, dynamic> toJson() => _$RouteToMarketGridModelToJson(this);
}
