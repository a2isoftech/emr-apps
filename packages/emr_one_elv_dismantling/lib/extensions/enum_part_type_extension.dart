import 'package:emr_core_api/graphql/schema.graphql.dart';

extension EnumPartTypeExtension on Enum$PartType {
  String get formattedName {
    // Replace underscores with spaces and capitalize each word
    return name
        .toLowerCase()
        .split('_')
        .map((word) => word[0].toUpperCase() + word.substring(1))
        .join(' ');
  }
}
