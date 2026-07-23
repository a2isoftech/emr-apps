import 'package:json_annotation/json_annotation.dart';

part 'depot_position_model.g.dart';

@JsonSerializable()
class DepotPositionModel {
  DepotPositionModel({
    required this.depotNo,
    required this.yardCode,
    required this.heapNo,
    required this.heapShortName,
    required this.grade,
    required this.gradeGroup,
    required this.gradeGroupTerritoryName,
    required this.createdDate,
    required this.createdBy,
    required this.modifiedDate,
    required this.modifiedBy,
    required this.active,
    required this.standardFlowRoute,
    required this.currentHeapWeight,
    required this.currentHeapWeightRate,
    required this.currentHeapWeightValue,
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

  /// Connect the generated [_$DepotPositionModelFromJson] function to the
  /// `fromJson` factory.
  factory DepotPositionModel.fromJson(Map<String, dynamic> json) =>
      _$DepotPositionModelFromJson(json);

  /// Connect the generated [_$DepotPositionModelToJson] function to the
  /// `toJson` method.
  Map<String, dynamic> toJson() => _$DepotPositionModelToJson(this);

  String depotNo;
  String yardCode;
  int heapNo;
  String heapShortName;
  String grade;
  String gradeGroup;
  String gradeGroupTerritoryName;
  DateTime createdDate;
  String createdBy;
  DateTime modifiedDate;
  String modifiedBy;
  bool active;
  String? standardFlowRoute;
  double currentHeapWeight;
  double currentHeapWeightRate;
  double currentHeapWeightValue;
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
  List<DepotPositionModel>? depotPositions;

  // extensions for UI
  @JsonKey(includeFromJson: false, includeToJson: false)
  bool expanded = false;
}
