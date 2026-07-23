import 'package:json_annotation/json_annotation.dart';

part 'facet_response_value.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class FacetResponseValue {
  FacetResponseValue({
    required this.name,
    required this.range,
    required this.count,
    required this.max,
    required this.min,
    required this.average,
  });

  factory FacetResponseValue.fromJson(Map<String, dynamic> json) =>
      _$FacetResponseValueFromJson(json);

  final String? name;
  final String? range;
  final double count;
  final double? max;
  final double? min;
  final double? average;

  Map<String, dynamic> toJson() => _$FacetResponseValueToJson(this);
}
