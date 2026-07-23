import 'package:json_annotation/json_annotation.dart';

part 'payment_rules.g.dart';

@JsonSerializable()
class PaymentRules {
  const PaymentRules({
    required this.id,
    required this.yardCode,
    required this.authorityReportable,
    required this.authorityReportableProductIds,
    required this.drivingLicenceRequired,
    required this.drivingLicenceRequiredProductIds,
    required this.cashCardRequired,
    required this.cashCardRequiredProductIds,
    required this.copperSellersLicenseRequired,
    required this.copperSellersLicenseRequiredProductIds,
    required this.exemptedSellerStatusRequired,
    required this.exemptedSellerStatusRequiredProductIds,
    required this.preventCashPayment,
    required this.preventCashPaymentProductIds,
    required this.proofOfOwnershipRequired,
    required this.proofOfOwnershipRequiredProductIds,
    required this.vehicleDetailsRequired,
    required this.vehicleDetailsRequiredProductIds,
    required this.executedAffidavitDocumentRequired,
    required this.executedAffidavitDocumentRequiredProductIds,
    required this.allowedForAutoConfirm,
    required this.allowedForAutoConfirmProductIds,    
  });

  factory PaymentRules.fromJson(Map<String, dynamic> json) =>
      _$PaymentRulesFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentRulesToJson(this);

  final String id;
  final String yardCode;
  final bool authorityReportable;
  final List<String> authorityReportableProductIds;
  final bool drivingLicenceRequired;
  final List<String> drivingLicenceRequiredProductIds;
  final bool cashCardRequired;
  final List<String> cashCardRequiredProductIds;
  final bool copperSellersLicenseRequired;
  final List<String> copperSellersLicenseRequiredProductIds;
  final bool exemptedSellerStatusRequired;
  final List<String> exemptedSellerStatusRequiredProductIds;
  final bool preventCashPayment;
  final List<String> preventCashPaymentProductIds;
  final bool proofOfOwnershipRequired;
  final List<String> proofOfOwnershipRequiredProductIds;
  final bool vehicleDetailsRequired;
  final List<String> vehicleDetailsRequiredProductIds;
  final bool executedAffidavitDocumentRequired;
  final List<String> executedAffidavitDocumentRequiredProductIds;
  final bool allowedForAutoConfirm;
  final List<String> allowedForAutoConfirmProductIds;
}
