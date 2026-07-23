class DepotQueryFilter {
  DepotQueryFilter({
    this.depotNos,
    this.yardCodes,
    this.searchText,
  });

  factory DepotQueryFilter.fromJson(Map<String, dynamic> json) =>
      _$DepotQueryFilterFromJson(json);

  final List<String>? depotNos;
  final List<String>? yardCodes;
  final String? searchText;

  Map<String, dynamic> toJson() => _$DepotQueryFilterToJson(this);
}

DepotQueryFilter _$DepotQueryFilterFromJson(Map<String, dynamic> json) =>
    DepotQueryFilter(
      depotNos: (json['depotNos'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      yardCodes: (json['yardCodes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      searchText: json['searchText'] as String?,
    );

Map<String, dynamic> _$DepotQueryFilterToJson(DepotQueryFilter instance) =>
    <String, dynamic>{
      'depotNos': instance.depotNos,
      'yardCodes': instance.yardCodes,
      'searchText': instance.searchText,
    };
