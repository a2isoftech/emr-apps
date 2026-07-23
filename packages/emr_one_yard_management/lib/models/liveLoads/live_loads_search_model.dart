import 'package:json_annotation/json_annotation.dart';

part 'live_loads_search_model.g.dart';

@JsonSerializable()
class LiveLoadsSearchModel {
  LiveLoadsSearchModel({
    required this.yard,
    required this.customer,
    required this.startDate,
    required this.endDate,
    required this.status,
    required this.search,
  });

  factory LiveLoadsSearchModel.fromJson(Map<String, dynamic> json) =>
      _$LiveLoadsSearchModelFromJson(json);
  String? yard;
  String? customer;
  DateTime? startDate;
  DateTime? endDate;
  String? status;
  String? search;

  Map<String, dynamic> toJson() => _$LiveLoadsSearchModelToJson(this);
}
