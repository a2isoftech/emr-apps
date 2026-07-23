import 'package:emr_sharedtypes/emr_sharedtypes.dart';

class UpdateIdentificationInput {
  UpdateIdentificationInput({
    required this.identification,
    this.documentNumber,
    this.ocrDetectedExpirationDate,
    this.issuedByCounty,
  });

  final Identification identification;
  final String? documentNumber;
  final DateTime? ocrDetectedExpirationDate;
  final String? issuedByCounty;
}
