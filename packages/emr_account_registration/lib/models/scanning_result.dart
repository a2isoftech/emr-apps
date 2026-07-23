class ScanningResult {
  final bool hasScannedData;
  final bool isExternal;
  final bool uploadDocumentOnly;
  final String externalLink;
  final String documentPath;
  final String accountCode;
  final String operation;

  ScanningResult({
    required this.hasScannedData,
    required this.isExternal,
    required this.uploadDocumentOnly,
    required this.documentPath,
    required this.externalLink,
    required this.accountCode,
    required this.operation,
  });
}
