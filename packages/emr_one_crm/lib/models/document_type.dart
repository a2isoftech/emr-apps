import 'package:emr_one_crm/graphql/trader/schema.graphql.dart';

class DocumentType {
  DocumentType({required this.id, required this.description});

  final Enum$DocumentTypeId id;
  final String description;
}
