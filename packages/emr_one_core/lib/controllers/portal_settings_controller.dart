import 'dart:async';

import 'package:emr_one_core/controllers/base_settings_controller.dart';
import 'package:emr_one_core/services/portal_settings_service.dart';

/// A class that many Widgets can interact with to read user settings, update
/// user settings, or listen to user settings changes.
///
/// Controllers glue Data Services to Flutter Widgets. The SettingsController
/// uses the SettingsService to store and retrieve user settings.
class PortalSettingsController extends BaseSettingsController {
  PortalSettingsController(
    this._portalSettingsService,
  ) : super(
          _portalSettingsService,
        );

  // Ignore for now. This is just here to get this to build
  // ignore: unused_field
  final PortalSettingsService _portalSettingsService;

  bool _loadedUserSettings = false;

  /// Load the user's settings from the SettingsService. It may load from a
  /// local database or the internet. The controller only knows it can load the
  /// settings from the service.
  @override
  Future<void> loadSettings() async {
    // load common settings
    await super.loadSettings();

    // Important! Inform listeners a change has occurred.
    notifyListeners();
  }

  @override
  Future<void> loadUserSettings() async {
    if (_loadedUserSettings == false) {
      _loadedUserSettings = true;

      //load common user settings
      await super.loadUserSettings();

      // Important! Inform listeners a change has occurred.
      notifyListeners();
    }
  }
}
