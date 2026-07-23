import 'package:emr_one_elv_core/models/uom_code.dart';

class PartData {
  PartData({
    required this.partDescription,
    required this.count,
    required this.price,
    this.weight,
    this.weightUom,
  });

  String partDescription;
  int count;
  double? weight;
  UomCode? weightUom;
  double price;

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['partDescription'] = partDescription;
    json['count'] = count;
    if (weight != null) {
      json['weight'] = weight;
    }
    if (weightUom != null) {
      json['weightUom'] = weightUom;
    }
    json['price'] = price;
    return json;
  }

  static PartData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return PartData(
        partDescription: json['partDescription'] as String,
        count: json['count'] as int,
        weight: json['weight'] as double?,
        weightUom: UomCode.fromJson(json['weightUom']),
        price: json['price'] as double,
      );
    }
    return null;
  }

  static List<PartData>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PartData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PartData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}
