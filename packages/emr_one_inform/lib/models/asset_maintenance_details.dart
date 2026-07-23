class AssetMaintenanceDetails {
  AssetMaintenanceDetails({
    this.assetType,
    this.faultSymptoms,
  });

  factory AssetMaintenanceDetails.fromJson(Map<String, dynamic> json) =>
      _$AssetMaintenanceDetailsFromJson(json);

  final String? assetType;
  final List<String>? faultSymptoms;

  Map<String, dynamic> toJson() => _$AssetMaintenanceDetailsToJson(this);
}

AssetMaintenanceDetails _$AssetMaintenanceDetailsFromJson(
  Map<String, dynamic> json,
) =>
    AssetMaintenanceDetails(
      assetType: json['assetType'] as String?,
      faultSymptoms: (json['faultSymptoms'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$AssetMaintenanceDetailsToJson(
  AssetMaintenanceDetails instance,
) =>
    <String, dynamic>{
      'assetType': instance.assetType,
      'faultSymptoms': instance.faultSymptoms,
    };
