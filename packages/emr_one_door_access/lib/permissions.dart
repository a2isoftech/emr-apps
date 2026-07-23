import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:flutter/material.dart';

class Permissions {
  static const String doorAccess = 'permissions/door-access';

  // Sites
  static const String viewSites = 'permissions/door-access/site/view';
  static const String manageSites = 'permissions/door-access/site/write';
  static const String deleteSite = 'permissions/door-access/site/delete/action';
  static const String restoreSite =
      'permissions/door-access/site/restore/action';
  static const String viewSiteDetails =
      'permissions/door-access/site/details/view';

  // Access Points
  static const String viewAccessPoints =
      'permissions/door-access/access-point/view';
  static const String viewAccessPointDetails =
      'permissions/door-access/access-point/details/view';
  static const String syncAccessPoints =
      'permissions/door-access/access-point/sync/action';
  static const String linkAccessPoint =
      'permissions/door-access/access-point/link/action';
  static const String delinkAccessPoint =
      'permissions/door-access/access-point/delink/action';
  static const String restrictAccessPoint =
      'permissions/door-access/access-point/restrict/action';
  static const String permitAccessPoint =
      'permissions/door-access/access-point/permit/action';
  static const String unlockAccessPoint =
      'permissions/door-access/access-point/unlock/action';

  // Controllers
  static const String viewDoorControllers =
      'permissions/door-access/controller/view';
  static const String viewDoorControllerDetails =
      'permissions/door-access/controller/details/view';
  static const String manageDoorControllers =
      'permissions/door-access/controller/write';
  static const String deleteController =
      'permissions/door-access/controller/delete/action';
  static const String restoreController =
      'permissions/door-access/controller/restore/action';

  // Schedules
  static const String viewSchedules = 'permissions/door-access/schedule/view';
  static const String manageSchedules =
      'permissions/door-access/schedule/write';

  // Users & Groups
  static const String viewUsers = 'permissions/door-access/user/view';
  static const String viewUserDetails =
      'permissions/door-access/user/details/view';
  static const String viewGroups = 'permissions/door-access/group/view';
  static const String manageGroups = 'permissions/door-access/group/write';

  // Alerts
  static const String viewAlerts = 'permissions/door-access/alert/view';
  static const String viewDoorAccessAttempts =
      'permissions/door-access/alert/door-access-attempt/read';
  static const String viewScheduleUpdates =
      'permissions/door-access/alert/schedule-update/read';

  // Floor Plans
  static const String viewFloorPlans =
      'permissions/door-access/floor-plan/view';
  static const String editFloorPlans =
      'permissions/door-access/floor-plan/write';
  static const String deleteFloorPlans =
      'permissions/door-access/floor-plan/delete/action';

  // Credentials
  static const String viewAccessCredentials =
      'permissions/door-access/credential/view';
  static const String syncAccessCredentials =
      'permissions/door-access/credential/sync/action';
  static const String deleteCredential =
      'permissions/door-access/credential/delete/action';
  static const String restoreCredential =
      'permissions/door-access/credential/restore/action';

  static List<String> getAllowedPermissions(String permission) {
    return [permission];
  }

  static bool check(BuildContext context, String permissionName) {
    return context.userHasPermission(permissionName);
  }
}
