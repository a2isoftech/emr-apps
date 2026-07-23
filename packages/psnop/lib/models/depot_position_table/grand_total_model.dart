import 'package:json_annotation/json_annotation.dart';

part 'grand_total_model.g.dart';

@JsonSerializable()
class GrandTotalModel {
  GrandTotalModel({
    required this.currentHeapWeight,
    required this.inwardUnpricedWeight,
    required this.outwardUnpricedWeight,
    required this.currentStockTotal,
    required this.confirmedInterDepotInward,
    required this.purchaseForecastWeight,
    required this.interDepotReceiptWeight,
    required this.fixedPurchaseContractsWeight,
    required this.requestsWeight,
    required this.directSalesTotalWeight,
    required this.directSalesApprovedWeight,
    required this.directSalesToBookWeight,
    required this.directSalesAwaitingTransportWeight,
    required this.directSalesTotalConfirmedWeight,
    required this.instructionsToMoveTotalWeight,
    required this.instructionsToMoveApprovedWeight,
    required this.instructionsToMoveToBookWeight,
    required this.instructionsToMoveAwaitingTransportWeight,
    required this.instructionsToMoveConfirmedWeight,
    required this.standardFlowBalance,
    required this.standardFlowApprovedWeight,
    required this.standardFlowToBookWeight,
    required this.standardFlowAwaitingTransportWeight,
    required this.standardFlowConfirmedWeight,
    required this.movementsTotalWeight,
    required this.movementsApprovedWeight,
    required this.movementsToBookWeight,
    required this.movementsAwaitingTransportWeight,
    required this.movementsTotalConfirmedWeight,
    required this.netPosition1Weight,
    required this.netPosition2Weight,
  });

  factory GrandTotalModel.empty() => GrandTotalModel(
        currentHeapWeight: 0,
        inwardUnpricedWeight: 0,
        outwardUnpricedWeight: 0,
        currentStockTotal: 0,
        confirmedInterDepotInward: 0,
        purchaseForecastWeight: 0,
        interDepotReceiptWeight: 0,
        fixedPurchaseContractsWeight: 0,
        requestsWeight: 0,
        directSalesTotalWeight: 0,
        directSalesApprovedWeight: 0,
        directSalesToBookWeight: 0,
        directSalesAwaitingTransportWeight: 0,
        directSalesTotalConfirmedWeight: 0,
        instructionsToMoveTotalWeight: 0,
        instructionsToMoveApprovedWeight: 0,
        instructionsToMoveToBookWeight: 0,
        instructionsToMoveAwaitingTransportWeight: 0,
        instructionsToMoveConfirmedWeight: 0,
        standardFlowBalance: 0,
        standardFlowApprovedWeight: 0,
        standardFlowToBookWeight: 0,
        standardFlowAwaitingTransportWeight: 0,
        standardFlowConfirmedWeight: 0,
        movementsTotalWeight: 0,
        movementsApprovedWeight: 0,
        movementsToBookWeight: 0,
        movementsAwaitingTransportWeight: 0,
        movementsTotalConfirmedWeight: 0,
        netPosition1Weight: 0,
        netPosition2Weight: 0,
      );

  /// Connect the generated [_$GrandTotalModelFromJson] function to the
  /// `fromJson` factory.
  factory GrandTotalModel.fromJson(Map<String, dynamic> json) =>
      _$GrandTotalModelFromJson(json);

  /// Connect the generated [_$GrandTotalModelToJson] function to the
  /// `toJson` method.
  Map<String, dynamic> toJson() => _$GrandTotalModelToJson(this);
  double currentHeapWeight;
  double inwardUnpricedWeight;
  double outwardUnpricedWeight;
  double currentStockTotal;
  double confirmedInterDepotInward;
  double purchaseForecastWeight;
  double interDepotReceiptWeight;
  double fixedPurchaseContractsWeight;
  double requestsWeight;
  double directSalesTotalWeight;
  double directSalesApprovedWeight;
  double directSalesToBookWeight;
  double directSalesAwaitingTransportWeight;
  double directSalesTotalConfirmedWeight;
  double instructionsToMoveTotalWeight;
  double instructionsToMoveApprovedWeight;
  double instructionsToMoveToBookWeight;
  double instructionsToMoveAwaitingTransportWeight;
  double instructionsToMoveConfirmedWeight;
  double standardFlowBalance;
  double standardFlowApprovedWeight;
  double standardFlowToBookWeight;
  double standardFlowAwaitingTransportWeight;
  double standardFlowConfirmedWeight;
  double movementsTotalWeight;
  double movementsApprovedWeight;
  double movementsToBookWeight;
  double movementsAwaitingTransportWeight;
  double movementsTotalConfirmedWeight;
  double netPosition1Weight;
  double netPosition2Weight;
}
