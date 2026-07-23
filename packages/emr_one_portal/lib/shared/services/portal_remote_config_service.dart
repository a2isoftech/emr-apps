import 'dart:convert';

import 'package:emr_one_portal/graphql/cam_raven/schema.graphql.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';

class PortalRemoteConfigService {
  static Map<String, Enum$VisitFrequency> frequencies = {};
  static Map<String, String> roles = {};
  static Map<String, String> titles = {};
  static Map<String, String> errorCodes = {};
  static Map<String, int> imageCompressionSettings = {};
  static String tnc = '';
  static String tncUs = '';
  static String tncNl = '';
  static bool useCamSql = false;
  static String camSqlUrl = '';
  static Map<String, List<String>> permissions = {};

  static void reloadSettingsAndStandingData() {
    final firebaseRemoteConfig = FirebaseRemoteConfig.instance;
    permissions =
        _loadPagePermissionsForAccounts(firebaseRemoteConfig, 'pageControl');
    useCamSql = firebaseRemoteConfig.getBool('useCamSql');
    camSqlUrl = firebaseRemoteConfig.getString('camSqlUrl');
  }

  static Map<String, List<String>> _loadPagePermissionsForAccounts(
    FirebaseRemoteConfig firebaseRemoteConfig,
    String settingName,
  ) {
    final jsonString = firebaseRemoteConfig.getValue(settingName).asString();

    final parsedJson = jsonDecode(jsonString) as Map<String, dynamic>;

    final resultMap =
        (parsedJson['pagePermissions'] as Map<String, dynamic>).map(
      (key, value) => MapEntry<String, List<String>>(
        key,
        (value as List<dynamic>).map((item) => item.toString()).toList(),
      ),
    );

    return resultMap;
  }
}
