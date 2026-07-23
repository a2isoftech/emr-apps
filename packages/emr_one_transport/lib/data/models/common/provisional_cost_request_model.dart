import 'package:json_annotation/json_annotation.dart';

part 'provisional_cost_request_model.g.dart';
@JsonSerializable(fieldRename: FieldRename.none)
class ProvisionalCostRequestModel {
  ProvisionalCostRequestModel({
    required this.firstLocationCode,
    required this.secondLocationCodes,
    required this.startDate,
    required this.haulierAccountNo,
    this.endDate,
  });

  factory ProvisionalCostRequestModel.fromJson(Map<String, dynamic> json) =>
      _$ProvisionalCostRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProvisionalCostRequestModelToJson(this);

  String firstLocationCode;
  List<String> secondLocationCodes;
  DateTime startDate;
  DateTime? endDate;
  String haulierAccountNo;
}
