// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_rule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductRuleRow _$ProductRuleRowFromJson(Map<String, dynamic> json) =>
    ProductRuleRow(
      productId: json['productId'] as String,
      authorityReportable: json['authorityReportable'] as bool,
      drivingLicenceRequired: json['drivingLicenceRequired'] as bool,
      cashCardRequired: json['cashCardRequired'] as bool,
      copperSellersLicenseRequired:
          json['copperSellersLicenseRequired'] as bool,
      exemptedSellerStatusRequired:
          json['exemptedSellerStatusRequired'] as bool,
      preventCashPayment: json['preventCashPayment'] as bool,
      proofOfOwnershipRequired: json['proofOfOwnershipRequired'] as bool,
      vehicleDetailsRequired: json['vehicleDetailsRequired'] as bool,
      executedAffidavitDocumentRequired:
          json['executedAffidavitDocumentRequired'] as bool,
      allowedForAutoConfirm: json['allowedForAutoConfirm'] as bool,
    );

Map<String, dynamic> _$ProductRuleRowToJson(ProductRuleRow instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'authorityReportable': instance.authorityReportable,
      'drivingLicenceRequired': instance.drivingLicenceRequired,
      'cashCardRequired': instance.cashCardRequired,
      'copperSellersLicenseRequired': instance.copperSellersLicenseRequired,
      'exemptedSellerStatusRequired': instance.exemptedSellerStatusRequired,
      'preventCashPayment': instance.preventCashPayment,
      'proofOfOwnershipRequired': instance.proofOfOwnershipRequired,
      'vehicleDetailsRequired': instance.vehicleDetailsRequired,
      'executedAffidavitDocumentRequired':
          instance.executedAffidavitDocumentRequired,
      'allowedForAutoConfirm': instance.allowedForAutoConfirm,
    };
