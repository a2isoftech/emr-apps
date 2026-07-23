import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_fire_register/constants/string_constants.dart';

class SharedPreferencesService {
  SharedPreferencesService() {
    // Begin the asynchronous initialization.
    _initialization = SharedPrefsCacheProvider.createFromDefaultInstance(
      prefix: 'fireRegister.',
    ).then((provider) {
      _cacheProvider = provider;
      return provider;
    });
  }
  EmrCacheProvider? _cacheProvider;
  Future<EmrCacheProvider>? _initialization;

  /// Ensures that the SharedPreferences service is fully initialized.
  /// Call this at the start of any method that uses _cacheProvider.
  Future<void> ensureInitialized() async {
    _cacheProvider ??= await _initialization;
  }

  Future<String?> getDefaultYard() async {
    await ensureInitialized();
    final yard = await _cacheProvider?.get(StringConstants.kDefaultYardKey);

    return yard;
  }

  Future<void> setDefaultYard(String yard) async {
    await ensureInitialized();
    await _cacheProvider?.set(
      StringConstants.kDefaultYardKey,
      yard,
    );
  }
}
