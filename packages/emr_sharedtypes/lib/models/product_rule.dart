import 'package:json_annotation/json_annotation.dart';

part 'product_rule.g.dart';

@JsonSerializable()
class ProductRuleRow {
  ProductRuleRow({
    required this.productId,
    required this.authorityReportable,
    required this.drivingLicenceRequired,
    required this.cashCardRequired,    
    required this.copperSellersLicenseRequired,
    required this.exemptedSellerStatusRequired,
    required this.preventCashPayment,
    required this.proofOfOwnershipRequired,
    required this.vehicleDetailsRequired,
    required this.executedAffidavitDocumentRequired,
    required this.allowedForAutoConfirm,
  });

  factory ProductRuleRow.fromJson(Map<String, dynamic> json) =>
      _$ProductRuleRowFromJson(json);

  Map<String, dynamic> toJson() => _$ProductRuleRowToJson(this);

  final String productId;
  bool authorityReportable;
  bool drivingLicenceRequired;
  bool cashCardRequired;
  bool copperSellersLicenseRequired;
  bool exemptedSellerStatusRequired;
  bool preventCashPayment;
  bool proofOfOwnershipRequired;
  bool vehicleDetailsRequired;
  bool executedAffidavitDocumentRequired;
  bool allowedForAutoConfirm;
}
