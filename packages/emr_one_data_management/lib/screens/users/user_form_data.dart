import 'package:emr_one_data_management/emr_one_data_management_constants.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:emr_sharedtypes/models/userRoles/job_role.dart';
import 'package:flutter/foundation.dart';

// @EmrFormModel
class UserFormData {
  UserFormData({
    // Basic User.
    String? id,
    bool? active,
    String? firstName,
    String? lastName,
    String? emailAddress,
    String? employeeNumber,
    String? jobTitle,
    List<Territory>? territories,
    Yard? defaultYard,
    List<JobRole>? jobRoles,
    this.created,
    this.modified,
  }) {
    // Basic User.
    this.id = ValueNotifier(id);
    this.active = ValueNotifier(active ?? false);
    this.firstName = ValueNotifier(firstName);
    this.lastName = ValueNotifier(lastName);
    this.emailAddress = ValueNotifier(emailAddress);
    this.employeeNumber = ValueNotifier(employeeNumber);
    this.jobTitle = ValueNotifier(jobTitle);
    this.territories = ValueNotifier(territories ?? []);
    this.defaultYard = ValueNotifier(defaultYard);
    this.jobRoles = ValueNotifier(jobRoles ?? []);
  }

  factory UserFormData.fromUser(User user) => UserFormData(
        // Basic User.
        id: user.id,
        active: user.active,
        firstName: user.firstName,
        lastName: user.lastName,
        emailAddress: user.emailAddress,
        employeeNumber: user.employeeNumber,
        jobTitle: user.jobTitle,
        territories: user.territories,
        defaultYard: user.defaultYard,
        jobRoles: user.jobRoles,
        created: user.created,
        modified: user.modified,
      );

  User toUser() => User(
        // Basic User.
        id: id.value ?? EmrOneDataManagementConstants.kEmptyGuid,
        active: active.value,
        firstName: firstName.value ?? '',
        lastName: lastName.value ?? '',
        emailAddress: emailAddress.value ?? '',
        employeeNumber: employeeNumber.value ?? '',
        jobTitle: jobTitle.value ?? '',
        territoryIds:
            territories.value.map((territory) => territory.id!).toList(),
        defaultYardId: defaultYard.value?.id ?? '',
        jobRoleIds: jobRoles.value.map((jobRole) => jobRole.id).toList(),
        created: Created(
          userInfoId: created?.userInfoId ?? '',
          userName: created?.userName ?? '',
          at: created?.at,
        ),
        modified: Modified(
          userInfoId: modified?.userInfoId ?? '',
          userName: modified?.userName ?? '',
          at: modified?.at,
        ),
      );

  // Basic User.
  late final ValueNotifier<String?> id;

  late final ValueNotifier<bool> active;

  late final ValueNotifier<String?> firstName;

  late final ValueNotifier<String?> lastName;

  late final ValueNotifier<String?> emailAddress;

  late final ValueNotifier<String?> employeeNumber;

  late final ValueNotifier<String?> jobTitle;

  late final ValueNotifier<List<Territory>> territories;

  late final ValueNotifier<Yard?> defaultYard;

  late final ValueNotifier<List<JobRole>> jobRoles;

  late final Created? created;

  late final Modified? modified;
}
