import 'package:emr_one_core/graphql/schema.graphql.dart';
import 'package:emr_one_core/models/user_dashboards/user_dashboard_models.dart';

extension DirectQueryKindExtensions on DirectQueryKind {
  Enum$DirectQueryKind toSchemaEnum() => switch (this) {
        DirectQueryKind.singleFacetValue =>
          Enum$DirectQueryKind.SINGLE_FACET_VALUE,
        DirectQueryKind.limitQuery => Enum$DirectQueryKind.LIMIT_QUERY
      };
}

extension Enum$DirectQueryKindExtensions on Enum$DirectQueryKind {
  DirectQueryKind fromSchemaEnum() => switch (this) {
        Enum$DirectQueryKind.SINGLE_FACET_VALUE =>
          DirectQueryKind.singleFacetValue,
        Enum$DirectQueryKind.LIMIT_QUERY => DirectQueryKind.limitQuery,
        _ => throw ArgumentError(
            'Unknown DirectQueryKind enum value: $this',
          ),
      };
}
