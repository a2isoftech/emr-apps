class FavouriteFilterParameters {
  FavouriteFilterParameters({
    required this.filterName,
    required this.moduleName,
    required this.filterParameters,
  });

  factory FavouriteFilterParameters.fromJson(Map<String, dynamic> json) {
    return FavouriteFilterParameters(
      filterName: json['filterName'] as String,
      moduleName: json['moduleName'] as String,
      filterParameters: json['filterParameters'] as String,
    );
  }

  final String filterName;
  final String moduleName;
  final String filterParameters;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['filterName'] = filterName;
    data['moduleName'] = moduleName;
    data['filterParameters'] = filterParameters;
    return data;
  }
}
