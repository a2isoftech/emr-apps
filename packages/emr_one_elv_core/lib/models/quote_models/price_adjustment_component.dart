class PriceAdjustmentComponent {
  PriceAdjustmentComponent({
    required this.componentName,
    required this.value,
    this.reason,
  });

  String componentName;
  double value;
  String? reason;

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['componentName'] = componentName;
    json['value'] = value;
    json['reason'] = reason;
    return json;
  }

  static PriceAdjustmentComponent? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return PriceAdjustmentComponent(
        componentName: json['componentName'] as String,
        value: json['value'] as double,
        reason: json['reason'] as String?,
      );
    }
    return null;
  }

  static List<PriceAdjustmentComponent>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PriceAdjustmentComponent>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PriceAdjustmentComponent.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}
