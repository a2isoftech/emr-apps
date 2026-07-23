import 'package:emr_one_yard_management/models/liveLoads/live_loads_print_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'live_loads_print_wrap_model.g.dart';

@JsonSerializable()
class LiveLoadsPrintWrapModel {
  LiveLoadsPrintWrapModel({
    required this.yard,
    required this.fromDate,
    required this.toDate,
    required this.liveLoadsList,
  });

  factory LiveLoadsPrintWrapModel.fromJson(Map<String, dynamic> json) =>
      _$LiveLoadsPrintWrapModelFromJson(json);
  String yard;
  String fromDate;
  String toDate;
  List<LiveLoadsPrintModel> liveLoadsList;

  Map<String, dynamic> toJson() => _$LiveLoadsPrintWrapModelToJson(this);
}
