// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_rules.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentRules _$PaymentRulesFromJson(Map<String, dynamic> json) => PaymentRules(
      id: json['id'] as String,
      yardCode: json['yardCode'] as String,
      authorityReportable: json['authorityReportable'] as bool,
      authorityReportableProductIds:
          (json['authorityReportableProductIds'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
      drivingLicenceRequired: json['drivingLicenceRequired'] as bool,
      drivingLicenceRequiredProductIds:
          (json['drivingLicenceRequiredProductIds'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
      cashCardRequired: json['cashCardRequired'] as bool,
      cashCardRequiredProductIds:
          (json['cashCardRequiredProductIds'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
      copperSellersLicenseRequired:
          json['copperSellersLicenseRequired'] as bool,
      copperSellersLicenseRequiredProductIds:
          (json['copperSellersLicenseRequiredProductIds'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
      exemptedSellerStatusRequired:
          json['exemptedSellerStatusRequired'] as bool,
      exemptedSellerStatusRequiredProductIds:
          (json['exemptedSellerStatusRequiredProductIds'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
      preventCashPayment: json['preventCashPayment'] as bool,
      preventCashPaymentProductIds:
          (json['preventCashPaymentProductIds'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
      proofOfOwnershipRequired: json['proofOfOwnershipRequired'] as bool,
      proofOfOwnershipRequiredProductIds:
          (json['proofOfOwnershipRequiredProductIds'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
      vehicleDetailsRequired: json['vehicleDetailsRequired'] as bool,
      vehicleDetailsRequiredProductIds:
          (json['vehicleDetailsRequiredProductIds'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
      executedAffidavitDocumentRequired:
          json['executedAffidavitDocumentRequired'] as bool,
      executedAffidavitDocumentRequiredProductIds:
          (json['executedAffidavitDocumentRequiredProductIds'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
      allowedForAutoConfirm: json['allowedForAutoConfirm'] as bool,
      allowedForAutoConfirmProductIds:
          (json['allowedForAutoConfirmProductIds'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
    );

Map<String, dynamic> _$PaymentRulesToJson(PaymentRules instance) =>
    <String, dynamic>{
      'id': instance.id,
      'yardCode': instance.yardCode,
      'authorityReportable': instance.authorityReportable,
      'authorityReportableProductIds': instance.authorityReportableProductIds,
      'drivingLicenceRequired': instance.drivingLicenceRequired,
      'drivingLicenceRequiredProductIds':
          instance.drivingLicenceRequiredProductIds,
      'cashCardRequired': instance.cashCardRequired,
      'cashCardRequiredProductIds': instance.cashCardRequiredProductIds,
      'copperSellersLicenseRequired': instance.copperSellersLicenseRequired,
      'copperSellersLicenseRequiredProductIds':
          instance.copperSellersLicenseRequiredProductIds,
      'exemptedSellerStatusRequired': instance.exemptedSellerStatusRequired,
      'exemptedSellerStatusRequiredProductIds':
          instance.exemptedSellerStatusRequiredProductIds,
      'preventCashPayment': instance.preventCashPayment,
      'preventCashPaymentProductIds': instance.preventCashPaymentProductIds,
      'proofOfOwnershipRequired': instance.proofOfOwnershipRequired,
      'proofOfOwnershipRequiredProductIds':
          instance.proofOfOwnershipRequiredProductIds,
      'vehicleDetailsRequired': instance.vehicleDetailsRequired,
      'vehicleDetailsRequiredProductIds':
          instance.vehicleDetailsRequiredProductIds,
      'executedAffidavitDocumentRequired':
          instance.executedAffidavitDocumentRequired,
      'executedAffidavitDocumentRequiredProductIds':
          instance.executedAffidavitDocumentRequiredProductIds,
      'allowedForAutoConfirm': instance.allowedForAutoConfirm,
      'allowedForAutoConfirmProductIds':
          instance.allowedForAutoConfirmProductIds,
    };
