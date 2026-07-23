import 'package:emr_one_core/widgets/filter/emr_filter.dart';

extension EmrFilterModelGraphQlExtensions on EmrFilterModel<dynamic> {
  /// Builds part of a Hot Chocolate GraphQL 'where' clause for a filter.
  Map<String, Object>? graphQlWhereValueContains() {
    if (value is String) {
      return {
        key: {'contains': value},
      };
    }

    throw Exception('Unsupported type');
  }
}
