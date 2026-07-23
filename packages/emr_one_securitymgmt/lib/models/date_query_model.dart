import 'package:json_annotation/json_annotation.dart';

part 'date_query_model.g.dart';

@JsonSerializable()
class SmDateQueryModel {
  SmDateQueryModel(this.dateTime, this.timeZone);

  factory SmDateQueryModel.fromJson(Map<String, dynamic> json) =>
      _$SmDateQueryModelFromJson(json);

  Map<String, dynamic> toJson() => _$SmDateQueryModelToJson(this);

  final String dateTime;
  final String timeZone;
}
