import 'package:emr_one_eam/models/asset.dart';
import 'package:emr_one_eam/models/asset_template.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_asset_input.g.dart';

@JsonSerializable(explicitToJson: true)
class CreateAssetInput {
  CreateAssetInput({
    this.active = true,
    this.approved = false,
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
    this.latitude = 0,
    this.longitude = 0,
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
    this.statutoryInspection = false,
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

  factory CreateAssetInput.fromJson(Map<String, dynamic> json) =>
      _$CreateAssetInputFromJson(json);

  Map<String, dynamic> toJson() => _$CreateAssetInputToJson(this);

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
  List<HourResult>? permittedHours;
  List<HourResult>? shiftHours;
  List<String>? parentAssetCodes;
  List<AssetTemplateSyncTarget>? syncTarget;
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

@JsonSerializable(explicitToJson: true)
class HourResult {
  HourResult({required this.key, required this.value});

  factory HourResult.fromJson(Map<String, dynamic> json) =>
      _$HourResultFromJson(json);
  String? key;
  StartAndEndTime value;

  Map<String, dynamic> toJson() => _$HourResultToJson(this);
}
