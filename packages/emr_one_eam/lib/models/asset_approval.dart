import 'package:json_annotation/json_annotation.dart';

part 'asset_approval.g.dart';

@JsonSerializable()
class AssetApproval {
  AssetApproval({
    this.id,
    this.parentAssetApprovalId,
    this.assetId,
    this.depotNo,
    this.cmpCode,
    this.approvalType,
    this.effectiveDate,
    this.reviewed,
    this.reviewedBy,
    this.reviewStatus,
    this.transferDepotNo,
    this.created,
    this.createdBy,
    this.modified,
    this.modifiedBy,
    this.functionalLocation,
    this.active,
    this.requiresFunctionalLocation,
  });

  factory AssetApproval.fromJson(Map<String, dynamic> json) =>
      _$AssetApprovalFromJson(json);

  String? id;
  String? parentAssetApprovalId;
  String? assetId;
  String? depotNo;
  String? cmpCode;
  String? approvalType;
  DateTime? effectiveDate;
  DateTime? reviewed;
  String? reviewedBy;
  String? reviewStatus;
  String? transferDepotNo;
  DateTime? created;
  String? createdBy;
  DateTime? modified;
  String? modifiedBy;
  String? functionalLocation;
  String? reason;
  String? requestedBy;
  bool? active;
  bool? requiresFunctionalLocation;
  String? assetName;
  String? assetCode;
  String? disposalStatus;
  String? status;
  String? requestedByGuid;

  Map<String, dynamic> toJson() => _$AssetApprovalToJson(this);
}
