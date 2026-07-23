import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/core/utils/map/map_event_blocker_registry.dart';
import 'package:emr_one_transport/data/controllers/tracking/truck_locator_data_controller.dart';
import 'package:emr_one_transport/data/models/common/assets_filter.dart';
import 'package:emr_one_transport/data/models/user_preferences/dispatch_yards.dart';
import 'package:emr_one_transport/data/services/shared_preferences_service.dart';
import 'package:emr_one_transport/presentation/screens/assets/assetLocator/widgets/common/map_event_blocker.dart';
import 'package:flutter/widgets.dart';

class TruckLocatorFilterController extends EmrFilterController {

  TruckLocatorFilterController({
    required this.dataController,
    required this.preferencesService,
    required this.eventBlockerRegistry,
  }) : super(
          filterContentBuilder: (context, filter, controller) {
            switch (filter.key) {
              case _kYardKey:
                return MapEventBlocker(
                  registry: eventBlockerRegistry,
                  child: EmrFilterAutoComplete<DispatchYards, String>(
                    Key(filter.key),
                    filter,
                    controller,
                    (pattern, filterController) async {
                      // Filter available yards as user types
                      return dataController.allYards
                          .where((e) => (e.yardCode ?? '')
                              .toLowerCase()
                              .contains(pattern.toLowerCase()))
                          .toList();
                    },
                    close: Navigator.of(context).pop,
                    getTitle: (p0) => '${p0.yardCode}',
                    getValue: (p0) => '${p0.yardCode}',
                    multi: true,  // Allow multiple yard selection
                  ),
                );
            }
            throw Exception('$_kUnknownFilterKeyError${filter.key}');
          },
          filters: [],
          displayMode: EmrFilterDisplayMode.popover,
        );
        
  // String constants
  static const String _kYardKey = 'yard';
  static const String _kUnknownFilterKeyError = 'Unknown filter key: ';

  final TruckLocatorDataController dataController;
  final SharedPreferencesService preferencesService;
  final MapEventBlockerRegistry eventBlockerRegistry;

  bool autoRefresh = true;

  // Initialize with saved state or default to all yards
  Future<void> initialize() async {
    filters.addListener(_onFilterChanged);

    // Load from SharedPreferences
    await _loadSavedFilters();

    // If no saved state, select ALL yards by default
    if (!containsFilter(key: _kYardKey)) {
      await selectAllYards();
    }
  }

  Future<void> _loadSavedFilters() async {
    final savedFilter = await preferencesService.getAssetsFilters(
      StringConstants.kTrucksFilterKey,
    );

    if (savedFilter.yardCodes != null && savedFilter.yardCodes!.isNotEmpty) {
      filters.value = [
        EmrFilterModel<List<String>>(
          key: _kYardKey,
          name: 'Yard',
          value: savedFilter.yardCodes,
        ),
      ];
    }
  }

  Future<void> selectAllYards() async {
    final allYardCodes = dataController.allYards
        .map((yard) => yard.yardCode)
        .whereType<String>()
        .toList();

    if (allYardCodes.isNotEmpty) {
      filters.value = [
        EmrFilterModel<List<String>>(
          key: _kYardKey,
          name: 'Yard',
          value: allYardCodes,
        ),
      ];
      await _saveFilters();
    }
  }

  Future<void> _saveFilters() async {
    final yardFilter = tryGetFilter<List<String>>(key: _kYardKey);
    final assetsFilter = AssetsFilter(yardCodes: yardFilter?.value);

    await preferencesService.setAssetsFilters(
      assetsFilter,
      StringConstants.kTrucksFilterKey,
    );
  }

  void _onFilterChanged() {
    _saveFilters();
  }

  List<String> getSelectedYardCodes() {
    final yardFilter = tryGetFilter<List<String>>(key: _kYardKey);
    return yardFilter?.value ?? [];
  }

  bool hasActiveFilters() => filters.value.isNotEmpty;

  Future<void> resetFilters() async {
    filters.value = [];
    await preferencesService.setAssetsFilters(
      AssetsFilter(),
      StringConstants.kTrucksFilterKey,
    );
  }

  void toggleAutoRefresh() {
    autoRefresh = !autoRefresh;
  }

  @override
  List<EmrFilterModel<dynamic>> newFilters() {
    return [
      if (!containsFilter(key: _kYardKey))
        EmrFilterModel<List<String>>(
          key: _kYardKey,
          name: 'Yard',
        ),
    ];
  }

  void dispose() {
    filters.removeListener(_onFilterChanged);
  }
}
