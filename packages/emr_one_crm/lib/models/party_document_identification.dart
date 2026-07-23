class PartyDocumentIdentificationModel {
  PartyDocumentIdentificationModel({
    required this.documentName,
    required this.imageUrl,
    required this.isTagRequired,
    this.isExpired = false,
    this.tagMessage = '',
  });
  final String documentName;
  final String imageUrl;
  final bool isTagRequired;
  final bool isExpired;
  final String tagMessage;
}
