class AssetQueryFilter {
  AssetQueryFilter({
    this.assetCodes,
    this.yardCodes,
    this.depotNos,
    this.searchText,
  });

  factory AssetQueryFilter.fromJson(Map<String, dynamic> json) =>
      _$AssetQueryFilterFromJson(json);

  final List<String>? assetCodes;
  final List<String>? yardCodes;
  final List<String>? depotNos;
  final String? searchText;

  Map<String, dynamic> toJson() => _$AssetQueryFilterToJson(this);
}

AssetQueryFilter _$AssetQueryFilterFromJson(Map<String, dynamic> json) =>
    AssetQueryFilter(
      assetCodes: (json['assetCodes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      yardCodes: (json['yardCodes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      depotNos: (json['depotNos'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      searchText: json['searchText'] as String?,
    );

Map<String, dynamic> _$AssetQueryFilterToJson(AssetQueryFilter instance) =>
    <String, dynamic>{
      'assetCodes': instance.assetCodes,
      'yardCodes': instance.yardCodes,
      'depotNos': instance.depotNos,
      'searchText': instance.searchText,
    };
