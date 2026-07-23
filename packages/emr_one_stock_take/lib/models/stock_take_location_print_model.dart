import 'package:json_annotation/json_annotation.dart';

part 'stock_take_location_print_model.g.dart';

@JsonSerializable()
class StockTakeLocationPrintModel {
  StockTakeLocationPrintModel(
      {required this.productClass,
      required this.productLine,
      required this.location,
      required this.product,
      this.stockTakeWeight,
      this.uom,
      this.weighedBy,
      this.weighedDate,
      this.weighedTime,});

  factory StockTakeLocationPrintModel.fromJson(Map<String, dynamic> json) =>
      _$StockTakeLocationPrintModelFromJson(json);
  String productClass;
  String productLine;
  String location;
  String product;
  String? stockTakeWeight;
  String? uom;
  String? weighedBy;
  String? weighedDate;
  String? weighedTime;

  Map<String, dynamic> toJson() => _$StockTakeLocationPrintModelToJson(this);
}
