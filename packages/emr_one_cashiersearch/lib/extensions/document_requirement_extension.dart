import 'package:emr_one_cashiersearch/common/enums.dart';
import 'package:emr_one_cashiersearch/models/document_requirement.dart';
import 'package:emr_one_cashiersearch/models/validation_flags.dart';

extension DocumentRequirementExtension on ValidationFlags {
  List<DocumentRequirement<DocumentType>> get documents => [
    DocumentRequirement(
      type: DocumentType.photoId,
      isRequired: isPhotoIdRequired,
      isSatisfied: isPhotoIdRuleSatisfied,
    ),
    DocumentRequirement(
      type: DocumentType.drivingLicence,
      isRequired: isDrivingLicenseRequired,
      isSatisfied: isDrivingLicenseSatisfied,
    ),
    DocumentRequirement(
      type: DocumentType.utilityBill,
      isRequired: isUtilityBillRequired,
      isSatisfied: isUtilityBillRuleSatisfied,
    ),
  ];

  List<DocumentRequirement<AgreementType>> get agreements => [
    DocumentRequirement(
      type: AgreementType.celAgreement,
      isRequired: isCELAgreementRequired,
      isSatisfied: isCELAgreementRuleSatisfied,
    ),
    DocumentRequirement(
      type: AgreementType.secoreAgreement,
      isRequired: isSecoreAgreementRequired,
      isSatisfied: isSecoreAgreementRuleSatisfied,
    ),
  ];
}
