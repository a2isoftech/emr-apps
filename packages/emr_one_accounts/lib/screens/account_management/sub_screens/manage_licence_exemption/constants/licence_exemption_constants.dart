import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';

class LicenceDocumentSubtypeOption {
  const LicenceDocumentSubtypeOption({
    required this.value,
    required this.identificationType,
    required this.identificationSubType,
    this.legacyValues = const [],
  });

  final String value;
  final Enum$IdentificationType identificationType;
  final Enum$IdentificationSubType identificationSubType;
  final List<String> legacyValues;
}

class LicenceExemptionConstants {
  LicenceExemptionConstants._();

  static const int defaultLicenceValidityDays = 365;

  static const int maxLicenceValidityYearsForBackfill = 10;

  static const int wasteCarrierRegNoMaxLength = 50;

  static final List<String> allowedFileExtensions = [
    ...EmrFilePickerFormFieldFileExtensions.pictures,
  ];

  static const String wasteTransferNoteSubtype = 'WASTE_TRANSFER_NOTE';

  /// Licence exemption waste transfer documents always use address proof OCR.
  static const LicenceDocumentSubtypeOption wasteTransferNoteDocumentType =
      LicenceDocumentSubtypeOption(
    value: wasteTransferNoteSubtype,
    identificationType: Enum$IdentificationType.ADDRESS_ID,
    identificationSubType: Enum$IdentificationSubType.WASTE_TRANSFER_NOTE,
    legacyValues: ['Waste Transfer Note'],
  );
}
