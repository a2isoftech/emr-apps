import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:emr_sharedtypes/models/userRoles/job_role.dart';

class User extends DocumentBase {
  User({
    required super.id,
    required super.created,
    required super.modified,
    super.active = true,
    super.extendedProperties = const {},
    this.firstName = '',
    this.lastName = '',
    this.emailAddress = '',
    this.employeeNumber = '',
    this.jobTitle = '',
    this.territoryIds = const [],
    this.defaultYardId = '',
    this.jobRoleIds = const [],
    this.territories,
    this.defaultYard,
    this.jobRoles = const [],
    this.permissions = const [],
    this.externalIds = const {},
  }) {
    name = '$firstName $lastName';
    defaultYardCode = defaultYardId.split('/')[1];
    defaultTerritoryCode = territoryIds.firstOrNull ?? 'A11';
  }

  final String firstName;

  final String lastName;

  final String emailAddress;

  final String employeeNumber;

  final String jobTitle;

  final List<String> territoryIds;

  final List<String> permissions;

  final Map<String, String> externalIds;

  String? externalId(String key) => externalIds[key];

  final String defaultYardId;

  late String defaultYardCode;

  late String defaultTerritoryCode;

  final List<String> jobRoleIds;

  late String name;

  bool hasPermission(String permission) => permissions.contains(permission);

  // GraphQL type extension fields.

  final List<Territory>? territories;

  final Yard? defaultYard;

  final List<JobRole>? jobRoles;
}
