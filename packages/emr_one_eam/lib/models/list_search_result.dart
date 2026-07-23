import 'package:emr_one_eam/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'list_search_result.g.dart';

@JsonSerializable()
class ListSearchResult {
  ListSearchResult({
    this.id,
    this.listName,
    this.active,
    this.isUsedByAssetTemplates,
    this.listValue,
  });

  factory ListSearchResult.fromJson(Map<String, dynamic> json) =>
      _$ListSearchResultFromJson(json);
  String? id;
  String? listName;
  bool? active;
  bool? isUsedByAssetTemplates;
  List<ListValue>? listValue;
  Map<String, dynamic> toJson() => _$ListSearchResultToJson(this);
}
