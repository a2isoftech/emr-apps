import 'package:emr_one_core/config/config.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'app_config_test.mocks.dart';

@GenerateMocks([FirebaseRemoteConfig])
void main() {
  test('RemoteConfigSetup tests', () async {
    final mockRemoteConfig = MockFirebaseRemoteConfig();
    final future1 = Future<void>.value();
    final future2 = Future<void>.value();
    final futureBool = Future.value(true);

    when(mockRemoteConfig.setConfigSettings(any)).thenAnswer((_) => future1);
    when(mockRemoteConfig.setDefaults(any)).thenAnswer((_) => future2);
    when(mockRemoteConfig.fetchAndActivate()).thenAnswer((_) => futureBool);

    await RemoteConfigSetup.setupRemoteConfig(
      mockRemoteConfig,
      endpoints: {
        'primaryGateway': 'https://localhost',
      },
    );

    expect(verify(mockRemoteConfig.setConfigSettings(any)).callCount, 1);
    expect(verify(mockRemoteConfig.setDefaults(any)).callCount, 1);
    expect(verify(mockRemoteConfig.fetchAndActivate()).callCount, 1);
  });
}
