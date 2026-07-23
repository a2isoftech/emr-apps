import 'package:json_annotation/json_annotation.dart';

part 'page_info_model.g.dart';

@JsonSerializable()
class PageInfoModel {
  PageInfoModel({
    required this.hasNextPage,
    required this.hasPreviousPage,
    required this.startCursor,
    required this.endCursor,
  });

  factory PageInfoModel.fromJson(Map<String, dynamic> json) =>
      _$PageInfoModelFromJson(json);
  bool hasNextPage;
  bool hasPreviousPage;
  String startCursor;
  String endCursor;

  Map<String, dynamic> toJson() => _$PageInfoModelToJson(this);
}
