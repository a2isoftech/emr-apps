// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Asset _$AssetFromJson(Map<String, dynamic> json) => Asset(
      active: json['active'] as bool?,
      approved: json['approved'] as bool?,
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
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
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
      statutoryInspection: json['statutoryInspection'] as bool?,
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
      permittedHours: (json['permittedHours'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, StartAndEndTime.fromJson(e as Map<String, dynamic>)),
      ),
      shiftHours: (json['shiftHours'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, StartAndEndTime.fromJson(e as Map<String, dynamic>)),
      ),
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
    );

Map<String, dynamic> _$AssetToJson(Asset instance) => <String, dynamic>{
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
      'assetProperties': instance.assetProperties,
      'assetCounters': instance.assetCounters,
      'assetImages': instance.assetImages,
      'permittedHours': instance.permittedHours,
      'shiftHours': instance.shiftHours,
      'parentAssetCodes': instance.parentAssetCodes,
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

AssetProperty _$AssetPropertyFromJson(Map<String, dynamic> json) =>
    AssetProperty(
      templatePropertyId: json['templatePropertyId'] as String?,
      propertyValue: json['propertyValue'] as String?,
      propertyValueNumber: (json['propertyValueNumber'] as num?)?.toDouble(),
      id: json['id'] as String?,
      name: json['name'] as String?,
      dataType: json['dataType'] as String?,
      isMandatory: json['isMandatory'] as bool?,
      active: json['active'] as bool?,
      sequence: (json['sequence'] as num?)?.toInt(),
      viewerGroupIds: (json['viewerGroupIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      updaterGroupIds: (json['updaterGroupIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      userCanView: json['userCanView'] as bool?,
      userCanUpdate: json['userCanUpdate'] as bool?,
    );

Map<String, dynamic> _$AssetPropertyToJson(AssetProperty instance) =>
    <String, dynamic>{
      'templatePropertyId': instance.templatePropertyId,
      'propertyValue': instance.propertyValue,
      'propertyValueNumber': instance.propertyValueNumber,
      'id': instance.id,
      'name': instance.name,
      'dataType': instance.dataType,
      'isMandatory': instance.isMandatory,
      'active': instance.active,
      'sequence': instance.sequence,
      'viewerGroupIds': instance.viewerGroupIds,
      'updaterGroupIds': instance.updaterGroupIds,
      'userCanView': instance.userCanView,
      'userCanUpdate': instance.userCanUpdate,
    };

StartAndEndTime _$StartAndEndTimeFromJson(Map<String, dynamic> json) =>
    StartAndEndTime(
      start: json['start'] as String?,
      end: json['end'] as String?,
    );

Map<String, dynamic> _$StartAndEndTimeToJson(StartAndEndTime instance) =>
    <String, dynamic>{
      'start': instance.start,
      'end': instance.end,
    };

AssetImage _$AssetImageFromJson(Map<String, dynamic> json) => AssetImage(
      id: json['id'] as String?,
      filename: json['filename'] as String?,
      url: json['url'] as String?,
      comments: json['comments'] as String?,
    );

Map<String, dynamic> _$AssetImageToJson(AssetImage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'filename': instance.filename,
      'url': instance.url,
      'comments': instance.comments,
    };

AssetCounter _$AssetCounterFromJson(Map<String, dynamic> json) => AssetCounter(
      id: json['id'] as String?,
      groupId: json['groupId'] as String?,
      key: json['key'] as String?,
      name: json['name'] as String?,
      dataType: json['dataType'] as String?,
      incrementType: json['incrementType'] as String?,
      active: json['active'] as bool?,
      triggers: (json['triggers'] as List<dynamic>?)
          ?.map((e) => AssetCounterTrigger.fromJson(e as Map<String, dynamic>))
          .toList(),
      assetTemplateCounterId: json['assetTemplateCounterId'] as String?,
      value: (json['value'] as num?)?.toDouble(),
      valueTimestamp: json['valueTimestamp'] == null
          ? null
          : DateTime.parse(json['valueTimestamp'] as String),
    );

Map<String, dynamic> _$AssetCounterToJson(AssetCounter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'groupId': instance.groupId,
      'key': instance.key,
      'name': instance.name,
      'dataType': instance.dataType,
      'incrementType': instance.incrementType,
      'active': instance.active,
      'triggers': instance.triggers,
      'assetTemplateCounterId': instance.assetTemplateCounterId,
      'value': instance.value,
      'valueTimestamp': instance.valueTimestamp?.toIso8601String(),
    };

AssetCounterTrigger _$AssetCounterTriggerFromJson(Map<String, dynamic> json) =>
    AssetCounterTrigger(
      json['id'] as String?,
      (json['valueOffset'] as num?)?.toDouble(),
      json['valueOffsetUnit'] as String?,
      (json['intervalValue'] as num?)?.toDouble(),
      json['intervalUnit'] as String?,
    );

Map<String, dynamic> _$AssetCounterTriggerToJson(
        AssetCounterTrigger instance) =>
    <String, dynamic>{
      'id': instance.id,
      'valueOffset': instance.valueOffset,
      'valueOffsetUnit': instance.valueOffsetUnit,
      'intervalValue': instance.intervalValue,
      'intervalUnit': instance.intervalUnit,
    };
