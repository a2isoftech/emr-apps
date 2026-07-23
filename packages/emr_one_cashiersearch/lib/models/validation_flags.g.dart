// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validation_flags.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ValidationFlags _$ValidationFlagsFromJson(Map<String, dynamic> json) =>
    ValidationFlags(
      isPriced: json['isPriced'] as bool,
      hasRequiredAgreements: json['hasRequiredAgreements'] as bool,
      hasRequiredIdentities: json['hasRequiredIdentities'] as bool,
      isValidPaymentMethod: json['isValidPaymentMethod'] as bool,
      isPhotoIdRequired: json['isPhotoIdRequired'] as bool,
      isPhotoIdRuleSatisfied: json['isPhotoIdRuleSatisfied'] as bool,
      isDrivingLicenseRequired: json['isDrivingLicenseRequired'] as bool,
      isDrivingLicenseSatisfied: json['isDrivingLicenseSatisfied'] as bool,
      isUtilityBillRequired: json['isUtilityBillRequired'] as bool,
      isUtilityBillRuleSatisfied: json['isUtilityBillRuleSatisfied'] as bool,
      isCELAgreementRequired: json['isCELAgreementRequired'] as bool,
      isCELAgreementRuleSatisfied: json['isCELAgreementRuleSatisfied'] as bool,
      isSecoreAgreementRequired: json['isSecoreAgreementRequired'] as bool,
      isSecoreAgreementRuleSatisfied:
          json['isSecoreAgreementRuleSatisfied'] as bool,
    );

Map<String, dynamic> _$ValidationFlagsToJson(ValidationFlags instance) =>
    <String, dynamic>{
      'isPriced': instance.isPriced,
      'hasRequiredAgreements': instance.hasRequiredAgreements,
      'hasRequiredIdentities': instance.hasRequiredIdentities,
      'isValidPaymentMethod': instance.isValidPaymentMethod,
      'isPhotoIdRequired': instance.isPhotoIdRequired,
      'isPhotoIdRuleSatisfied': instance.isPhotoIdRuleSatisfied,
      'isDrivingLicenseRequired': instance.isDrivingLicenseRequired,
      'isDrivingLicenseSatisfied': instance.isDrivingLicenseSatisfied,
      'isUtilityBillRequired': instance.isUtilityBillRequired,
      'isUtilityBillRuleSatisfied': instance.isUtilityBillRuleSatisfied,
      'isCELAgreementRequired': instance.isCELAgreementRequired,
      'isCELAgreementRuleSatisfied': instance.isCELAgreementRuleSatisfied,
      'isSecoreAgreementRequired': instance.isSecoreAgreementRequired,
      'isSecoreAgreementRuleSatisfied': instance.isSecoreAgreementRuleSatisfied,
    };
