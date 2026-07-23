class AssetProperty {
  final String? assetCode;
  final double? propertyValue;
  final double? propertyMinValue;
  final double? propertyMaxValue;
  final bool? active;
  final bool? checkBothMinMax;
  final String? territoryCode;
  final String? propertyKey;
  final String? propertyKeyWithTerritory;

  AssetProperty({
    this.assetCode,
    this.propertyValue,
    this.propertyMinValue,
    this.propertyMaxValue,
    this.active,
    this.checkBothMinMax,
    this.territoryCode,
    this.propertyKey,
    this.propertyKeyWithTerritory,
  });

  factory AssetProperty.fromJson(Map<String, dynamic> json) =>
      _$AssetPropertyFromJson(json);

  Map<String, dynamic> toJson() => _$AssetPropertyToJson(this);
}

AssetProperty _$AssetPropertyFromJson(Map<String, dynamic> json) =>
    AssetProperty(
      assetCode: json['assetCode'] as String?,
      propertyValue: json['propertyValue'] as double?,
      propertyMinValue: json['propertyMinValue'] as double?,
      propertyMaxValue: json['propertyMaxValue'] as double?,
      active: json['active'] as bool?,
      checkBothMinMax: json['checkBothMinMax'] as bool?,
      territoryCode: json['territoryCode'] as String?,
      propertyKey: json['propertyKey'] as String?,
      propertyKeyWithTerritory: json['propertyKeyWithTerritory'] as String?,
    );

Map<String, dynamic> _$AssetPropertyToJson(AssetProperty instance) =>
    <String, dynamic>{
      'assetCode': instance.assetCode,
      'propertyValue': instance.propertyValue,
      'propertyMinValue': instance.propertyMinValue,
      'propertyMaxValue': instance.propertyMaxValue,
      'active': instance.active,
      'checkBothMinMax': instance.checkBothMinMax,
      'territoryCode': instance.territoryCode,
      'propertyKey': instance.propertyKey,
      'propertyKeyWithTerritory': instance.propertyKeyWithTerritory,
    };
