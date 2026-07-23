import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/constants/constants_export.dart';
import 'package:emr_one_inform/models/company_preference.dart';
import 'package:emr_one_inform/models/schedule_task_models.dart';
import 'package:emr_one_inform/models/yard_details.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InformJobs {
  static JobsCount? allJobsCounts;
  static YardDetails? yardDetails;
  static Preference? preference;
}

class ScreenAccess {
  factory ScreenAccess() {
    return _singleton;
  }

  ScreenAccess._internal();
  static final ScreenAccess _singleton = ScreenAccess._internal();

  bool isImportTemplateAllowed(BuildContext context) {
    final userInfoService = Provider.of<UserInfoService>(context);
    return userInfoService.userInfo
        .hasPermission(PermissionConstants.informImportTemplate);
  }

  bool isCategoryCreateAllowed(BuildContext context) {
    final userInfoService = Provider.of<UserInfoService>(context);
    return userInfoService.userInfo
        .hasPermission(PermissionConstants.informCreateCategory);
  }

  bool isListCreateAllowed(BuildContext context) {
    final userInfoService = Provider.of<UserInfoService>(context);
    return userInfoService.userInfo
        .hasPermission(PermissionConstants.informCreateList);
  }

  bool isSchedulerCreateAllowed(BuildContext context) {
    final userInfoService = Provider.of<UserInfoService>(context);
    return userInfoService.userInfo
        .hasPermission(PermissionConstants.informScheduler);
  }

  bool isTeamsCreateAllowed(BuildContext context) {
    final userInfoService = Provider.of<UserInfoService>(context);
    return userInfoService.userInfo
        .hasPermission(PermissionConstants.informTeam);
  }

  bool canValidateJobs(BuildContext context) {
    final userInfoService = Provider.of<UserInfoService>(context);
    return userInfoService.userInfo
        .hasPermission(PermissionConstants.informVerification);
  }

  bool canToggleDigitalSignatureInTemplate(BuildContext context) {
    final userInfoService = Provider.of<UserInfoService>(context);
    return userInfoService.userInfo
        .hasPermission(PermissionConstants.informSignature);
  }

  bool canCreateTemplate(BuildContext context) {
    final userInfoService = Provider.of<UserInfoService>(context);
    return userInfoService.userInfo
        .hasPermission(PermissionConstants.informCreateTemplate);
  }

  bool canPublishUnpublishTemplate(BuildContext context) {
    final userInfoService = Provider.of<UserInfoService>(context);
    return userInfoService.userInfo
        .hasPermission(PermissionConstants.informPublishUnPublishTemplate);
  }

  bool isMROSyncAllowed(BuildContext context) {
    final userInfoService = Provider.of<UserInfoService>(context);
    return userInfoService.userInfo
        .hasPermission(PermissionConstants.infromMroSync);
  }

  bool canCreateTask(BuildContext context) {
    final userInfoService = Provider.of<UserInfoService>(context);
    return userInfoService.userInfo
        .hasPermission(PermissionConstants.informCreateTask);
  }

  bool canCreateQuickTask(BuildContext context) {
    final userInfoService = Provider.of<UserInfoService>(context);
    return userInfoService.userInfo
        .hasPermission(PermissionConstants.informCreateQuickTask);
  }

  bool canCloneTask(BuildContext context) {
    final userInfoService = Provider.of<UserInfoService>(context);
    return userInfoService.userInfo
        .hasPermission(PermissionConstants.informCloneTask);
  }

  bool canEditTask(BuildContext context) {
    final userInfoService = Provider.of<UserInfoService>(context);
    return userInfoService.userInfo
            .hasPermission(PermissionConstants.informEditTask) ||
        userInfoService.userInfo.hasPermission(PermissionConstants.inform);
  }

  bool canDeleteTask(BuildContext context) {
    final userInfoService = Provider.of<UserInfoService>(context);
    return userInfoService.userInfo
        .hasPermission(PermissionConstants.informDeleteTask);
  }

  bool canDeleteTemplate(BuildContext context) {
    final userInfoService = Provider.of<UserInfoService>(context);
    return userInfoService.userInfo
        .hasPermission(PermissionConstants.informDeleteTemplate);
  }

  bool isCompanyPreferenceAllowed(BuildContext context) {
    final userInfoService = Provider.of<UserInfoService>(context);
    return userInfoService.userInfo
        .hasPermission(PermissionConstants.informCompanyPref);
  }

  bool isDiagnsoticAllowed(BuildContext context) {
    final userInfoService = Provider.of<UserInfoService>(context);
    return userInfoService.userInfo
        .hasPermission(PermissionConstants.informDiagnostic);
  }

  bool isDeviceDataAllowed(BuildContext context) {
    final userInfoService = Provider.of<UserInfoService>(context);
    return userInfoService.userInfo.hasPermission(PermissionConstants.inform);
  }

  bool isD365DataSyncAllowed(BuildContext context) {
    final userInfoService = Provider.of<UserInfoService>(context);
    return userInfoService.userInfo
        .hasPermission(PermissionConstants.informD365DataSyncAllowed);
  }
}
