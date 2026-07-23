import 'package:emr_one_core/graphql/fragments/parameter_definition_fields.graphql.dart';
import 'package:emr_one_core/models/user_dashboards/extensions/extensions.dart';
import 'package:emr_one_core/models/user_dashboards/user_dashboard_models.dart';
import 'package:flutter/foundation.dart';

extension SchemaToDirectQueryParameterDefinition
    on Fragment$DirectQueryParameterFields {
  DirectQueryParameterDefinition toDirectQueryParameterDefinition() {
    return DirectQueryParameterDefinition(
      name: ValueNotifier<String>(name),
      type: ValueNotifier<DirectQueryParameterType>(
        parameterType.fromSchemaType,
      ),
      defaultValue: defaultValue,
    );
  }
}
