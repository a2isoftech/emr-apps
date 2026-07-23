import 'package:json_annotation/json_annotation.dart';

part 'direct_query_facet_result_value.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class DirectQueryFacetResultValue {
  DirectQueryFacetResultValue({
    required this.range,
    required this.count,
    this.name,
  });
  factory DirectQueryFacetResultValue.fromJson(Map<String, dynamic> json) =>
      _$DirectQueryFacetResultValueFromJson(json);

  final String? name;
  final String range;
  final int count;

  Map<String, dynamic> toJson() => _$DirectQueryFacetResultValueToJson(this);
}
