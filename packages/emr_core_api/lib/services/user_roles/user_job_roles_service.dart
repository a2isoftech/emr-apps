import 'dart:convert';

import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_core_api/extensions/job_role_extensions.dart';
import 'package:emr_core_api/graphql/mutations/user_access/job_roles/create_job_roles_data.graphql.dart';
import 'package:emr_core_api/graphql/mutations/user_access/job_roles/update_job_roles_data.graphql.dart';
import 'package:emr_core_api/graphql/queries/user_access/job_roles/load_job_role_form_data.graphql.dart';
import 'package:emr_core_api/graphql/queries/user_access/job_roles/load_job_role_search_data.graphql.dart';
import 'package:emr_one_core/data/emr_query_scope_sort_order.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/models/userRoles/job_role.dart';
import 'package:gql_exec/gql_exec.dart';

extension UserJobRolesService on UserAccessService {
  Future<ApiResponse<(List<JobRole>, EmrQueryGraphQLMetadata<dynamic>)>>
      searchJobRoles({
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

      if (query != null && query.isNotEmpty) {
        final tokens = query.split(' ');
        formattedSearchQuery = '${tokens.join('* ')}*';
      }

      final order = sortOrder
          ?.map(
            (e) => Input$JobRoleSortInput.fromJson(
              jsonDecode('{ "${e.field}": "${e.direction}" }')
                  as Map<String, dynamic>,
            ),
          )
          .toList();

      final response = await documentNodeQueryLoadJobRoleSearchData.execute(
        httpClient,
        Query$LoadJobRoleSearchData.fromJson,
        variables: Variables$Query$LoadJobRoleSearchData(
          name: formattedSearchQuery,
          active: active,
          before: before,
          after: after,
          first: first,
          last: last,
          order: order,
        ),
      );

      final jobRoles = response.data?.jobRoles?.nodes
          ?.map((jobRoleNode) => jobRoleNode.toJobRole())
          .toList();

      final totalRecords = response.data?.jobRoles?.totalCount ?? 0;

      return ApiResponse(
        data: (
          jobRoles!,
          EmrQueryGraphQLMetadata<dynamic>(
            <dynamic, dynamic>{},
            totalRecords,
            EmrQueryGraphQLPageInfo(
              hasPreviousPage:
                  response.data?.jobRoles?.pageInfo.hasPreviousPage ?? false,
              hasNextPage:
                  response.data?.jobRoles?.pageInfo.hasNextPage ?? false,
              startCursor: response.data?.jobRoles?.pageInfo.startCursor,
              endCursor: response.data?.jobRoles?.pageInfo.endCursor,
            ),
          )
        ),
      );
    } catch (e) {
      return ApiResponse(
        success: false,
        message: 'failed to load job roles!',
      );
    }
  }

  Future<ApiResponse<JobRole>> loadJobRole({
    required String id,
  }) async {
    try {
      final jobRole = await fetchJobRole(id);

      return ApiResponse(data: jobRole);
    } catch (e) {
      return ApiResponse(message: 'failed to load job role!');
    }
  }

  Future<JobRole?> fetchJobRole(String id) async {
    final response = await documentNodeQueryLoadJobRoleFormData.execute(
      httpClient,
      Query$LoadJobRoleFormData.fromJson,
      variables: Variables$Query$LoadJobRoleFormData(id: id),
    );
    final mappedSystemRole = response.data?.jobRole?.toJobRole();

    return mappedSystemRole;
  }

  Future<ApiResponse<JobRole>> saveJobRole({required JobRole jobRole}) async {
    try {
      JobRole? responseJobRole;

      if (jobRole.id == EmrCoreApiConstants.kEmptyGuid) {
        final response = await createNewJobRole(jobRole);
        final createdJobRole = response.data;

        if (createdJobRole == null || createdJobRole.createJobRole.hasError) {
          return _buildErrorResponse(
            response.errors,
            createdJobRole?.createJobRole.message ??
                'Failed to create new job role',
          );
        } else {
          responseJobRole = createdJobRole.createJobRole.data?.toJobRole();
        }
      } else {
        final response = await updateJobRole(jobRole);
        final updatedSystemRole = response.data;

        if (updatedSystemRole == null ||
            updatedSystemRole.updateJobRole.hasError) {
          return _buildErrorResponse(
            response.errors,
            updatedSystemRole?.updateJobRole.message ??
                'Failed to update the job role',
          );
        } else {
          responseJobRole = jobRole;
        }
      }

      return ApiResponse(data: responseJobRole);
    } catch (e) {
      return ApiResponse(success: false, message: 'Failed to save system role');
    }
  }

  Future<GraphQLResponse<Mutation$CreateJobRole>> createNewJobRole(
    JobRole jobRole,
  ) async =>
      documentNodeMutationCreateJobRole.execute(
        httpClient,
        Mutation$CreateJobRole.fromJson,
        variables: Variables$Mutation$CreateJobRole(
          name: jobRole.name,
          description: jobRole.description,
          systemRoleIds: jobRole.systemRoleIds,
          territoryId: jobRole.territoryId,
          active: jobRole.active,
        ),
      );

  Future<GraphQLResponse<Mutation$UpdateJobRole>> updateJobRole(
    JobRole jobRole,
  ) async =>
      documentNodeMutationUpdateJobRole.execute(
        httpClient,
        Mutation$UpdateJobRole.fromJson,
        variables: Variables$Mutation$UpdateJobRole(
          id: jobRole.id,
          name: jobRole.name,
          description: jobRole.description,
          systemRoleIds: jobRole.systemRoleIds,
          territoryId: jobRole.territoryId,
          active: jobRole.active,
        ),
      );

  ApiResponse<JobRole> _buildErrorResponse(
    List<GraphQLError>? errors,
    String defaultMessage,
  ) {
    final errorMessage = errors != null && errors.isNotEmpty
        ? errors.map((err) => err.message).join('\n')
        : defaultMessage;

    return ApiResponse(success: false, message: errorMessage);
  }
}
