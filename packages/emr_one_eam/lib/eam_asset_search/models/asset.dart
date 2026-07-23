class Asset {
  Asset({
    this.depotNo,
    this.code,
    this.assetType,
    this.make,
    this.model,
    this.serialNumber,
    this.name,
    this.status,
    this.id,
    this.transferToDepotNo,
    this.transferToDepotNoAssetApprovalId,
    this.disposalStatus,
    this.disposalApprovalId,
    this.isChecked = false,
    this.approved = false,
  });

  Asset.fromJson(Map<String, dynamic> json) {
    depotNo = json['depotNo'] as String?;
    code = json['code'] as String?;
    assetType = json['assetType'] as String?;
    make = json['make'] as String?;
    model = json['model'] as String?;
    serialNumber = json['serialNumber'] as String?;
    name = json['name'] as String?;
    status = json['status'] as String?;
    transferToDepotNo = json['transferToDepotNo'] as String?;
    transferToDepotNoAssetApprovalId =
        json['transferToDepotNoAssetApprovalId'] as int?;
    disposalStatus = json['disposalStatus'] as String?;
    disposalApprovalId = json['disposalApprovalId'] as int?;
    id = json['id'] as String?;
    isChecked = (json['isChecked'] as bool?) ?? false;
    approved = (json['approved'] as bool?) ?? false;
  }
  String? depotNo;
  String? code;
  String? assetType;
  String? make;
  String? model;
  String? serialNumber;
  String? name;
  String? status;
  String? id;
  bool? approved;
  late bool isChecked;
  String? transferToDepotNo;
  int? transferToDepotNoAssetApprovalId;
  String? disposalStatus;
  int? disposalApprovalId;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['depotNo'] = depotNo;
    data['code'] = code;
    data['assetType'] = assetType;
    data['make'] = make;
    data['model'] = model;
    data['serialNumber'] = serialNumber;
    data['name'] = name;
    data['status'] = status;
    data['id'] = id;
    data['transferToDepotNo'] = transferToDepotNo;
    data['transferToDepotNoAssetApprovalId'] = transferToDepotNoAssetApprovalId;
    data['disposalStatus'] = disposalStatus;
    data['disposalApprovalId'] = disposalApprovalId;
    data['isChecked'] = isChecked;
    data['approved'] = approved;
    return data;
  }
}
