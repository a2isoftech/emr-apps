import 'package:emr_one_core/graphql/schema.graphql.dart';
import 'package:emr_one_core/models/user_dashboards/user_dashboard_models.dart';

extension SchemaToDirectQueryParameterTypeExtension
    on Enum$DirectQueryParameterType {
  DirectQueryParameterType get fromSchemaType {
    switch (this) {
      case Enum$DirectQueryParameterType.STRING:
        return DirectQueryParameterType.string;
      case Enum$DirectQueryParameterType.NUMBER:
        return DirectQueryParameterType.number;
      case Enum$DirectQueryParameterType.DATE:
        return DirectQueryParameterType.date;
      case Enum$DirectQueryParameterType.BOOLEAN:
        return DirectQueryParameterType.boolean;
      case Enum$DirectQueryParameterType.$unknown:
        throw UnimplementedError();
    }
  }
}
