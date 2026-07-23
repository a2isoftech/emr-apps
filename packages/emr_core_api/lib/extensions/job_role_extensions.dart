import 'package:emr_core_api/graphql/fragments/job_role_fragment.graphql.dart';
import 'package:emr_core_api/graphql/fragments/job_roles_fragment.graphql.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:emr_sharedtypes/models/userRoles/job_role.dart';
import 'package:emr_sharedtypes/models/userRoles/system_role.dart';

extension JobRoleNodes on Fragment$JobRolesFragment {
  JobRole toJobRole() => JobRole(
        id: id,
        name: name,
        description: description,
        active: active,
      );
}

extension JobRoleNode on Fragment$JobRoleFragment {
  JobRole toJobRole() => JobRole(
        id: id,
        name: name,
        description: description,
        systemRoleIds: systemRoleIds,
        territoryId: territoryId,
        active: active,
        systemRoles: systemRoles
                ?.map(
                  (element) => SystemRole(
                      id: element!.id,
                      name: element.name,
                      description: element.description,),
                )
                .toList() ??
            [],
        territory: territory != null
            ? Territory(
                territory!.code,
                territory!.name,
                id: territory!.id,
                const [],
              )
            : null,
      );
}
