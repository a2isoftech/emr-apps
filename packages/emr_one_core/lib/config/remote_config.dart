import 'dart:convert';

import 'package:firebase_remote_config/firebase_remote_config.dart';

class RemoteConfigSetup {
  static Future<FirebaseRemoteConfig> setupRemoteConfig(
    FirebaseRemoteConfig remoteConfig, {
    required Map<String, String> endpoints,
  }) async {
    await remoteConfig.setConfigSettings(
      RemoteConfigSettings(
        fetchTimeout: const Duration(seconds: 10),
        minimumFetchInterval: const Duration(minutes: 5),
      ),
    );

    await remoteConfig.setDefaults(<String, dynamic>{
      'formsEngineUploadTimer': 60,
      'banner_message': '',
      'disabledRoutes': '[]',
      'ffExperiments': '[]',
      'party_results_ttl_seconds': '60',
      'enableNotifications': false,
      'useCAM': false,
      'endpoints': jsonEncode(endpoints),
      'weighbridgeIds': '{}',
      'northernCatPrinters': '{}',
      'head_office_addresses': jsonEncode({
        'UK': [
          'Sirius House',
          'Delta Crescent',
          'Warrington',
          'WA5 7NS',
          'United Kingdom',
          '01925 715400',
        ],
        'US': [
          '201 North Front Street',
          'Camden',
          'NJ 08102',
          'USA',
          '(856) 583-1830',
        ],
        'DE': [
          'EMR European Metal Recycling GmbH',
          'Breslauer Straße 2-4',
          '20457 Hamburg',
          '+49 40 766 140-0',
        ],
        'NL': [
          'Quebecstraat 3',
          '3197 KL',
          'Rotterdam',
          'Botlek',
          'Nederland',
          '+31 0181 291212',
        ],
      }),
      'logger_configurations': jsonEncode({
        'webConsoleLogger': {
          'levels': [
            'warning',
            'error',
            'critical',
          ],
        },
        'textFileLogger': {
          'levels': [
            'information',
            'event',
            'warning',
            'error',
            'critical',
          ],
          'retentionInDays': 7,
          'daysToShare': 2,
        },
        'appInsightsEventLogger': {
          'levels': [
            'event',
          ],
        },
        'appInsightsTelemetryLogger': {
          'levels': [
            'warning',
            'error',
            'critical',
          ],
        },
      }),
    });

    await remoteConfig.fetchAndActivate();

    return remoteConfig;
  }
}
