import 'dart:convert';

import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'app_config_test.mocks.dart';

@GenerateMocks([FirebaseRemoteConfig, AIHelper])
void main() {
  test('AppConfig tests', () async {
    // Set up mock data.
    final mockRemoteConfig = MockFirebaseRemoteConfig();
    final mockAIHelper = MockAIHelper();

    final future = Future.value(true);
    when(mockRemoteConfig.fetchAndActivate()).thenAnswer((_) => future);

    when(mockRemoteConfig.getString('banner_message'))
        .thenReturn('Test message');

    final endpoints = RemoteConfigValue(
      const Utf8Codec().encode('{ "primaryGateway":"https://localhost" }'),
      ValueSource.valueDefault,
    );

    when(mockRemoteConfig.getValue('endpoints')).thenReturn(endpoints);

    when(mockRemoteConfig.getString('disabledRoutes')).thenReturn('["/two"]');

    // Create an instance of AppConfig.
    final appConfig = AppConfig(
      app: 'testApp',
      env: 'TEST',
      firebaseRemoteConfig: mockRemoteConfig,
      temporaryDirectory: '',
    );

    appConfig.aiHelper = mockAIHelper;

    // Check expected results.
    expect(appConfig.app, 'testApp');
    expect(appConfig.env, 'TEST');
    expect(appConfig.bannerMessage, 'Test message');
    expect(appConfig.primaryApiUrl, 'https://localhost');
    expect(appConfig.disabledRoutes.length, 1);
    expect(appConfig.disabledRoutes[0], '/two');
  });
}
