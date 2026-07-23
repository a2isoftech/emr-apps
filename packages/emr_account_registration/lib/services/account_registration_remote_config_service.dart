import 'dart:convert';

import 'package:emr_account_registration/signup.dart';
import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';

class AccountRegistrationRemoteConfigService {
  static Map<String, String> roles = {};
  static Map<String, String> industryGroups = {};
  static Map<String, String> errorCodes = {};
  static Map<String, Enum$VisitFrequency> frequencies = {};
  static Map<String, int> imageCompressionSettings = {};
  static String tncNl = '';
  static Map<String, String> titles = {};
  static String tnc = '';
  static String secoreTnc = '';
  static String tncUs = '';
  static bool isInEmrApps = true;
  static bool useStaticModelForJourney = false;
  static bool hideCEL = false;

  static void reloadSettingsAndStandingData(Map<String, dynamic> overrides) {
    final firebaseRemoteConfig = FirebaseRemoteConfig.instance;
    roles = _loadRoles(firebaseRemoteConfig, overrides);
    industryGroups = _loadMap<String>(
      firebaseRemoteConfig,
      'industry_group_options',
      overrides,
    );
    errorCodes = _loadMap<String>(
      firebaseRemoteConfig,
      'registration_error_codes',
      overrides,
    );
    frequencies = _loadFrequencies(firebaseRemoteConfig, overrides);
    imageCompressionSettings = _loadMap<int>(
      firebaseRemoteConfig,
      'imageCompressionSettings',
      overrides,
    );
    tncNl = firebaseRemoteConfig.getString('signup_tnc_nl');
    titles = _loadMap<String>(firebaseRemoteConfig, 'user_name_prefix_options', overrides);
    tnc = firebaseRemoteConfig.getString('signup_tnc');
    secoreTnc = firebaseRemoteConfig.getString('signup_tnc_secore');
    tncUs = firebaseRemoteConfig.getString('signup_tnc_us');
    isInEmrApps = firebaseRemoteConfig.getBool('isInEmrApps');
    useStaticModelForJourney = firebaseRemoteConfig.getBool(
      'useStaticModelForJourney',
    );
    hideCEL = firebaseRemoteConfig.getBool('show_cash_withdrawal_consent');
  }

  static Map<String, Enum$VisitFrequency> _loadFrequencies(
    FirebaseRemoteConfig firebaseRemoteConfig,
    Map<String, dynamic> overrides,
  ) {
    final override = overrides['visitFrequencies'] as Map<String, dynamic>?;

    if (override != null) {
      return override.map(
        (key, value) => MapEntry<String, Enum$VisitFrequency>(
          key,
          AccountRegistrationEnumService.stringToEnum(
                value,
                Enum$VisitFrequency.values,
              ) ??
              Enum$VisitFrequency.$unknown,
        ),
      );
    }
    final jsonString = firebaseRemoteConfig
        .getValue('visitFrequencies')
        .asString();

    if (jsonString.isEmpty) {
      return {};
    }

    final jsonMap = jsonDecode(jsonString) as Map<String, dynamic>;

    final resultMap = jsonMap.map(
      (key, value) => MapEntry<String, Enum$VisitFrequency>(
        key,
        fromJson$Enum$VisitFrequency(value as String),
      ),
    );

    return resultMap;
  }

  static Map<String, T> _loadMap<T>(
    FirebaseRemoteConfig firebaseRemoteConfig,
    String settingName,
    Map<String, dynamic> overrides,
  ) {
    final override = overrides[settingName] as Map<String, dynamic>?;

    if (override != null) {
      return override.map((key, value) => MapEntry<String, T>(key, value as T));
    }

    final jsonString = firebaseRemoteConfig.getValue(settingName).asString();

    if (jsonString.isEmpty) {
      return {};
    }

    final jsonMap = jsonDecode(jsonString) as Map<String, dynamic>;

    final resultMap = jsonMap.map(
      (key, value) => MapEntry<String, T>(key, value as T),
    );

    return resultMap;
  }

  static Map<String, String> _loadRoles(
    FirebaseRemoteConfig firebaseRemoteConfig,
    Map<String, dynamic> overrides,
  ) {
    final override = overrides['roles'] as Map<String, dynamic>?;

    if (override != null) {
      return override.map(
        (key, value) => MapEntry<String, String>(key, value.toString()),
      );
    }
    final jsonString = firebaseRemoteConfig.getValue('roles').asString();

    if (jsonString.isEmpty) {
      return {};
    }

    final jsonMap = jsonDecode(jsonString) as Map<String, dynamic>;

    final resultMap = jsonMap.map(
      (key, value) => MapEntry<String, String>(key, value.toString()),
    );

    return resultMap;
  }
}
