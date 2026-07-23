import 'package:emr_sharedtypes/emr_sharedtypes.dart';

class DocumentGridItem {
  DocumentGridItem({
    required this.contactName,
    required this.identification,
    required this.contactId,
  });

  final String contactName;
  final String contactId;
  final Identification identification;

  String get documentType => identification.type ?? '';
  String get subType => identification.subType ?? '';
  DateTime? get expiryDate => identification.validTo;
  DateTime? get uploadDate => identification.media?.createdAt;
  String? get uploadedByUserName => identification.media?.createdByUserName;

  bool get isExpired {
    final expiry = expiryDate;
    if (expiry == null) return false;
    return expiry.isBefore(DateTime.now());
  }
}
