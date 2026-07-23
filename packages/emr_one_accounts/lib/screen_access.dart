import 'package:emr_one_accounts/permissions/account_management_permissions.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class ScreenAccess {
  factory ScreenAccess() {
    return _singleton;
  }

  ScreenAccess._internal();
  static final ScreenAccess _singleton = ScreenAccess._internal();

  String accessDeniedMessage() =>
      'Please contact helpdesk to get required access';

  bool canSearchRetailAccounts(BuildContext context) {
    return context.userHasPermission(
      AccountManagementPermissions.accountsMenuView,
    );
  }
}
