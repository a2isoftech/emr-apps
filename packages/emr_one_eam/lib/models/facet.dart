class Facet {
  Facet({required this.key, required this.value});

  Facet.fromJson(Map<String, dynamic> json) {
    key = json['key'] as String;
    value = json['value'] != null
        ? FacetValue.fromJson(json['value'] as Map<String, dynamic>)
        : FacetValue(name: '', values: []);
  }
  late String key;
  late FacetValue value;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['key'] = key;
    data['value'] = value.toJson();
    return data;
  }
}

class FacetValue {
  FacetValue({required this.name, required this.values});

  FacetValue.fromJson(Map<String, dynamic> json) {
    name = json['name'] as String;
    if (json['values'] != null) {
      values = json['values'] != null
          ? (json['values'] as List<dynamic>)
              .map((e) => FacetGroup.fromJson(e as Map<String, dynamic>))
              .toList()
          : [];
    }
  }
  late String name;
  late List<FacetGroup> values;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['values'] = values.map((v) => v.toJson()).toList();
    return data;
  }
}

class FacetGroup {
  FacetGroup({required this.range, required this.count});

  FacetGroup.fromJson(Map<String, dynamic> json) {
    range = json['range'] as String;
    count = json['count'] as int;
  }
  late String range;
  late int count;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['range'] = range;
    data['count'] = count;
    return data;
  }
}
