import 'dart:convert';

import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_core_api/graphql/queries/user_access/load_available_permissions_data.graphql.dart';
import 'package:emr_one_core/data/emr_query_scope_sort_order.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:emr_sharedtypes/models/userRoles/permission.dart';

class UserAccessService {
  UserAccessService({
    required this.httpClient,
  });

  final CoreApiClient httpClient;

  Future<ApiResponse<(List<User>, EmrQueryGraphQLMetadata<dynamic>)>>
  searchUsers({
    String? query,
    String? before,
    String? after,
    int? first,
    int? last,
    List<EmrQueryScopeSortOrder>? sortOrder,
  }) async {
    try {
      var formattedSearchQuery = '';

      if (query != null && query.isNotEmpty) {
        final tokens = query.split(' ');
        formattedSearchQuery = '${tokens.join('* ')}*';
      }

      final input = Input$SearchUsersInput(query: formattedSearchQuery);

      final order = sortOrder
          ?.map(
            (e) => Input$UserSortInput.fromJson(
              jsonDecode('{ "${e.field}": "${e.direction}" }')
                  as Map<String, dynamic>,
            ),
          )
          .toList();

      final response = await documentNodeQueryGetAllUsers.execute(
        httpClient,
        Query$GetAllUsers.fromJson,
        variables: Variables$Query$GetAllUsers(
          input: input,
          before: before,
          after: after,
          first: first,
          last: last,
          order: order,
        ),
      );

      if (response.hasErrors()) {
        throw Exception(response.errors);
      }

      if (response.data?.users?.edges == null) {
        return ApiResponse(success: false, message: 'Failed to load users');
      }

      final users =
          response.data?.users?.edges!
              .map((element) => element.node.toUser())
              .toList() ??
          [];

      final totalRecords = response.data?.users?.totalCount ?? 0;

      return ApiResponse(
        data: (
          users,
          EmrQueryGraphQLMetadata<dynamic>(
            <dynamic, dynamic>{},
            totalRecords,
            EmrQueryGraphQLPageInfo(
              hasPreviousPage:
                  response.data?.users?.pageInfo.hasPreviousPage ?? false,
              hasNextPage: response.data?.users?.pageInfo.hasNextPage ?? false,
              startCursor: response.data?.users?.pageInfo.startCursor,
              endCursor: response.data?.users?.pageInfo.endCursor,
            ),
          ),
        ),
      );
    } catch (e) {
      return ApiResponse(success: false, message: 'Failed to load users');
    }
  }

  Future<ApiResponse<User>> getUser({
    required String id,
  }) async {
    try {
      final response = await documentNodeQueryGetUserById.execute(
        httpClient,
        Query$GetUserById.fromJson,
        variables: Variables$Query$GetUserById(id: id),
      );

      if (response.hasErrors()) {
        throw Exception(response.errors);
      }

      if (response.data?.user == null) {
        return ApiResponse(success: false, message: 'Failed to load user');
      }

      return ApiResponse(data: response.data?.user!.toUser());
    } catch (e) {
      return ApiResponse(success: false, message: 'Failed to load user');
    }
  }

  Future<ApiResponse<User>> saveUser({
    required User user,
  }) async {
    try {
      if (user.id.endsWith(EmrCoreApiConstants.kEmptyGuid)) {
        final response = await documentNodeMutationCreateUser.execute(
          httpClient,
          Mutation$CreateUser.fromJson,
          variables: Variables$Mutation$CreateUser(
            id: '', // The API will generate a GUID.
            firstName: user.firstName,
            lastName: user.lastName,
            emailAddress: user.emailAddress,
            employeeNumber: user.employeeNumber,
            jobTitle: user.jobTitle,
            territoryIds: user.territoryIds,
            defaultYardId: user.defaultYardId,
            jobRoleIds: user.jobRoleIds,
          ),
        );

        if (response.hasErrors()) {
          throw Exception(response.errors);
        }

        return response.data!.createUser!.when(
          user: (u) => ApiResponse(data: u.toUser()),
          createUserError: (error) => ApiResponse<User>(
            success: false,
            message: error.message,
          ),
          orElse: () => ApiResponse<User>(
            success: false,
            message: 'Failed to save user',
          ),
        );
      } else {
        final response = await documentNodeMutationUpdateUser.execute(
          httpClient,
          Mutation$UpdateUser.fromJson,
          variables: Variables$Mutation$UpdateUser(
            id: user.id,
            active: user.active,
            firstName: user.firstName,
            lastName: user.lastName,
            emailAddress: user.emailAddress,
            employeeNumber: user.employeeNumber,
            jobTitle: user.jobTitle,
            territoryIds: user.territoryIds,
            defaultYardId: user.defaultYardId,
            jobRoleIds: user.jobRoleIds,
          ),
        );

        if (response.hasErrors()) {
          throw Exception(response.errors);
        }

        return response.data!.updateUser!.when(
          user: (u) => ApiResponse(data: u.toUser()),
          updateUserError: (error) => ApiResponse<User>(
            success: false,
            message: error.message,
          ),
          orElse: () => ApiResponse<User>(
            success: false,
            message: 'Failed to save user',
          ),
        );
      }
    } catch (e) {
      return ApiResponse(success: false, message: 'Failed to save user');
    }
  }

  Future<List<Permission>> permissions(String query) async {
    final response = await documentNodeQueryLoadAvailablePermissions.execute(
      httpClient,
      Query$LoadAvailablePermissions.fromJson,
    );

    final elements =
        response.data?.availablePermissions
            .map(
              (element) => Permission(
                name: element.permissionCode,
                description: element.permissionName,
              ),
            )
            .toList() ??
        [];

    final matchingPermissions = validateWildcardPermission(query, elements);

    if (matchingPermissions.isNotEmpty) {
      final permissionsList = matchingPermissions
          .map((p) => '${p.name}\n${p.description}')
          .join('\n\n');

      elements.insert(
        0,
        Permission(
          name: query.toLowerCase(),
          description:
              'Add a wildcard permission\n[matches '
              '${matchingPermissions.length} permission(s)]\n\n'
              '$permissionsList',
        ),
      );
    }

    return elements;
  }

  /// Validates if a wildcard string is valid against the permissions.
  static List<Permission> validateWildcardPermission(
    String newPermission,
    List<Permission> allPermissions,
  ) {
    if (!newPermission.contains('*')) {
      return [];
    }

    final partsLowerCase = newPermission
        .toLowerCase()
        .split('*')
        .map(
          (element) => element.isEmpty ? '*' : element,
        )
        .toList();

    // We don't support multiple wildcards.
    if (partsLowerCase.length != 2) {
      return [];
    }

    return allPermissions.where((permission) {
      if (partsLowerCase.first == '*') {
        return permission.name.toLowerCase().endsWith(partsLowerCase.last);
      } else if (partsLowerCase.last == '*') {
        return permission.name.toLowerCase().startsWith(partsLowerCase.first);
      } else {
        return permission.name.toLowerCase().startsWith(partsLowerCase.first) &&
            permission.name.toLowerCase().endsWith(partsLowerCase.last);
      }
    }).toList();
  }

  Future<List<UserInfo>> searchUserInfo(
    String? query, {
    int? first,
    int? last,
    String? before,
    String? after,
    List<EmrQueryScopeSortOrder>? sortOrder,
  }) async {
    var formattedSearchQuery = '';

    if (query != null && query.isNotEmpty) {
      final tokens = query.split(' ');
      formattedSearchQuery = '*${tokens.join('* ')}*';
    }

    final order = sortOrder
        ?.map(
          (e) => Input$UserInfoSortInput.fromJson(
            jsonDecode('{ "${e.field}": "${e.direction}" }')
                as Map<String, dynamic>,
          ),
        )
        .toList();

    final response = await documentNodeQuerysearchUserInfos.execute(
      httpClient,
      Query$searchUserInfos.fromJson,
      variables: Variables$Query$searchUserInfos(
        input: Input$SearchUserInfoInput(query: formattedSearchQuery),
        first: first,
        last: last,
        before: before,
        after: after,
        order: order,
      ),
    );
    return response.data?.searchUserInfos?.nodes
            ?.map((userInfo) => UserInfo.fromJson(userInfo.toJson()))
            .toList() ??
        [];
  }

  Future<List<Team>> getTeams(String query) async {
    final response = await documentNodeQueryGetTeams.execute(
      httpClient,
      Query$GetTeams.fromJson,
    );

    final elements =
        response.data?.teams
            .map(
              (element) => Team(id: element.id, name: element.name),
            )
            .toList() ??
        [];

    return elements;
  }
}
