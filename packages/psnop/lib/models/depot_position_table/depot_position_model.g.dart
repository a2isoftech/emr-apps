// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'depot_position_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DepotPositionModel _$DepotPositionModelFromJson(Map<String, dynamic> json) =>
    DepotPositionModel(
      depotNo: json['depotNo'] as String,
      yardCode: json['yardCode'] as String,
      heapNo: (json['heapNo'] as num).toInt(),
      heapShortName: json['heapShortName'] as String,
      grade: json['grade'] as String,
      gradeGroup: json['gradeGroup'] as String,
      gradeGroupTerritoryName: json['gradeGroupTerritoryName'] as String,
      createdDate: DateTime.parse(json['createdDate'] as String),
      createdBy: json['createdBy'] as String,
      modifiedDate: DateTime.parse(json['modifiedDate'] as String),
      modifiedBy: json['modifiedBy'] as String,
      active: json['active'] as bool,
      standardFlowRoute: json['standardFlowRoute'] as String?,
      currentHeapWeight: (json['currentHeapWeight'] as num).toDouble(),
      currentHeapWeightRate: (json['currentHeapWeightRate'] as num).toDouble(),
      currentHeapWeightValue:
          (json['currentHeapWeightValue'] as num).toDouble(),
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
    )..depotPositions = (json['depotPositions'] as List<dynamic>?)
        ?.map((e) => DepotPositionModel.fromJson(e as Map<String, dynamic>))
        .toList();

Map<String, dynamic> _$DepotPositionModelToJson(DepotPositionModel instance) =>
    <String, dynamic>{
      'depotNo': instance.depotNo,
      'yardCode': instance.yardCode,
      'heapNo': instance.heapNo,
      'heapShortName': instance.heapShortName,
      'grade': instance.grade,
      'gradeGroup': instance.gradeGroup,
      'gradeGroupTerritoryName': instance.gradeGroupTerritoryName,
      'createdDate': instance.createdDate.toIso8601String(),
      'createdBy': instance.createdBy,
      'modifiedDate': instance.modifiedDate.toIso8601String(),
      'modifiedBy': instance.modifiedBy,
      'active': instance.active,
      'standardFlowRoute': instance.standardFlowRoute,
      'currentHeapWeight': instance.currentHeapWeight,
      'currentHeapWeightRate': instance.currentHeapWeightRate,
      'currentHeapWeightValue': instance.currentHeapWeightValue,
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
      'depotPositions': instance.depotPositions,
    };
