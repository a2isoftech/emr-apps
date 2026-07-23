import 'package:emr_one_data_management/emr_one_data_management.dart';
import 'package:emr_sharedtypes/models/userRoles/permission.dart';
import 'package:emr_sharedtypes/models/userRoles/system_role.dart';
import 'package:flutter/material.dart';

class SystemRoleFormData {
  SystemRoleFormData({
    String? id,
    String? name,
    String? description,
    List<String> permissionNames = const [],
    bool active = true,
    List<Permission> permissions = const [],
  }) {
    this.id = ValueNotifier(id);
    this.name = ValueNotifier(name);
    this.description = ValueNotifier(description);
    this.permissionNames = ValueNotifier(permissionNames);
    this.active = ValueNotifier(active);
    this.permissions = ValueNotifier(permissions);
  }

  factory SystemRoleFormData.fromSystemRole(
    SystemRole systemRole,
  ) =>
      SystemRoleFormData(
        id: systemRole.id,
        name: systemRole.name,
        description: systemRole.description,
        permissionNames: systemRole.permissionNames,
        permissions: systemRole.permissions,
        active: systemRole.active,
      );

  SystemRole toSystemRole() => SystemRole(
        id: id.value ?? EmrOneDataManagementConstants.kEmptyGuid,
        name: name.value ?? '',
        description: description.value ?? '',
        permissionNames:
            permissions.value.map((permission) => permission.name).toList(),
        active: active.value,
        permissions: permissions.value,
      );

  late final ValueNotifier<String?> id;

  late final ValueNotifier<String?> name;

  late final ValueNotifier<String?> description;

  late final ValueNotifier<List<String>> permissionNames;

  late final ValueNotifier<bool> active;

  late final ValueNotifier<List<Permission>> permissions;
}
