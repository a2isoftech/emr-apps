import 'package:emr_core_api/graphql/fragments/system_role_fragment.graphql.dart';
import 'package:emr_core_api/graphql/fragments/system_roles_fragment.graphql.dart';
import 'package:emr_sharedtypes/models/userRoles/permission.dart';
import 'package:emr_sharedtypes/models/userRoles/system_role.dart';

extension SystemRolesNodes on Fragment$SystemRolesFragment {
  SystemRole toSystemRole() => SystemRole(
        id: id,
        name: name,
        description: description,
        active: active,
      );
}

extension SystemRoleFormData on Fragment$SystemRoleFragment {
  SystemRole toSystemRole() => SystemRole(
        id: id,
        name: name,
        description: description,
        permissionNames: permissionNames,
        permissions: permissions
                ?.map(
                  (element) => Permission(
                    name: element!.name,
                    description: element.description,
                  ),
                )
                .toList() ??
            [],
        active: active,
      );
}
