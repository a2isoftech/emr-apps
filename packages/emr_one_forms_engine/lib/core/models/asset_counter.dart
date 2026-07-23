class AssetCounter {
  final String? name;
  double? minValue;
  double? maxValue;
  bool? checkBothMinMax;

  AssetCounter({
    this.name,
    this.minValue,
    this.maxValue,
    this.checkBothMinMax,
  });

  // AssetCounter copyWith({
  //   String? name,
  //   double? minValue,
  //   double? maxValue,
  // }) {
  //   return AssetCounter(
  //     name: name ?? this.name,
  //     minValue: minValue ?? this.minValue,
  //     maxValue: maxValue ?? this.maxValue,
  //   );
  // }

  factory AssetCounter.fromJson(Map<String, dynamic> json) =>
      _$AssetCounterFromJson(json);
  Map<String, dynamic> toJson() => _$AssetCounterToJson(this);
}

AssetCounter _$AssetCounterFromJson(Map<String, dynamic> json) => AssetCounter(
      name: json['name'] as String?,
      minValue: json['minValue'] as double?,
      maxValue: json['maxValue'] as double?,
    );

Map<String, dynamic> _$AssetCounterToJson(AssetCounter instance) =>
    <String, dynamic>{
      'name': instance.name,
      'minValue': instance.minValue,
      'maxValue': instance.maxValue,
    };
