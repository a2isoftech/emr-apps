import 'package:json_annotation/json_annotation.dart';
import 'package:psnop/models/depot_position_table/grand_total_model.dart';

part 'depot_grouped_total_model.g.dart';

@JsonSerializable()
class DepotGroupedTotalModel extends GrandTotalModel {
  DepotGroupedTotalModel({
    required this.depotNo,
    required this.yardCode,
    required super.currentHeapWeight,
    required super.inwardUnpricedWeight,
    required super.outwardUnpricedWeight,
    required super.currentStockTotal,
    required super.confirmedInterDepotInward,
    required super.purchaseForecastWeight,
    required super.interDepotReceiptWeight,
    required super.fixedPurchaseContractsWeight,
    required super.requestsWeight,
    required super.directSalesTotalWeight,
    required super.directSalesApprovedWeight,
    required super.directSalesToBookWeight,
    required super.directSalesAwaitingTransportWeight,
    required super.directSalesTotalConfirmedWeight,
    required super.instructionsToMoveTotalWeight,
    required super.instructionsToMoveApprovedWeight,
    required super.instructionsToMoveToBookWeight,
    required super.instructionsToMoveAwaitingTransportWeight,
    required super.instructionsToMoveConfirmedWeight,
    required super.standardFlowBalance,
    required super.standardFlowApprovedWeight,
    required super.standardFlowToBookWeight,
    required super.standardFlowAwaitingTransportWeight,
    required super.standardFlowConfirmedWeight,
    required super.movementsTotalWeight,
    required super.movementsApprovedWeight,
    required super.movementsToBookWeight,
    required super.movementsAwaitingTransportWeight,
    required super.movementsTotalConfirmedWeight,
    required super.netPosition1Weight,
    required super.netPosition2Weight,
  });

  /// Connect the generated [_$DepotGroupedTotalModelFromJson] function to the
  /// `fromJson` factory.
  factory DepotGroupedTotalModel.fromJson(Map<String, dynamic> json) =>
      _$DepotGroupedTotalModelFromJson(json);

  /// Connect the generated [_$DepotGroupedTotalModelToJson] function to the
  /// `toJson` method.
  @override
  Map<String, dynamic> toJson() => _$DepotGroupedTotalModelToJson(this);

  String depotNo;
  String yardCode;
}
