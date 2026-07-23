import 'dart:convert';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_stock_take/constants/app_constants.dart';
import 'package:emr_one_stock_take/models/stock_take_scale_local_storage.dart';

class SharedPreferencesService {
  SharedPreferencesService() {
    _initialization = SharedPrefsCacheProvider.createFromDefaultInstance().then(
      (provider) {
        _cacheProvider = provider;
        return provider;
      },
    );
  }

  EmrCacheProvider? _cacheProvider;
  Future<EmrCacheProvider>? _initialization;

  Future<void> ensureInitialized() async {
    _cacheProvider ??= await _initialization;
  }

  Future<StockTakeScaleLocalStorage?> getLastUsedScale(
    String stockTakeId,
  ) async {
    await ensureInitialized();
    final cachedScale = await _cacheProvider?.get(
      '${stockTakeId}_${AppConstants.lastUsedScaleKey}',
    );
    if (cachedScale == null) {
      return null;
    }

    try {
      final scale = jsonDecode(cachedScale) as Map<String, dynamic>;
      return StockTakeScaleLocalStorage.fromJson(scale);
    } catch (e) {
      return null;
    }
  }

  Future<void> setLastUsedScale(
    StockTakeScaleLocalStorage scaleLocalStorage,
  ) async {
    await ensureInitialized();
    final scaleJson = jsonEncode(scaleLocalStorage.toJson());
    await _cacheProvider?.set(
      '${scaleLocalStorage.id}_${AppConstants.lastUsedScaleKey}',
      scaleJson,
      const Duration(days: 15)
    );
  }
}
