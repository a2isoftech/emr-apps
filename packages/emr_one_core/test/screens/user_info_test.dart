// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../eo_test_helper.dart';

void main() {
  eoPatrolTest(
    'change to dark mode (mobile)',
    test: ($, httpResponses) async {
      await $(Icons.menu).tap(settlePolicy: SettlePolicy.noSettle);

      await $('A11 USER').waitUntilVisible();
      await $('A11 USER').tap(settlePolicy: SettlePolicy.noSettle);

      await $('THEME').waitUntilVisible();
      await $(Icons.dark_mode_outlined).tap();

      // Check the themeMode was saved in shared preferences.
      final sp = await SharedPreferences.getInstance();
      final themeMode = sp.getInt('settingsService:themeMode');
      expect(themeMode, 2);
    },
  );

  eoPatrolTest(
    'change to dark mode (desktop)',
    screen: Screen.desktop,
    test: ($, httpResponses) async {
      await $('A11 USER').waitUntilVisible();

      // Show the user info overlay.
      await $('A11 USER').tap(settlePolicy: SettlePolicy.noSettle);
      await $('THEME').waitUntilVisible();

      // Tap the dark mode icon.
      await $(Icons.dark_mode_outlined)
          .tap(settlePolicy: SettlePolicy.noSettle);

      // Check the themeMode was saved in shared preferences.
      final sp = await SharedPreferences.getInstance();
      final themeMode = sp.getInt('settingsService:themeMode');
      expect(themeMode, 2);
    },
  );
}
