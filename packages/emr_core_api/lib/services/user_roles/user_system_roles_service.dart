import 'dart:convert';

import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_core_api/extensions/system_role_extensions.dart';
import 'package:emr_core_api/graphql/mutations/user_access/system_roles/create_system_roles_data.graphql.dart';
import 'package:emr_core_api/graphql/mutations/user_access/system_roles/update_system_roles_data.graphql.dart';
import 'package:emr_core_api/graphql/queries/user_access/system_roles/load_system_role_form_data.graphql.dart';
import 'package:emr_core_api/graphql/queries/user_access/system_roles/load_system_role_search_data.graphql.dart';
import 'package:emr_one_core/data/emr_query_scope_sort_order.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/models/userRoles/system_role.dart';
import 'package:gql_exec/gql_exec.dart';

extension UserSystemRolesService on UserAccessService {
  Future<ApiResponse<(List<SystemRole>, EmrQueryGraphQLMetadata<dynamic>)>>
      searchSystemRoles({
    String? query,
    bool? active,
    String? before,
    String? after,
    int? first,
    int? last,
    List<EmrQueryScopeSortOrder>? sortOrder,
  }) async {
    try {
      String? formattedSearchQuery;

      final order = sortOrder
          ?.map(
            (e) => Input$SystemRoleSortInput.fromJson(
              jsonDecode('{ "${e.field}": "${e.direction}" }')
                  as Map<String, dynamic>,
            ),
          )
          .toList();

      if (query != null && query.isNotEmpty) {
        final tokens = query.split(' ');
        formattedSearchQuery = '${tokens.join('* ')}*';
      }

      final response = await documentNodeQueryLoadSystemRoleSearchData.execute(
        httpClient,
        Query$LoadSystemRoleSearchData.fromJson,
        variables: Variables$Query$LoadSystemRoleSearchData(
          name: formattedSearchQuery,
          active: active,
          before: before,
          after: after,
          first: first,
          last: last,
          order: order,
        ),
      );

      final systemRoles = response.data?.systemRoles?.nodes
          ?.map((element) => element.toSystemRole())
          .toList();

      final totalRecords = response.data?.systemRoles?.totalCount ?? 0;

      return ApiResponse(
        data: (
          systemRoles!,
          EmrQueryGraphQLMetadata<dynamic>(
            <dynamic, dynamic>{},
            totalRecords,
            EmrQueryGraphQLPageInfo(
              hasPreviousPage:
                  response.data?.systemRoles?.pageInfo.hasPreviousPage ?? false,
              hasNextPage:
                  response.data?.systemRoles?.pageInfo.hasNextPage ?? false,
              startCursor: response.data?.systemRoles?.pageInfo.startCursor,
              endCursor: response.data?.systemRoles?.pageInfo.endCursor,
            ),
          )
        ),
      );
    } catch (e) {
      return ApiResponse(
        success: false,
        message: 'failed to load system roles!',
      );
    }
  }

  Future<ApiResponse<SystemRole>> loadSystemRole({
    required String id,
  }) async {
    try {
      final systemRole = await fetchSystemRole(id);

      return ApiResponse(data: systemRole);
    } catch (e) {
      return ApiResponse(success: false, message: 'Failed to load system role');
    }
  }

  Future<SystemRole?> fetchSystemRole(String id) async {
    final response = await documentNodeQueryLoadSystemRoleFormData.execute(
      httpClient,
      Query$LoadSystemRoleFormData.fromJson,
      variables: Variables$Query$LoadSystemRoleFormData(id: id),
    );

    final mappedSystemRole = response.data?.systemRole?.toSystemRole();

    return mappedSystemRole;
  }

  Future<ApiResponse<SystemRole>> saveSystemRole({
    required SystemRole systemRole,
  }) async {
    try {
      SystemRole? responseSystemRole;

      if (systemRole.id == EmrCoreApiConstants.kEmptyGuid) {
        final response = await createNewSystemRole(systemRole);
        final createdSystemRole = response.data;

        if (createdSystemRole == null ||
            createdSystemRole.createSystemRole.hasError) {
          return _buildErrorResponse(
            response.errors,
            createdSystemRole?.createSystemRole.message ??
                'Failed to create new system role',
          );
        } else {
          responseSystemRole =
              createdSystemRole.createSystemRole.data?.toSystemRole();
        }
      } else {
        final response = await updateSystemRole(systemRole);
        final updatedSystemRole = response.data;

        if (updatedSystemRole == null ||
            updatedSystemRole.updateSystemRole.hasError) {
          return _buildErrorResponse(
            response.errors,
            updatedSystemRole?.updateSystemRole.message ??
                'Failed to update the system role',
          );
        } else {
          responseSystemRole =
              updatedSystemRole.updateSystemRole.data?.toSystemRole();
        }
      }

      return ApiResponse(data: responseSystemRole);
    } catch (e) {
      return ApiResponse(success: false, message: 'Failed to save system role');
    }
  }

  Future<GraphQLResponse<Mutation$CreateSystemRole>> createNewSystemRole(
    SystemRole systemRole,
  ) async =>
      documentNodeMutationCreateSystemRole.execute(
        httpClient,
        Mutation$CreateSystemRole.fromJson,
        variables: Variables$Mutation$CreateSystemRole(
          name: systemRole.name,
          description: systemRole.description,
          permissionNames: systemRole.permissionNames,
          active: systemRole.active,
        ),
      );

  Future<GraphQLResponse<Mutation$UpdateSystemRole>> updateSystemRole(
    SystemRole systemRole,
  ) async =>
      documentNodeMutationUpdateSystemRole.execute(
        httpClient,
        Mutation$UpdateSystemRole.fromJson,
        variables: Variables$Mutation$UpdateSystemRole(
          id: systemRole.id,
          name: systemRole.name,
          description: systemRole.description,
          permissionNames: systemRole.permissionNames,
          active: systemRole.active,
        ),
      );

  ApiResponse<SystemRole> _buildErrorResponse(
    List<GraphQLError>? errors,
    String defaultMessage,
  ) {
    final errorMessage = errors != null && errors.isNotEmpty
        ? errors.map((err) => err.message).join('\n')
        : defaultMessage;

    return ApiResponse(success: false, message: errorMessage);
  }
}
