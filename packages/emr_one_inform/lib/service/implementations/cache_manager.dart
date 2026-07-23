import 'package:emr_one_inform/constants/constants_export.dart';
import 'package:emr_one_inform/service/interfaces/icache_service.dart';
import 'package:memory_cache/memory_cache.dart';

class CacheService implements ICacheService {
  @override
  void deleteCache({required String cacheKey}) {
    MemoryCache.instance.delete(cacheKey);
  }

  @override
  T? readCache<T>({required String cacheKey}) {
    return MemoryCache.instance.read<T>(cacheKey);
  }

  @override
  void saveToCache<T>({
    required String cacheKey,
    required T value,
  }) {
    MemoryCache.instance.create(
      cacheKey,
      value,
      expiry: const Duration(minutes: Configs.cacheTimeout),
    );
  }
}
