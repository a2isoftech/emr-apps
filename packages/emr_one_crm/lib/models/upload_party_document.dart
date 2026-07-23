import 'dart:typed_data';

import 'package:emr_one_crm/graphql/trader/schema.graphql.dart';

class UploadPartyDocumentModel {
  UploadPartyDocumentModel({
    this.documentNumber = '',
    this.documentSubTypeId = Enum$DocumentSubTypeId.$unknown,
    this.documentType = Enum$DocumentTypeId.$unknown,
    DateTime? expirationDate,
    this.documents = const [],
    this.status = false,
    this.tradeDocumentId,
    this.contactId,
    this.existingFileId,
  }) : expiration = expirationDate ?? DateTime.now();
  int? contactId;
  String documentNumber;
  Enum$DocumentSubTypeId documentSubTypeId;
  Enum$DocumentTypeId documentType;
  String? existingFileId;
  DateTime expiration;
  List<DocumentModel> documents;
  int? tradeDocumentId;
  bool status;
}

class UploadDocumentDetail {
  UploadDocumentDetail({
    required this.fileId,
    required this.fileName,
    required this.filePath,
  });
  final String fileId;
  final String fileName;
  final String filePath;
}

class DocumentModel {
  DocumentModel({
    required this.fileBytes,
    required this.fileName,
  });
  final Uint8List fileBytes;
  final String fileName;
}
