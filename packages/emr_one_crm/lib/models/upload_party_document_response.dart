class UploadPartyDocumentResponse {
  UploadPartyDocumentResponse({
    required this.errorDetail,
    required this.errors,
    required this.information,
    required this.modifiedEntityIds,
  });

    final List<dynamic> errorDetail;
    final dynamic errors;
    final List<String> information;
    final List<int> modifiedEntityIds;
}
