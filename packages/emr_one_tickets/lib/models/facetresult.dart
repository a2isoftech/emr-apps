import 'package:json_annotation/json_annotation.dart';

part 'facetresult.g.dart';

@JsonSerializable()
class FacetResult {
  FacetResult({
    required this.name,
    required this.count,
  });

  factory FacetResult.fromJson(Map<String, dynamic> json) =>
      _$FacetResultFromJson(json);

  Map<String, dynamic> toJson() => _$FacetResultToJson(this);

  final String name;
  final int count;
}
