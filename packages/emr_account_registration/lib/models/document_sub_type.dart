import 'package:emr_core_api/graphql/schema.graphql.dart';

class DocumentSubType {
  DocumentSubType({
    required this.name,
    required this.value,
    this.recommended = false,
  });

  final String name;
  final Enum$IdentificationSubType value;
  final bool recommended;
}
