import 'package:emr_account_registration/signup.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StorageService {
  static const kEmailForSignIn = 'emailForSignIn';
  static const kLocatedAtCountryCode = 'locatedAtCountryCode';

  static Future<String> getEmailForSignIn() => _get(kEmailForSignIn);

  static Future<void> setEmailForSignIn(String email) =>
      _set(kEmailForSignIn, email);

  static Future<CountryData?> getLocatedAtCountryCode() async {
    return CountryData.getCountryData(await _get(kLocatedAtCountryCode));
  }

  static Future<void> setLocatedAtCountryCode(
    String val, {
    bool forceSet = false,
  }) async {
    final currentValue = await getLocatedAtCountryCode();
    if (forceSet || currentValue == null) {
      await _set(kLocatedAtCountryCode, val);
    }
  }

  static Future<String> _get(String key, {String defaultValue = ''}) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(key) ?? defaultValue;
  }

  static Future<void> _set(String key, String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value);
  }
}
