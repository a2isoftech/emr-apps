import 'package:emr_sharedtypes/models/media_asset.dart';

class AccountDocument {

  AccountDocument(
    this.media,
    this.documentType,
    this.validFrom,
    this.validTo,
  );
    MediaAsset? media;
  String? documentType;
  DateTime? validFrom;
  DateTime? validTo;
}
