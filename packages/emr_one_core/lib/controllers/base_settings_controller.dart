import 'dart:async';

import 'package:emr_one_core/menu/eo_app_menu.dart';
import 'package:emr_one_core/services/base_settings_service.dart';
import 'package:flutter/material.dart';

/// A class that many Widgets can interact with to read user settings, update
/// user settings, or listen to user settings changes.
///
/// Controllers glue Data Services to Flutter Widgets. The SettingsController
/// uses the SettingsService to store and retrieve user settings.
class BaseSettingsController with ChangeNotifier {
  BaseSettingsController(this._settingsService);

  // Make SettingsService a private variable so it is not used directly.
  final BaseSettingsService _settingsService;

  // Make ThemeMode a private variable so it is not updated directly without
  // also persisting the changes with the SettingsService.
  late ThemeMode _themeMode;

  late EoAppMenuMode _menuMode;

  // Allow Widgets to read the user's preferred settings.
  ThemeMode get themeMode => _themeMode;

  EoAppMenuMode get menuMode => _menuMode;

  bool _loadedUserSettings = false;

  /// Load the user's settings from the SettingsService. It may load from a
  /// local database or the internet. The controller only knows it can load the
  /// settings from the service.
  Future<void> loadSettings() async {
    _themeMode = await _settingsService.themeMode();

    _menuMode = await _settingsService.menuMode();

    // Important! Inform listeners a change has occurred.
    notifyListeners();
  }

  Future<void> loadUserSettings() async {
    if (_loadedUserSettings == false) {
      _loadedUserSettings = true;

      // Important! Inform listeners a change has occurred.
      notifyListeners();
    }
  }

  /// Update and persist the ThemeMode based on the user's selection.
  Future<void> updateThemeMode(ThemeMode? newThemeMode) async {
    if (newThemeMode == null) return;

    // Dot not perform any work if new and old ThemeMode are identical
    if (newThemeMode == _themeMode) return;

    // Otherwise, store the new theme mode in memory
    _themeMode = newThemeMode;

    // Important! Inform listeners a change has occurred.
    notifyListeners();

    // Persist the changes to a local database or the internet using the
    // SettingService.
    await _settingsService.updateThemeMode(newThemeMode);
  }

  /// Update and persist the menu mode based on the user's selection.
  Future<void> updateMenuMode(
    EoAppMenuMode? mode,
  ) async {
    if (mode == null) return;

    // Do not perform any work if new and old values are identical.
    if (mode == _menuMode) return;

    // Otherwise, store the new value in memory.
    _menuMode = mode;

    // Important! Inform listeners a change has occurred.
    notifyListeners();

    // Persist the changes to a local database or the internet using the
    // SettingService.
    await _settingsService.updateMenuMode(mode);
  }
}
