import 'package:json_annotation/json_annotation.dart';

part 'search_result.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class SearchResult<T> {
  SearchResult({
    this.items,
    this.totalCount,
  });

  factory SearchResult.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$SearchResultFromJson(json, fromJsonT);

  final List<T>? items;
  final int? totalCount;

  Map<String, dynamic> toJson(
    Object Function(T value) toJsonT,
  ) =>
      _$SearchResultToJson(this, toJsonT);
}
