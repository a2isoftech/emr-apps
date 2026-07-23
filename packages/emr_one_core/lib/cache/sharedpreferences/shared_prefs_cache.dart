import 'package:emr_one_core/networking/networking.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsCacheProvider extends EmrCacheProvider {
  SharedPrefsCacheProvider(this.sharedPreferences, {this.prefix = 'emrspc'})
      : assert(prefix.isNotEmpty);
  final String prefix;
  static const String _keys = r'_$keys';

  final SharedPreferences sharedPreferences;

  /// Create an instance of SharedPrefsCacheProvider using the default
  /// SharedPreferences.getInstance() loader
  static Future<SharedPrefsCacheProvider> createFromDefaultInstance({
    String prefix = 'emrspc',
  }) async =>
      SharedPrefsCacheProvider(
        await SharedPreferences.getInstance(),
        prefix: prefix,
      );

  @override
  Future<String?> get(String key) async {
    if (sharedPreferences.containsKey('$prefix$key')) {
      final entry = sharedPreferences.getStringList('$prefix$key');

      if (entry![0].isNotEmpty) {
        final expiry = DateTime.parse(entry[0]);
        if (expiry.isBefore(DateTime.now())) {
          await sharedPreferences.remove('$prefix$key');
          return null;
        }
      }

      return entry[1];
    }

    return null;
  }

  @override
  Future<bool> set(
    String key,
    String value, [
    Duration ttl = Duration.zero,
  ]) async {
    final allKeys = sharedPreferences.getStringList('$prefix$_keys') ?? [];

    final expiry =
        ttl == Duration.zero ? '' : DateTime.now().add(ttl).toIso8601String();

    await sharedPreferences.setStringList('$prefix$key', [expiry, value]);

    if (!allKeys.contains('$prefix$key')) {
      allKeys.add('$prefix$key');
    }

    await sharedPreferences.setStringList('$prefix$_keys', allKeys);

    return true;
  }

  @override
  Future<void> clear() async {
    if (sharedPreferences.containsKey('$prefix$_keys')) {
      final allKeys = sharedPreferences.getStringList('$prefix$_keys');

      if (allKeys == null) {
        return;
      }

      for (final element in allKeys) {
        await sharedPreferences.remove(element);
      }

      await sharedPreferences.remove('$prefix$_keys');
    }
  }
}
