// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_line.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketLine _$TicketLineFromJson(Map<String, dynamic> json) =>
    TicketLine(
        isActive: json['isActive'] as bool? ?? true,
        deductions:
            (json['deductions'] as List<dynamic>?)
                ?.map((e) => Deduction.fromJson(e as Map<String, dynamic>))
                .toList() ??
            const [],
        mediaAssets:
            (json['mediaAssets'] as List<dynamic>?)
                ?.map(
                  (e) =>
                      InventoryMediaAsset.fromJson(e as Map<String, dynamic>),
                )
                .toList() ??
            const [],
        totalCostImpact: (json['totalCostImpact'] as num?)?.toDouble() ?? 0,
        extendedProperties:
            json['extendedProperties'] as Map<String, dynamic>? ?? const {},
        price: (json['price'] as num?)?.toDouble() ?? 0,
        provPrice: (json['provPrice'] as num?)?.toDouble() ?? 0,
        confPrice: (json['confPrice'] as num?)?.toDouble() ?? 0,
        elvQuoteIds:
            (json['elvQuoteIds'] as List<dynamic>?)
                ?.map((e) => e as String)
                .toList() ??
            const [],
      )
      ..lineNumber = (json['lineNumber'] as num?)?.toInt()
      ..productId = json['productId'] as String?
      ..stockAsProductId = json['stockAsProductId'] as String?
      ..locationId = json['locationId'] as String?
      ..weightSerial = json['weightSerial'] as String?
      ..grossWeight = json['grossWeight'] == null
          ? null
          : UomValue.fromJson(json['grossWeight'] as Map<String, dynamic>)
      ..netWeight = json['netWeight'] == null
          ? null
          : UomValue.fromJson(json['netWeight'] as Map<String, dynamic>)
      ..rate = json['rate'] == null
          ? null
          : UomValue.fromJson(json['rate'] as Map<String, dynamic>)
      ..contractId = json['contractId'] as String?
      ..binNo = json['binNo'] as String?
      ..sealNo = json['sealNo'] as String?
      ..consignmentNoteNo = json['consignmentNoteNo'] as String?
      ..totalTareWeight = json['totalTareWeight'] == null
          ? null
          : UomValue.fromJson(json['totalTareWeight'] as Map<String, dynamic>)
      ..totalDirtDeduction = json['totalDirtDeduction'] == null
          ? null
          : UomValue.fromJson(
              json['totalDirtDeduction'] as Map<String, dynamic>,
            )
      ..totalCostDeduction = (json['totalCostDeduction'] as num?)?.toDouble()
      ..inspectionDetails = json['inspectionDetails'] == null
          ? null
          : InspectionDetails.fromJson(
              json['inspectionDetails'] as Map<String, dynamic>,
            )
      ..scaleIdentifier = json['scaleIdentifier'] as String?
      ..created = json['created'] == null
          ? null
          : Created.fromJson(json['created'] as Map<String, dynamic>)
      ..archivedDate = json['archivedDate'] == null
          ? null
          : DateTime.parse(json['archivedDate'] as String)
      ..manualGrossWeightReason = json['manualGrossWeightReason'] as String?
      ..isGrossFromPreviousWeight = json['isGrossFromPreviousWeight'] as bool
      ..hasSeenZero = json['hasSeenZero'] as bool;

Map<String, dynamic> _$TicketLineToJson(TicketLine instance) =>
    <String, dynamic>{
      'lineNumber': instance.lineNumber,
      'productId': instance.productId,
      'stockAsProductId': instance.stockAsProductId,
      'locationId': instance.locationId,
      'weightSerial': instance.weightSerial,
      'grossWeight': instance.grossWeight,
      'netWeight': instance.netWeight,
      'rate': instance.rate,
      'deductions': instance.deductions,
      'mediaAssets': instance.mediaAssets,
      'totalCostImpact': instance.totalCostImpact,
      'extendedProperties': instance.extendedProperties,
      'elvQuoteIds': instance.elvQuoteIds,
      'isActive': instance.isActive,
      'contractId': instance.contractId,
      'binNo': instance.binNo,
      'sealNo': instance.sealNo,
      'consignmentNoteNo': instance.consignmentNoteNo,
      'provPrice': instance.provPrice,
      'confPrice': instance.confPrice,
      'price': instance.price,
      'totalTareWeight': instance.totalTareWeight,
      'totalDirtDeduction': instance.totalDirtDeduction,
      'totalCostDeduction': instance.totalCostDeduction,
      'inspectionDetails': instance.inspectionDetails,
      'scaleIdentifier': instance.scaleIdentifier,
      'created': instance.created,
      'archivedDate': instance.archivedDate?.toIso8601String(),
      'manualGrossWeightReason': instance.manualGrossWeightReason,
      'isGrossFromPreviousWeight': instance.isGrossFromPreviousWeight,
      'hasSeenZero': instance.hasSeenZero,
    };
