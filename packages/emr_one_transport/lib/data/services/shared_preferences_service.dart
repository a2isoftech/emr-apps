import 'dart:convert';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/models/common/assets_filter.dart';
import 'package:emr_one_transport/data/models/jobs/joblist_filter.dart';
import 'package:emr_one_transport/data/models/plans/plan_filter.dart';
import 'package:emr_one_transport/data/models/scheduler/scheduler_state.dart';
import 'package:emr_one_transport/data/models/standing_order/standing_order_filter.dart';

class SharedPreferencesService {
  SharedPreferencesService() {
    // Begin the asynchronous initialization.
    _initialization =
        SharedPrefsCacheProvider.createFromDefaultInstance(
          prefix: 'transport.',
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

  Future<SchedulerState?> getSchedulerState() async {
    final cachedString = await _cacheProvider?.get(
      StringConstants.kschedulerStateKey,
    );
    if (cachedString == null) {
      return null;
    }
    try {
      // Decode the JSON string into a Map
      final schedulerStateMap =
          jsonDecode(cachedString) as Map<String, dynamic>;
      return SchedulerState.fromJson(schedulerStateMap);
    } catch (e) {
      return null;
    }
  }

  Future<void> setSchedulerState(SchedulerState state) async {
    final filterJson = jsonEncode(state.toJson());
    await _cacheProvider?.set(StringConstants.kschedulerStateKey, filterJson);
  }

  Future<JoblistFilter> getJobsOverviewFilters() async {
    await ensureInitialized();
    final filterString = await _cacheProvider?.get(
      StringConstants.kJobListFilterKey,
    );
    if (filterString == null) {
      return JoblistFilter();
    }
    // Decode the JSON string into a Map
    final joblistFilterMap = jsonDecode(filterString) as Map<String, dynamic>;
    return JoblistFilter.fromJson(joblistFilterMap);
  }

  Future<void> setJobsOverviewFilters(JoblistFilter filter) async {
    await ensureInitialized();
    final filterJson = jsonEncode(filter.toJson());
    await _cacheProvider?.set(StringConstants.kJobListFilterKey, filterJson);
  }

  Future<StandingOrderFilter> getStandingOrderFilters() async {
    await ensureInitialized();
    final filterString = await _cacheProvider?.get(
      StringConstants.kStandingOrderFilterKey,
    );
    if (filterString == null) {
      return StandingOrderFilter();
    }
    // Decode the JSON string into a Map
    final standingOrderFilterMap =
        jsonDecode(filterString) as Map<String, dynamic>;
    return StandingOrderFilter.fromJson(standingOrderFilterMap);
  }

  Future<void> setStandingOrderFilters(StandingOrderFilter filter) async {
    await ensureInitialized();
    final filterJson = jsonEncode(filter.toJson());
    await _cacheProvider?.set(
      StringConstants.kStandingOrderFilterKey,
      filterJson,
    );
  }

  Future<AssetsFilter> getAssetsFilters(String aseetScreenFilterKey) async {
    await ensureInitialized();
    final filterString = await _cacheProvider?.get(aseetScreenFilterKey);
    if (filterString == null) {
      return AssetsFilter();
    }
    // Decode the JSON string into a Map
    final assetsFilterMap = jsonDecode(filterString) as Map<String, dynamic>;
    return AssetsFilter.fromJson(assetsFilterMap);
  }

  Future<void> setAssetsFilters(
    AssetsFilter filter,
    String aseetScreenFilterKey,
  ) async {
    await ensureInitialized();
    final filterJson = jsonEncode(filter.toJson());
    await _cacheProvider?.set(aseetScreenFilterKey, filterJson);
  }

  Future<PlanFilter> getPlansOverviewFilters() async {
    await ensureInitialized();
    final filterString = await _cacheProvider?.get(
      StringConstants.kPlansFilterKey,
    );
    if (filterString == null) {
      return PlanFilter();
    }
    // Decode the JSON string into a Map
    final planFilterMap = jsonDecode(filterString) as Map<String, dynamic>;
    return PlanFilter.fromJson(planFilterMap);
  }

  Future<void> setPlansOverviewFilters(PlanFilter filter) async {
    await ensureInitialized();
    final filterJson = jsonEncode(filter.toJson());
    await _cacheProvider?.set(StringConstants.kPlansFilterKey, filterJson);
  }
}
