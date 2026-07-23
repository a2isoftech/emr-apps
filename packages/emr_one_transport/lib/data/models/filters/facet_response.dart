import 'package:emr_one_transport/data/models/filters/facet_response_value.dart';
import 'package:json_annotation/json_annotation.dart';

part 'facet_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class FacetResponse {
  FacetResponse({required this.name, required this.values});

  factory FacetResponse.fromJson(Map<String, dynamic> json) =>
      _$FacetResponseFromJson(json);

  final String name;
  final List<FacetResponseValue> values;

  Map<String, dynamic> toJson() => _$FacetResponseToJson(this);

  static Map<String, FacetResponse> parseFacets(Map<String, dynamic>? json) {
    if (json == null) return {};
    return json.map(
      (key, value) =>
          MapEntry(key, FacetResponse.fromJson(value as Map<String, dynamic>)),
    );
  }
}
