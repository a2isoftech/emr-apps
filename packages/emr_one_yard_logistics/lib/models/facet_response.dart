import 'package:emr_one_yard_logistics/models/facet_response_value.dart';
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
}
