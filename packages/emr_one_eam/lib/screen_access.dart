import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ScreenAccess {
  factory ScreenAccess() {
    return _singleton;
  }

  ScreenAccess._internal();
  static final ScreenAccess _singleton = ScreenAccess._internal();

  String accessDeniedMessage() =>
      'Please contact helpdesk to get required access';

  bool isEAMStandardUser(BuildContext context) {
    final userInfoService =
        Provider.of<UserInfoService>(context, listen: false);
    return userInfoService.userInfo.hasPermission('viewAssetManagement');
  }

  bool isEAMAdmin(BuildContext context) {
    final userInfoService =
        Provider.of<UserInfoService>(context, listen: false);
    return userInfoService.userInfo.hasPermission('eamAdmin');
  }

  bool isEAMBusinessAdmin(BuildContext context) {
    final userInfoService =
        Provider.of<UserInfoService>(context, listen: false);
    return userInfoService.userInfo.hasPermission('eamBusinessAdmin');
  }

  bool isEAMFinanceAdmin(BuildContext context) {
    final userInfoService =
        Provider.of<UserInfoService>(context, listen: false);
    return userInfoService.userInfo.hasPermission('eamFinanceAdmin');
  }
}
