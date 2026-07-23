import 'package:emr_one_data_management/emr_one_data_management.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:emr_sharedtypes/models/userRoles/job_role.dart';
import 'package:emr_sharedtypes/models/userRoles/system_role.dart';
import 'package:flutter/material.dart';

class JobRoleFormData {
  JobRoleFormData({
    String? id,
    String? name,
    String? description,
    List<SystemRole>? systemRoles,
    Territory? territory,
    bool active = true,
  }) {
    this.id = ValueNotifier(id);
    this.name = ValueNotifier(name);
    this.description = ValueNotifier(description);
    this.systemRoles = ValueNotifier(systemRoles ?? []);
    this.territory = ValueNotifier(territory);
    this.active = ValueNotifier(active);
  }
  factory JobRoleFormData.fromJobRole(
    JobRole jobRole,
  ) =>
      JobRoleFormData(
        id: jobRole.id,
        name: jobRole.name,
        description: jobRole.description,
        systemRoles: jobRole.systemRoles,
        territory: jobRole.territory,
        active: jobRole.active,
      );
  JobRole toJobRole() {
    return JobRole(
      id: id.value ?? EmrOneDataManagementConstants.kEmptyGuid,
      name: name.value ?? '',
      description: description.value ?? '',
      territoryId: territory.value?.id ?? '',
      active: active.value,
      systemRoleIds:
          systemRoles.value.map((systemRole) => systemRole.id).toList(),
      systemRoles: systemRoles.value,
    );
  }

  late final ValueNotifier<String?> id;
  late final ValueNotifier<String?> name;
  late final ValueNotifier<String?> description;
  late final ValueNotifier<List<String>> systemRoleIds;
  late final ValueNotifier<List<String>> territoryRoleIds;
  late final ValueNotifier<bool> active;

  late final ValueNotifier<List<SystemRole>> systemRoles;
  late final ValueNotifier<Territory?> territory;
}
