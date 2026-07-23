class RefreshAssetsRequest {
  RefreshAssetsRequest({
    this.assetCodes,
  });

  factory RefreshAssetsRequest.fromJson(Map<String, dynamic> json) =>
      _$RefreshAssetsRequestFromJson(json);

  final List<String>? assetCodes;

  Map<String, dynamic> toJson() => _$RefreshAssetsRequestToJson(this);
}

RefreshAssetsRequest _$RefreshAssetsRequestFromJson(
  Map<String, dynamic> json,
) =>
    RefreshAssetsRequest(
      assetCodes: (json['assetsToRefresh'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$RefreshAssetsRequestToJson(
  RefreshAssetsRequest instance,
) =>
    <String, dynamic>{
      'assetCodes': instance.assetCodes,
    };
