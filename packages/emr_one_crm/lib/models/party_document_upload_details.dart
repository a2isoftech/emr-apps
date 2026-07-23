import 'package:emr_one_crm/graphql/trader/schema.graphql.dart';

class PartyDocumentUploadDetailModel {
  PartyDocumentUploadDetailModel({
    required this.documentTypeId,
    required this.documentSubTypeId,
    required this.contactId,
    required this.expiryDate,
    required this.documentNumber,
  });
  final Enum$DocumentTypeId documentTypeId;
  final Enum$DocumentSubTypeId documentSubTypeId;
  final int contactId;
  final DateTime expiryDate;
  final String documentNumber;
}
