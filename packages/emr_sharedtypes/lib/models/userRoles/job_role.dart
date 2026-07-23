import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:emr_sharedtypes/models/userRoles/system_role.dart';

class JobRole {
  JobRole({
    required this.id,
    required this.name,
    required this.description,
    this.systemRoleIds = const [],
    this.active = true,
    this.systemRoles = const [],
    this.territoryId = '',
    this.territory,
  });
  final String id;
  final String name;
  final String description;
  final List<String> systemRoleIds;
  final String territoryId;
  final bool active;

  final List<SystemRole> systemRoles;
  final Territory? territory;
}
