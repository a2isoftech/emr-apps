import 'package:emr_one_cashiersearch/common/enums.dart';
import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:flutter/material.dart';

extension DocumentTypeExtension on DocumentType {
  String displayName(BuildContext context) {
    switch (this) {
      case DocumentType.photoId:
      case DocumentType.drivingLicence:
        return context.l10n.proofOfIdentity;
      case DocumentType.utilityBill:
        return context.l10n.proofOfAddress;
    }
  }
}

extension AgreementTypeExtension on AgreementType {
  String displayName(BuildContext context) {
    switch (this) {
      case AgreementType.celAgreement:
        return context.l10n.celAgreement;
      case AgreementType.secoreAgreement:
        return context.l10n.secoreAgreement;
    }
  }
}
