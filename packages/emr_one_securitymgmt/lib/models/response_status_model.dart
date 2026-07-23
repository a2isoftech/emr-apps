import 'package:json_annotation/json_annotation.dart';

part 'response_status_model.g.dart';

@JsonSerializable()
class SmResponseStatusModel {
  SmResponseStatusModel(this.response, this.time);
  factory SmResponseStatusModel.fromJson(Map<String, dynamic> json) =>
      _$SmResponseStatusModelFromJson(json);

  Map<String, dynamic> toJson() => _$SmResponseStatusModelToJson(this);

  final String response;
  final String time;
}
