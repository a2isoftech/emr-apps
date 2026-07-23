class ScannedAsset {
  ScannedAsset({
    this.yardCode,
    this.depotNo,
    this.assetCode,
    this.name,
    this.assetType,
    this.make,
    this.model,
    this.serialNumber,
  });

  factory ScannedAsset.fromJson(Map<String, dynamic> json) =>
      _$ScannedAssetFromJson(json);

  final String? yardCode;
  final String? depotNo;
  final String? assetCode;
  final String? name;
  final String? assetType;
  final String? make;
  final String? model;
  final String? serialNumber;

  Map<String, dynamic> toJson() => _$ScannedAssetToJson(this);
}

ScannedAsset _$ScannedAssetFromJson(Map<String, dynamic> json) => ScannedAsset(
      yardCode: json['yardCode'] as String?,
      depotNo: json['depotNo'] as String?,
      assetCode: json['assetCode'] as String?,
      name: json['name'] as String?,
      assetType: json['assetType'] as String?,
      make: json['make'] as String?,
      model: json['model'] as String?,
      serialNumber: json['serialNumber'] as String?,
    );

Map<String, dynamic> _$ScannedAssetToJson(ScannedAsset instance) =>
    <String, dynamic>{
      'yardCode': instance.yardCode,
      'depotNo': instance.depotNo,
      'assetCode': instance.assetCode,
      'name': instance.name,
      'assetType': instance.assetType,
      'make': instance.make,
      'model': instance.model,
      'serialNumber': instance.serialNumber,
    };
