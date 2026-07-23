// ignore_for_file: deprecated_member_use

import 'package:emr_one_core/auth/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';

import '../eo_test_helper.dart';

void main() {
  eoPatrolTest(
    'should show login screen when logged out (mobile)',
    test: ($, httpResponses) async {
      await $('Sign-in').waitUntilVisible();

      expect($('User name & password'), findsOneWidget);
      expect($('Badge & PIN'), findsOneWidget);
    },
    loginState: LoginState.loggedOut,
  );

  eoPatrolTest(
    'should show user name in side menu when logged in (mobile)',
    test: ($, httpResponses) async {
      // No idea why andSettle needs to be false but it times out when true.
      await $(Icons.menu).tap(settlePolicy: SettlePolicy.noSettle);

      await $('A11 USER').waitUntilVisible();

      expect($('A11 USER'), findsOneWidget);
    },
  );

  eoPatrolTest(
    'should show user name when logged in (desktop)',
    screen: Screen.desktop,
    test: ($, httpResponses) async {
      // The menu icon should not show on desktop screens.
      expect($(Icons.menu), findsNothing);

      // Then the user info should be displayed.
      await $('A11 USER').waitUntilVisible();
      expect($('A11 USER'), findsOneWidget);
    },
  );
}
