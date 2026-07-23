import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/widgets.dart';

extension TaxIdTypeExtension on Enum$TaxIdType {
  String displayString(BuildContext context) {
    return switch (this) {
      Enum$TaxIdType.NONE => context.l10n.psnopNone,
      Enum$TaxIdType.EMPLOYER_IDENTIFICATION_NUMBER =>
        context.l10n.employerIdNumber,
      Enum$TaxIdType.NATIONAL_INSURANCE_NUMBER =>
        context.l10n.nationalInsuranceNumber,
      Enum$TaxIdType.INDIVIDUAL_TAXPAYER_IDENTIFICATION_NUMBER =>
        context.l10n.individualTaxPayerIdNumber,
      Enum$TaxIdType.ADOPTED_TAX_PAYER_IDENTIFICATION_NUMBER =>
        context.l10n.adoptedTaxPayerIdNumber,
      Enum$TaxIdType.UNKNOWN => '',
      Enum$TaxIdType.$unknown => '',
    };
  }
}
