import 'package:emr_one_stock_take/models/stock_take_location_print_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'stock_take_print_model.g.dart';

@JsonSerializable()
class StockTakePrintModel {
  StockTakePrintModel({
    required this.name,
    required this.yardCode,
    required this.snapshotTaken,
    required this.stockTakeLocations,
  });

  factory StockTakePrintModel.fromJson(Map<String, dynamic> json) =>
      _$StockTakePrintModelFromJson(json);
  String name;
  String yardCode;
  String? snapshotTaken;
  List<StockTakeLocationPrintModel> stockTakeLocations;

  Map<String, dynamic> toJson() => _$StockTakePrintModelToJson(this);
}
