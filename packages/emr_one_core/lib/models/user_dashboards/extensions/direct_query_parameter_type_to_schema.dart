import 'package:emr_one_core/graphql/schema.graphql.dart';
import 'package:emr_one_core/models/user_dashboards/user_dashboard_models.dart';

extension DirectQueryParameterTypeExtension on DirectQueryParameterType {
  Enum$DirectQueryParameterType get toSchemaType {
    switch (this) {
      case DirectQueryParameterType.string:
        return Enum$DirectQueryParameterType.STRING;
      case DirectQueryParameterType.number:
        return Enum$DirectQueryParameterType.NUMBER;
      case DirectQueryParameterType.date:
        return Enum$DirectQueryParameterType.DATE;
      case DirectQueryParameterType.boolean:
        return Enum$DirectQueryParameterType.BOOLEAN;
    }
  }
}
