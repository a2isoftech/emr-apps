import 'package:emr_one_core/graphql/fragments/user_fragment.graphql.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:emr_sharedtypes/models/userRoles/job_role.dart';

extension UserFragmentExtensions on Fragment$UserFragment {
  User toUser() => User(
        id: id,
        active: active,
        firstName: firstName,
        lastName: lastName,
        emailAddress: emailAddress,
        employeeNumber: employeeNumber,
        jobTitle: jobTitle,
        territoryIds: territoryIds,
        defaultYardId: defaultYardId,
        jobRoleIds: jobRoleIds,
        permissions: permissions?.whereType<String>().toList() ?? [],
        created: Created(
          userInfoId: created.userInfoId,
          userName: created.userName,
          at: created.at,
        ),
        modified: Modified(
          userInfoId: created.userInfoId,
          userName: created.userName,
          at: created.at,
        ),
        territories: territories
            ?.map(
              (t) => Territory(
                t!.code,
                t.name,
                const [],
                id: t.id,
              ),
            )
            .toList(),
        defaultYard: defaultYard == null
            ? null
            : Yard(
                id: defaultYard!.id,
                yardCode: defaultYard!.yardCode,
                name: defaultYard!.shortName,
                shortName: defaultYard!.shortName,
              ),
        jobRoles: jobRoles
            ?.map(
              (jobRole) => JobRole(
                id: jobRole!.id,
                name: jobRole.name,
                description: jobRole.description,
              ),
            )
            .toList(),
        externalIds: Map.fromEntries(
          externalIds.map(
            (extId) => MapEntry(extId.key, extId.value),
          ),
        ),
      );
}
