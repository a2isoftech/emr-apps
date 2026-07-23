// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_asset_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateAssetInput _$CreateAssetInputFromJson(Map<String, dynamic> json) =>
    CreateAssetInput(
      active: json['active'] as bool? ?? true,
      approved: json['approved'] as bool? ?? false,
      parentAssetId: json['parentAssetId'] as String?,
      assetTemplate: json['assetTemplate'] as String?,
      assetType: json['assetType'] as String?,
      category: json['category'] as String?,
      code: json['code'] as String?,
      name: json['name'] as String?,
      make: json['make'] as String?,
      model: json['model'] as String?,
      serialNumber: json['serialNumber'] as String?,
      depotNo: json['depotNo'] as String?,
      functionalLocationCode: json['functionalLocationCode'] as String?,
      transferToDepotNo: json['transferToDepotNo'] as String?,
      transferToDepotNoEffectiveFrom: json['transferToDepotNoEffectiveFrom'] ==
              null
          ? null
          : DateTime.parse(json['transferToDepotNoEffectiveFrom'] as String),
      transferToDepotNoAssetApprovalId:
          (json['transferToDepotNoAssetApprovalId'] as num?)?.toInt(),
      latitude: (json['latitude'] as num?)?.toDouble() ?? 0,
      longitude: (json['longitude'] as num?)?.toDouble() ?? 0,
      templateId: json['templateId'] as String?,
      dateOfAcquisition: json['dateOfAcquisition'] == null
          ? null
          : DateTime.parse(json['dateOfAcquisition'] as String),
      dateOfDisposal: json['dateOfDisposal'] == null
          ? null
          : DateTime.parse(json['dateOfDisposal'] as String),
      farLeasedExpensed: json['farLeasedExpensed'] as String?,
      yearOfManufacture: (json['yearOfManufacture'] as num?)?.toInt(),
      condition: json['condition'] as String?,
      status: json['status'] as String?,
      disposalStatus: json['disposalStatus'] as String?,
      disposalEffectiveFrom: json['disposalEffectiveFrom'] == null
          ? null
          : DateTime.parse(json['disposalEffectiveFrom'] as String),
      disposalApprovalId: (json['disposalApprovalId'] as num?)?.toInt(),
      statutoryInspection: json['statutoryInspection'] as bool? ?? false,
      salesInvoiceNo: json['salesInvoiceNo'] as String?,
      assetProperties: (json['assetProperties'] as List<dynamic>?)
          ?.map((e) => AssetProperty.fromJson(e as Map<String, dynamic>))
          .toList(),
      assetCounters: (json['assetCounters'] as List<dynamic>?)
          ?.map((e) => AssetCounter.fromJson(e as Map<String, dynamic>))
          .toList(),
      assetImages: (json['assetImages'] as List<dynamic>?)
          ?.map((e) => AssetImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      permittedHours: (json['permittedHours'] as List<dynamic>?)
          ?.map((e) => HourResult.fromJson(e as Map<String, dynamic>))
          .toList(),
      shiftHours: (json['shiftHours'] as List<dynamic>?)
          ?.map((e) => HourResult.fromJson(e as Map<String, dynamic>))
          .toList(),
      parentAssetCodes: (json['parentAssetCodes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      hasSubAssets: json['hasSubAssets'] as bool?,
      codaAnalysisCode: json['codaAnalysisCode'] as String?,
      assetHierarchyId: json['assetHierarchyId'] as String?,
      displayName: json['displayName'] as String?,
      needsReview: json['needsReview'] == null
          ? null
          : DateTime.parse(json['needsReview'] as String),
      lastReviewed: json['lastReviewed'] == null
          ? null
          : DateTime.parse(json['lastReviewed'] as String),
      lastReviewedBy: json['lastReviewedBy'] as String?,
      lastAudited: json['lastAudited'] == null
          ? null
          : DateTime.parse(json['lastAudited'] as String),
      lastAuditedBy: json['lastAuditedBy'] as String?,
      lastStatutoryInspectionDate:
          json['lastStatutoryInspectionDate'] as String?,
      statutoryInspectionIntervalMonths:
          json['statutoryInspectionIntervalMonths'] as String?,
      id: json['id'] as String?,
      markerColour: json['markerColour'] as String?,
      isReviewed: json['isReviewed'] as bool? ?? false,
      isAudited: json['isAudited'] as bool? ?? false,
    )..syncTarget = (json['syncTarget'] as List<dynamic>?)
        ?.map(
            (e) => AssetTemplateSyncTarget.fromJson(e as Map<String, dynamic>))
        .toList();

Map<String, dynamic> _$CreateAssetInputToJson(CreateAssetInput instance) =>
    <String, dynamic>{
      'active': instance.active,
      'approved': instance.approved,
      'parentAssetId': instance.parentAssetId,
      'category': instance.category,
      'assetTemplate': instance.assetTemplate,
      'assetType': instance.assetType,
      'code': instance.code,
      'name': instance.name,
      'make': instance.make,
      'model': instance.model,
      'serialNumber': instance.serialNumber,
      'depotNo': instance.depotNo,
      'functionalLocationCode': instance.functionalLocationCode,
      'transferToDepotNo': instance.transferToDepotNo,
      'transferToDepotNoEffectiveFrom':
          instance.transferToDepotNoEffectiveFrom?.toIso8601String(),
      'transferToDepotNoAssetApprovalId':
          instance.transferToDepotNoAssetApprovalId,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'templateId': instance.templateId,
      'dateOfAcquisition': instance.dateOfAcquisition?.toIso8601String(),
      'dateOfDisposal': instance.dateOfDisposal?.toIso8601String(),
      'farLeasedExpensed': instance.farLeasedExpensed,
      'yearOfManufacture': instance.yearOfManufacture,
      'condition': instance.condition,
      'status': instance.status,
      'disposalStatus': instance.disposalStatus,
      'disposalEffectiveFrom':
          instance.disposalEffectiveFrom?.toIso8601String(),
      'disposalApprovalId': instance.disposalApprovalId,
      'statutoryInspection': instance.statutoryInspection,
      'salesInvoiceNo': instance.salesInvoiceNo,
      'assetProperties':
          instance.assetProperties?.map((e) => e.toJson()).toList(),
      'assetCounters': instance.assetCounters?.map((e) => e.toJson()).toList(),
      'assetImages': instance.assetImages?.map((e) => e.toJson()).toList(),
      'permittedHours':
          instance.permittedHours?.map((e) => e.toJson()).toList(),
      'shiftHours': instance.shiftHours?.map((e) => e.toJson()).toList(),
      'parentAssetCodes': instance.parentAssetCodes,
      'syncTarget': instance.syncTarget?.map((e) => e.toJson()).toList(),
      'hasSubAssets': instance.hasSubAssets,
      'codaAnalysisCode': instance.codaAnalysisCode,
      'assetHierarchyId': instance.assetHierarchyId,
      'displayName': instance.displayName,
      'needsReview': instance.needsReview?.toIso8601String(),
      'lastReviewed': instance.lastReviewed?.toIso8601String(),
      'lastReviewedBy': instance.lastReviewedBy,
      'lastAudited': instance.lastAudited?.toIso8601String(),
      'lastAuditedBy': instance.lastAuditedBy,
      'lastStatutoryInspectionDate': instance.lastStatutoryInspectionDate,
      'statutoryInspectionIntervalMonths':
          instance.statutoryInspectionIntervalMonths,
      'id': instance.id,
      'markerColour': instance.markerColour,
      'isReviewed': instance.isReviewed,
      'isAudited': instance.isAudited,
    };

HourResult _$HourResultFromJson(Map<String, dynamic> json) => HourResult(
      key: json['key'] as String?,
      value: StartAndEndTime.fromJson(json['value'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HourResultToJson(HourResult instance) =>
    <String, dynamic>{
      'key': instance.key,
      'value': instance.value.toJson(),
    };
