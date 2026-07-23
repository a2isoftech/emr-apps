class FavouriteSearchParameters {
  FavouriteSearchParameters({this.name, this.parameters});

  FavouriteSearchParameters.fromJson(Map<String, dynamic> json) {
    name = json['name'] as String?;
    parameters = json['parameters'] as String?;
  }
  String? name;
  String? parameters;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['parameters'] = parameters;
    return data;
  }
}
