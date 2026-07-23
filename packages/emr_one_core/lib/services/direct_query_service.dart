import 'dart:async';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/graphql/mutations/direct/create_direct_query.graphql.dart';
import 'package:emr_one_core/graphql/mutations/direct/delete_direct_query.graphql.dart';
import 'package:emr_one_core/graphql/mutations/direct/update_direct_query.graphql.dart';
import 'package:emr_one_core/graphql/queries/direct/exec_direct.graphql.dart';
import 'package:emr_one_core/graphql/schema.graphql.dart';
import 'package:emr_one_core/models/user_dashboards/extensions/extensions.dart';
import 'package:emr_one_core/models/user_dashboards/internal/direct_query_result.dart';
import 'package:emr_one_core/models/user_dashboards/user_dashboard_models.dart';
import 'package:http/http.dart';

class DirectQueryService {
  DirectQueryService({
    required this.httpClient,
    required this.coreApiUri,
    this.defaultCacheTtl = const Duration(
      minutes: 1,
    ),
  }) {
    SharedPrefsCacheProvider.createFromDefaultInstance().then((value) {
      emrCacheProvider = value;
    });
  }

  final BaseClient httpClient;
  final Uri coreApiUri;
  final Duration defaultCacheTtl;

  EmrCacheProvider? emrCacheProvider;

  Future<DirectQueryDefinition> createDirectQueryDefinition(
    DirectQueryDefinition directQueryDefinition,
  ) async {
    final response = await documentNodeMutationcreateDirectQuery.execute(
      httpClient,
      Mutation$createDirectQuery.fromJson,
      variables: Variables$Mutation$createDirectQuery(
        input: Input$CreateDirectQueryInput(
          title: directQueryDefinition.title.value,
          queryText: directQueryDefinition.queryText.value,
          kind: directQueryDefinition.kind.value.toSchemaEnum(),
          parameterDefinitions: directQueryDefinition.parameters.value
              .map(
                (e) => Input$DirectQueryParameterInput(
                  name: e.name.value,
                  parameterType: e.type.value.toSchemaType,
                  defaultValue: e.defaultValue.value,
                ),
              )
              .toList(),
        ),
      ),
      url: coreApiUri,
    );

    if (response.hasErrors()) {
      throw Exception(response.errors);
    }

    return response.data!.createDirectQuery.toDirectQueryDefinition();
  }

  Future<DirectQueryDefinition> updateDirectQueryDefinition(
    DirectQueryDefinition directQueryDefinition,
  ) async {
    final response = await documentNodeMutationupdateDirectQuery.execute(
      httpClient,
      Mutation$updateDirectQuery.fromJson,
      variables: Variables$Mutation$updateDirectQuery(
        input: Input$UpdateDirectQueryInput(
          id: directQueryDefinition.id!,
          title: directQueryDefinition.title.value,
          queryText: directQueryDefinition.queryText.value,
          parameterDefinitions: directQueryDefinition.parameters.value
              .map(
                (e) => Input$DirectQueryParameterInput(
                  name: e.name.value,
                  parameterType: e.type.value.toSchemaType,
                  defaultValue: e.defaultValue.value,
                ),
              )
              .toList(),
          kind: directQueryDefinition.kind.value.toSchemaEnum(),
        ),
      ),
      url: coreApiUri,
    );

    if (response.hasErrors()) {
      throw Exception(response.errors);
    }

    return response.data!.updateDirectQuery.toDirectQueryDefinition();
  }

  Future<bool> deleteDirectQueryDefinition(
    String directQueryId,
  ) async {
    final response = await documentNodeMutationdeleteDirectQuery.execute(
      httpClient,
      Mutation$deleteDirectQuery.fromJson,
      variables: Variables$Mutation$deleteDirectQuery(
        id: directQueryId,
      ),
      url: coreApiUri,
    );

    if (response.hasErrors()) {
      throw Exception(response.errors);
    }

    return response.data!.deleteDirectQuery;
  }

  Future<DirectQueryResult> executeDirectQuery(
    String queryDefinitionId,
    List<DirectQueryParameterValue> value,
  ) async {
    final response =
        await documentNodeQueryexecDirectQuery.execute<Map<String, dynamic>>(
      httpClient,
      (response) => response,
      variables: Variables$Query$execDirectQuery(
        queryId: queryDefinitionId,
        params: value
            .map(
              (e) => Input$KeyValuePairOfStringAndStringInput(
                key: e.name.value,
                value: e.value.value,
              ),
            )
            .toList(),
      ),
      url: coreApiUri,
    );

    if (response.hasErrors()) {
      throw Exception(response.errors);
    }

    return DirectQueryResult.fromJson(
      response.data!['directQuery'] as Map<String, dynamic>,
    );
  }
}
