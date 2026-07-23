// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset_approval.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AssetApproval _$AssetApprovalFromJson(Map<String, dynamic> json) =>
    AssetApproval(
      id: json['id'] as String?,
      parentAssetApprovalId: json['parentAssetApprovalId'] as String?,
      assetId: json['assetId'] as String?,
      depotNo: json['depotNo'] as String?,
      cmpCode: json['cmpCode'] as String?,
      approvalType: json['approvalType'] as String?,
      effectiveDate: json['effectiveDate'] == null
          ? null
          : DateTime.parse(json['effectiveDate'] as String),
      reviewed: json['reviewed'] == null
          ? null
          : DateTime.parse(json['reviewed'] as String),
      reviewedBy: json['reviewedBy'] as String?,
      reviewStatus: json['reviewStatus'] as String?,
      transferDepotNo: json['transferDepotNo'] as String?,
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      createdBy: json['createdBy'] as String?,
      modified: json['modified'] == null
          ? null
          : DateTime.parse(json['modified'] as String),
      modifiedBy: json['modifiedBy'] as String?,
      functionalLocation: json['functionalLocation'] as String?,
      active: json['active'] as bool?,
      requiresFunctionalLocation: json['requiresFunctionalLocation'] as bool?,
    )
      ..reason = json['reason'] as String?
      ..requestedBy = json['requestedBy'] as String?
      ..assetName = json['assetName'] as String?
      ..assetCode = json['assetCode'] as String?
      ..disposalStatus = json['disposalStatus'] as String?
      ..status = json['status'] as String?
      ..requestedByGuid = json['requestedByGuid'] as String?;

Map<String, dynamic> _$AssetApprovalToJson(AssetApproval instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parentAssetApprovalId': instance.parentAssetApprovalId,
      'assetId': instance.assetId,
      'depotNo': instance.depotNo,
      'cmpCode': instance.cmpCode,
      'approvalType': instance.approvalType,
      'effectiveDate': instance.effectiveDate?.toIso8601String(),
      'reviewed': instance.reviewed?.toIso8601String(),
      'reviewedBy': instance.reviewedBy,
      'reviewStatus': instance.reviewStatus,
      'transferDepotNo': instance.transferDepotNo,
      'created': instance.created?.toIso8601String(),
      'createdBy': instance.createdBy,
      'modified': instance.modified?.toIso8601String(),
      'modifiedBy': instance.modifiedBy,
      'functionalLocation': instance.functionalLocation,
      'reason': instance.reason,
      'requestedBy': instance.requestedBy,
      'active': instance.active,
      'requiresFunctionalLocation': instance.requiresFunctionalLocation,
      'assetName': instance.assetName,
      'assetCode': instance.assetCode,
      'disposalStatus': instance.disposalStatus,
      'status': instance.status,
      'requestedByGuid': instance.requestedByGuid,
    };
