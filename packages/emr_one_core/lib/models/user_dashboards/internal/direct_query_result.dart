import 'package:emr_one_core/models/user_dashboards/internal/direct_query_facet_result.dart';
import 'package:json_annotation/json_annotation.dart';

part 'direct_query_result.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class DirectQueryResult {
  DirectQueryResult({
    required this.results,
    required this.totalResults,
  });
  factory DirectQueryResult.fromJson(Map<String, dynamic> json) =>
      _$DirectQueryResultFromJson(json);

  final List<DirectQueryFacetResult> results;

  final int totalResults;

  Map<String, dynamic> toJson() => _$DirectQueryResultToJson(this);
}
