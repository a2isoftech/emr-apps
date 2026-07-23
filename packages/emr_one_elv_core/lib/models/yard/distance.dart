class Distance {
  Distance({
    required this.miles,
    required this.kilometers,
  });

  double miles;
  double kilometers;

  static Distance? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return Distance(
        miles: json['miles'] as double,
        kilometers: json['kilometers'] as double,
      );
    }
    return null;
  }

  static List<Distance>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Distance>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Distance.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}
