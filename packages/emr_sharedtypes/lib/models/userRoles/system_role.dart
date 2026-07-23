import 'package:emr_sharedtypes/models/userRoles/permission.dart';

class SystemRole {
  SystemRole({
    required this.id,
    required this.name,
    required this.description,
    this.permissionNames = const [],
    this.active = true,
    this.permissions = const[],
  });
  final String id;
  final String name;
  final String description;
  final List<String> permissionNames;
  final bool active;
  final List<Permission> permissions;
}
