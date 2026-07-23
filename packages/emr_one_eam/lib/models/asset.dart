import 'package:json_annotation/json_annotation.dart';

part 'asset.g.dart';

@JsonSerializable()
class Asset {
  Asset({
    this.active,
    this.approved,
    this.parentAssetId,
    this.assetTemplate,
    this.assetType,
    this.category,
    this.code,
    this.name,
    this.make,
    this.model,
    this.serialNumber,
    this.depotNo,
    this.functionalLocationCode,
    this.transferToDepotNo,
    this.transferToDepotNoEffectiveFrom,
    this.transferToDepotNoAssetApprovalId,
    this.latitude,
    this.longitude,
    this.templateId,
    this.dateOfAcquisition,
    this.dateOfDisposal,
    this.farLeasedExpensed,
    this.yearOfManufacture,
    this.condition,
    this.status,
    this.disposalStatus,
    this.disposalEffectiveFrom,
    this.disposalApprovalId,
    this.statutoryInspection,
    this.salesInvoiceNo,
    this.assetProperties,
    this.assetCounters,
    this.assetImages,
    this.permittedHours,
    this.shiftHours,
    this.parentAssetCodes,
    this.hasSubAssets,
    this.codaAnalysisCode,
    this.assetHierarchyId,
    this.displayName,
    this.needsReview,
    this.lastReviewed,
    this.lastReviewedBy,
    this.lastAudited,
    this.lastAuditedBy,
    this.lastStatutoryInspectionDate,
    this.statutoryInspectionIntervalMonths,
    this.id,
    this.markerColour,
    this.isReviewed = false,
    this.isAudited = false,
  });

  factory Asset.fromJson(Map<String, dynamic> json) => _$AssetFromJson(json);

  Map<String, dynamic> toJson() => _$AssetToJson(this);

  bool? active;
  bool? approved;
  String? parentAssetId;
  String? category;
  String? assetTemplate;
  String? assetType;
  String? code;
  String? name;
  String? make;
  String? model;
  String? serialNumber;
  String? depotNo;
  String? functionalLocationCode;
  String? transferToDepotNo;
  DateTime? transferToDepotNoEffectiveFrom;
  int? transferToDepotNoAssetApprovalId;
  double? latitude;
  double? longitude;
  String? templateId;
  DateTime? dateOfAcquisition;
  DateTime? dateOfDisposal;
  String? farLeasedExpensed;
  int? yearOfManufacture;
  String? condition;
  String? status;
  String? disposalStatus;
  DateTime? disposalEffectiveFrom;
  int? disposalApprovalId;
  bool? statutoryInspection;
  String? salesInvoiceNo;
  List<AssetProperty>? assetProperties;
  List<AssetCounter>? assetCounters;
  List<AssetImage>? assetImages;
  Map<String, StartAndEndTime>? permittedHours;
  Map<String, StartAndEndTime>? shiftHours;
  List<String>? parentAssetCodes;
  bool? hasSubAssets;
  String? codaAnalysisCode;
  String? assetHierarchyId;
  String? displayName;
  DateTime? needsReview;
  DateTime? lastReviewed;
  String? lastReviewedBy;
  DateTime? lastAudited;
  String? lastAuditedBy;
  String? lastStatutoryInspectionDate;
  String? statutoryInspectionIntervalMonths;
  String? id;
  String? markerColour;
  bool isReviewed;
  bool isAudited;
}

@JsonSerializable()
class AssetProperty {
  AssetProperty({
    this.templatePropertyId,
    this.propertyValue,
    this.propertyValueNumber,
    this.id,
    this.name,
    this.dataType,
    this.isMandatory,
    this.active,
    this.sequence,
    this.viewerGroupIds,
    this.updaterGroupIds,
    this.userCanView,
    this.userCanUpdate,
  });

  factory AssetProperty.fromJson(Map<String, dynamic> json) =>
      _$AssetPropertyFromJson(json);

  Map<String, dynamic> toJson() => _$AssetPropertyToJson(this);

  String? templatePropertyId;
  String? propertyValue;
  double? propertyValueNumber;
  String? id;
  String? name;
  String? dataType;
  bool? isMandatory;
  bool? active;
  int? sequence;
  List<String>? viewerGroupIds;
  List<String>? updaterGroupIds;
  bool? userCanView;
  bool? userCanUpdate;
}

@JsonSerializable()
class StartAndEndTime {
  StartAndEndTime({this.start, this.end});

  factory StartAndEndTime.fromJson(Map<String, dynamic> json) =>
      _$StartAndEndTimeFromJson(json);

  Map<String, dynamic> toJson() => _$StartAndEndTimeToJson(this);

  String? start;
  String? end;
}

@JsonSerializable()
class AssetImage {
  AssetImage({this.id, this.filename, this.url, this.comments});

  factory AssetImage.fromJson(Map<String, dynamic> json) =>
      _$AssetImageFromJson(json);

  Map<String, dynamic> toJson() => _$AssetImageToJson(this);

  String? id;
  String? filename;
  String? url;
  String? comments;
}

@JsonSerializable()
class AssetCounter {
  AssetCounter({
    this.id,
    this.groupId,
    this.key,
    this.name,
    this.dataType,
    this.incrementType,
    this.active,
    this.triggers,
    this.assetTemplateCounterId,
    this.value,
    this.valueTimestamp,
  });

  factory AssetCounter.fromJson(Map<String, dynamic> json) =>
      _$AssetCounterFromJson(json);

  Map<String, dynamic> toJson() => _$AssetCounterToJson(this);

  String? id;
  String? groupId;
  String? key;
  String? name;
  String? dataType;
  String? incrementType;
  bool? active;
  List<AssetCounterTrigger>? triggers;
  String? assetTemplateCounterId;
  double? value;
  DateTime? valueTimestamp;
}

@JsonSerializable()
class AssetCounterTrigger {
  AssetCounterTrigger(
    this.id,
    this.valueOffset,
    this.valueOffsetUnit,
    this.intervalValue,
    this.intervalUnit,
  );

  factory AssetCounterTrigger.fromJson(Map<String, dynamic> json) =>
      _$AssetCounterTriggerFromJson(json);

  Map<String, dynamic> toJson() => _$AssetCounterTriggerToJson(this);

  String? id;
  double? valueOffset;
  String? valueOffsetUnit;
  double? intervalValue;
  String? intervalUnit;
}
