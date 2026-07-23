import 'package:emr_one_core/models/user_dashboards/internal/direct_query_facet_result_value.dart';
import 'package:json_annotation/json_annotation.dart';

part 'direct_query_facet_result.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class DirectQueryFacetResult {
  DirectQueryFacetResult({
    required this.name,
    required this.values,
  });
  factory DirectQueryFacetResult.fromJson(Map<String, dynamic> json) =>
      _$DirectQueryFacetResultFromJson(json);

  final String name;
  final List<DirectQueryFacetResultValue> values;

  Map<String, dynamic> toJson() => _$DirectQueryFacetResultToJson(this);
}
