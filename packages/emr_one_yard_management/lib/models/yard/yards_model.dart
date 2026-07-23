import 'package:json_annotation/json_annotation.dart';

part 'yards_model.g.dart';

@JsonSerializable()
class YardsModel {
  YardsModel({required this.yardCode, required this.yardName});

  factory YardsModel.fromJson(Map<String, dynamic> json) =>
      _$YardsModelFromJson(json);

  String yardCode;
  String yardName;

  Map<String, dynamic> toJson() => _$YardsModelToJson(this);
}
