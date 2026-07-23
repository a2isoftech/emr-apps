// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grade_grouped_total_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GradeGroupedTotalModel _$GradeGroupedTotalModelFromJson(
        Map<String, dynamic> json) =>
    GradeGroupedTotalModel(
      gradeGroup: json['gradeGroup'] as String,
      gradeGroupTerritoryName: json['gradeGroupTerritoryName'] as String,
      currentHeapWeight: (json['currentHeapWeight'] as num).toDouble(),
      inwardUnpricedWeight: (json['inwardUnpricedWeight'] as num).toDouble(),
      outwardUnpricedWeight: (json['outwardUnpricedWeight'] as num).toDouble(),
      currentStockTotal: (json['currentStockTotal'] as num).toDouble(),
      confirmedInterDepotInward:
          (json['confirmedInterDepotInward'] as num).toDouble(),
      purchaseForecastWeight:
          (json['purchaseForecastWeight'] as num).toDouble(),
      interDepotReceiptWeight:
          (json['interDepotReceiptWeight'] as num).toDouble(),
      fixedPurchaseContractsWeight:
          (json['fixedPurchaseContractsWeight'] as num).toDouble(),
      requestsWeight: (json['requestsWeight'] as num).toDouble(),
      directSalesTotalWeight:
          (json['directSalesTotalWeight'] as num).toDouble(),
      directSalesApprovedWeight:
          (json['directSalesApprovedWeight'] as num).toDouble(),
      directSalesToBookWeight:
          (json['directSalesToBookWeight'] as num).toDouble(),
      directSalesAwaitingTransportWeight:
          (json['directSalesAwaitingTransportWeight'] as num).toDouble(),
      directSalesTotalConfirmedWeight:
          (json['directSalesTotalConfirmedWeight'] as num).toDouble(),
      instructionsToMoveTotalWeight:
          (json['instructionsToMoveTotalWeight'] as num).toDouble(),
      instructionsToMoveApprovedWeight:
          (json['instructionsToMoveApprovedWeight'] as num).toDouble(),
      instructionsToMoveToBookWeight:
          (json['instructionsToMoveToBookWeight'] as num).toDouble(),
      instructionsToMoveAwaitingTransportWeight:
          (json['instructionsToMoveAwaitingTransportWeight'] as num).toDouble(),
      instructionsToMoveConfirmedWeight:
          (json['instructionsToMoveConfirmedWeight'] as num).toDouble(),
      standardFlowBalance: (json['standardFlowBalance'] as num).toDouble(),
      standardFlowApprovedWeight:
          (json['standardFlowApprovedWeight'] as num).toDouble(),
      standardFlowToBookWeight:
          (json['standardFlowToBookWeight'] as num).toDouble(),
      standardFlowAwaitingTransportWeight:
          (json['standardFlowAwaitingTransportWeight'] as num).toDouble(),
      standardFlowConfirmedWeight:
          (json['standardFlowConfirmedWeight'] as num).toDouble(),
      movementsTotalWeight: (json['movementsTotalWeight'] as num).toDouble(),
      movementsApprovedWeight:
          (json['movementsApprovedWeight'] as num).toDouble(),
      movementsToBookWeight: (json['movementsToBookWeight'] as num).toDouble(),
      movementsAwaitingTransportWeight:
          (json['movementsAwaitingTransportWeight'] as num).toDouble(),
      movementsTotalConfirmedWeight:
          (json['movementsTotalConfirmedWeight'] as num).toDouble(),
      netPosition1Weight: (json['netPosition1Weight'] as num).toDouble(),
      netPosition2Weight: (json['netPosition2Weight'] as num).toDouble(),
    );

Map<String, dynamic> _$GradeGroupedTotalModelToJson(
        GradeGroupedTotalModel instance) =>
    <String, dynamic>{
      'currentHeapWeight': instance.currentHeapWeight,
      'inwardUnpricedWeight': instance.inwardUnpricedWeight,
      'outwardUnpricedWeight': instance.outwardUnpricedWeight,
      'currentStockTotal': instance.currentStockTotal,
      'confirmedInterDepotInward': instance.confirmedInterDepotInward,
      'purchaseForecastWeight': instance.purchaseForecastWeight,
      'interDepotReceiptWeight': instance.interDepotReceiptWeight,
      'fixedPurchaseContractsWeight': instance.fixedPurchaseContractsWeight,
      'requestsWeight': instance.requestsWeight,
      'directSalesTotalWeight': instance.directSalesTotalWeight,
      'directSalesApprovedWeight': instance.directSalesApprovedWeight,
      'directSalesToBookWeight': instance.directSalesToBookWeight,
      'directSalesAwaitingTransportWeight':
          instance.directSalesAwaitingTransportWeight,
      'directSalesTotalConfirmedWeight':
          instance.directSalesTotalConfirmedWeight,
      'instructionsToMoveTotalWeight': instance.instructionsToMoveTotalWeight,
      'instructionsToMoveApprovedWeight':
          instance.instructionsToMoveApprovedWeight,
      'instructionsToMoveToBookWeight': instance.instructionsToMoveToBookWeight,
      'instructionsToMoveAwaitingTransportWeight':
          instance.instructionsToMoveAwaitingTransportWeight,
      'instructionsToMoveConfirmedWeight':
          instance.instructionsToMoveConfirmedWeight,
      'standardFlowBalance': instance.standardFlowBalance,
      'standardFlowApprovedWeight': instance.standardFlowApprovedWeight,
      'standardFlowToBookWeight': instance.standardFlowToBookWeight,
      'standardFlowAwaitingTransportWeight':
          instance.standardFlowAwaitingTransportWeight,
      'standardFlowConfirmedWeight': instance.standardFlowConfirmedWeight,
      'movementsTotalWeight': instance.movementsTotalWeight,
      'movementsApprovedWeight': instance.movementsApprovedWeight,
      'movementsToBookWeight': instance.movementsToBookWeight,
      'movementsAwaitingTransportWeight':
          instance.movementsAwaitingTransportWeight,
      'movementsTotalConfirmedWeight': instance.movementsTotalConfirmedWeight,
      'netPosition1Weight': instance.netPosition1Weight,
      'netPosition2Weight': instance.netPosition2Weight,
      'gradeGroup': instance.gradeGroup,
      'gradeGroupTerritoryName': instance.gradeGroupTerritoryName,
    };
