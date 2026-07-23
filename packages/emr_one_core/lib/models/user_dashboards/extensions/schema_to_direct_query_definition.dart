import 'package:emr_one_core/graphql/fragments/direct_query_fragment.graphql.dart';
import 'package:emr_one_core/graphql/queries/workspace/workspace_find_elements.graphql.dart';
import 'package:emr_one_core/models/user_dashboards/extensions/extensions.dart';
import 'package:emr_one_core/models/user_dashboards/user_dashboard_models.dart';

extension SchemaToDirectQueryDefinitionExtension on Fragment$DirectQueryFields {
  DirectQueryDefinition toDirectQueryDefinition() {
    return DirectQueryDefinition(
      id: id,
      title: title,
      queryText: rql,
      kind: kind.fromSchemaEnum(),
      parameters: parameters
          .map(
            (e) => e.toDirectQueryParameterDefinition(),
          )
          .toList(),
    );
  }
}

extension SchemaNodesToDirectQueryDefinitionExtension
    on Query$workspaceLibrarySearch$workspaceLibrarySearch$nodes$$DirectQuery {
  DirectQueryDefinition toDirectQueryDefinition() {
    return DirectQueryDefinition(
      id: id,
      title: title,
      queryText: rql,
      kind: kind.fromSchemaEnum(),
      parameters: parameters
          .map(
            (e) => e.toDirectQueryParameterDefinition(),
          )
          .toList(),
    );
  }
}
