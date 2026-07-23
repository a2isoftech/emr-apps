class AssetPropertyFilter {
  AssetPropertyFilter({
    required this.name,
    this.comparision = '=',
    this.dataType,
    this.value,
  });

  AssetPropertyFilter.fromJson(Map<String, dynamic> json) {
    name = json['name'] as String;
    comparision = json['comparison'] as String?;
    dataType = json['dataType'] as String?;
    value = json['value'] as String?;
  }
  String? comparision;
  String? dataType;
  late String name;
  String? value;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['comparison'] = comparision;
    data['dataType'] = dataType;
    data['value'] = value;
    return data;
  }
}
