import 'package:json_annotation/json_annotation.dart';

part 'provisional_cost_details.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class ProvisionalCostDetails {
  ProvisionalCostDetails();

  factory ProvisionalCostDetails.fromJson(Map<String, dynamic> json) =>
      _$ProvisionalCostDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$ProvisionalCostDetailsToJson(this);

  int? haulagePriceMatrixId;
  double? baseRate;
  double? finalRate;
  double? distance;
  String? currencyCode;
  String? uom;
  String? accountCode;
}
