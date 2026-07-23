import 'package:json_annotation/json_annotation.dart';

part 'validation_flags.g.dart';

@JsonSerializable(explicitToJson: true)
class ValidationFlags {
  ValidationFlags({
    required this.isPriced,
    required this.hasRequiredAgreements,
    required this.hasRequiredIdentities,
    required this.isValidPaymentMethod,
    required this.isPhotoIdRequired,
    required this.isPhotoIdRuleSatisfied,
    required this.isDrivingLicenseRequired,
    required this.isDrivingLicenseSatisfied,
    required this.isUtilityBillRequired,
    required this.isUtilityBillRuleSatisfied,
    required this.isCELAgreementRequired,
    required this.isCELAgreementRuleSatisfied,
    required this.isSecoreAgreementRequired,
    required this.isSecoreAgreementRuleSatisfied,
  });

  factory ValidationFlags.fromJson(Map<String, dynamic> json) =>
      _$ValidationFlagsFromJson(json);

  factory ValidationFlags.empty() => ValidationFlags(
        isPriced: false,
        hasRequiredAgreements: false,
        hasRequiredIdentities: false,
        isValidPaymentMethod: false,
        isPhotoIdRequired: false,
        isPhotoIdRuleSatisfied: false,
        isDrivingLicenseRequired: false,
        isDrivingLicenseSatisfied: false,
        isUtilityBillRequired: false,
        isUtilityBillRuleSatisfied: false,
        isCELAgreementRequired: false,
        isCELAgreementRuleSatisfied: false,
        isSecoreAgreementRequired: false,
        isSecoreAgreementRuleSatisfied: false,
      );

  Map<String, dynamic> toJson() => _$ValidationFlagsToJson(this);

  bool isPriced;
  bool hasRequiredAgreements;
  bool hasRequiredIdentities;
  bool isValidPaymentMethod;

  bool isPhotoIdRequired;
  bool isPhotoIdRuleSatisfied;

  bool isDrivingLicenseRequired;
  bool isDrivingLicenseSatisfied;

  bool isUtilityBillRequired;
  bool isUtilityBillRuleSatisfied;

  bool isCELAgreementRequired;
  bool isCELAgreementRuleSatisfied;

  bool isSecoreAgreementRequired;
  bool isSecoreAgreementRuleSatisfied;
}
