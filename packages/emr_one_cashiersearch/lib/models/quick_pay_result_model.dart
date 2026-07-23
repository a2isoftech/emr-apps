import 'package:json_annotation/json_annotation.dart';

part 'quick_pay_result_model.g.dart';

@JsonSerializable(explicitToJson: true)
class QuickPayResultModel {
  QuickPayResultModel({
    required this.isPaid,
    this.receipt,
    this.errors = const [],
  });
  factory QuickPayResultModel.fromJson(Map<String, dynamic> json) =>
      _$QuickPayResultModelFromJson(json);
  bool isPaid;
  String? receipt;
  List<String>? errors;
  Map<String, dynamic> toJson() => _$QuickPayResultModelToJson(this);
}
