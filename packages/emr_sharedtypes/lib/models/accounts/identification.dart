import 'package:emr_sharedtypes/models/models.dart';

class Identification {
  Identification(
    this.type,
    this.subType,
    this.validFrom,
    this.validTo,
    this.media,
    this.identificationNumber,
    this.name,
  );
  final String? type;
  final String? subType;
  final DateTime? validFrom;
  final DateTime? validTo;
  final MediaAsset? media;
  final String? identificationNumber;
  final String? name;
}
