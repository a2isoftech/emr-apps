import 'package:emr_one_core/menu/eo_app_menu.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// A service that stores and retrieves user settings.
///
/// By default, this class does not persist user settings. If you'd like to
/// persist the user settings locally, use the shared_preferences package. If
/// you'd like to store settings on a web server, use the http package.
class BaseSettingsService {
  static const String kPrefix = 'settingsService';
  static const String kThemeMode = 'themeMode';
  static const String kMenuMode = 'menuMode';

  /// Loads the user's preferred ThemeMode from local storage.
  Future<ThemeMode> themeMode() async {
    final value = await getIntWithDefault(kThemeMode, ThemeMode.system.index);

    switch (value) {
      case 1:
        return ThemeMode.light;
      case 2:
        return ThemeMode.dark;
      default:
        return ThemeMode.system;
    }
  }

  Future<EoAppMenuMode> menuMode() async {
    final value = await getIntWithDefault(
      kMenuMode,
      EoAppMenuMode.iconAndLabel.index,
    );

    switch (value) {
      case 0:
        return EoAppMenuMode.icon;
      case 1:
      default:
        return EoAppMenuMode.iconAndLabel;
    }
  }

  /// Persists the user's preferred ThemeMode to local storage.
  Future<void> updateThemeMode(ThemeMode theme) =>
      setInt(kThemeMode, theme.index);

  Future<void> updateMenuMode(EoAppMenuMode mode) =>
      setInt(kMenuMode, mode.index);

  Future<int> getIntWithDefault(String key, int defaultValue) async {
    final prefs = await SharedPreferences.getInstance();

    final value = prefs.getInt('$kPrefix:$key');

    return value ?? defaultValue;
  }

  Future<bool> setInt(String key, int value) async {
    final prefs = await SharedPreferences.getInstance();

    return prefs.setInt('$kPrefix:$key', value);
  }

  Future<bool> setString(String key, String value) async {
    final prefs = await SharedPreferences.getInstance();

    return prefs.setString('$kPrefix:$key', value);
  }

  Future<String> getStringWithDefault(String key, String defaultValue) async {
    final prefs = await SharedPreferences.getInstance();

    final value = prefs.getString('$kPrefix:$key');

    return value ?? defaultValue;
  }
}
