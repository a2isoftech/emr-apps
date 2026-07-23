import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/controllers/trucks/truck_data_controller.dart';
import 'package:emr_one_transport/data/helpers/string_helper.dart';
import 'package:emr_one_transport/data/models/common/assets_filter.dart';
import 'package:emr_one_transport/data/models/common/list_details.dart';
import 'package:emr_one_transport/data/models/hauliers/haulier.dart';
import 'package:emr_one_transport/data/models/user_preferences/dispatch_yards.dart';
import 'package:emr_one_transport/data/services/shared_preferences_service.dart';
import 'package:flutter/widgets.dart';

class TruckFilterController extends EmrFilterController {
  TruckFilterController(
    this._sharedPrefs, {
    required this.dataController,
  }) : super(
          filterContentBuilder: (context, filter, controller) {
            switch (filter.key) {
              case StringConstants.yard:
                return EmrFilterAutoComplete<DispatchYards, String>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) async {
                    return dataController.allYards
                        .where(
                          (e) => (e.yardCode ?? '')
                              .toLowerCase()
                              .contains(pattern.toLowerCase()),
                        )
                        .toList();
                  },
                  close: Navigator.of(context).pop,
                  getTitle: (p0) => '${p0.yardCode}',
                  getValue: (p0) => '${p0.yardCode}',
                  multi: true,
                );
              case StringConstants.truckTypeFilter:
                return EmrFilterAutoComplete<ListDetails, String>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) async {
                    final filtered = dataController.allTruckTypes.where(
                      (e) => (e.code ?? '')
                          .toLowerCase()
                          .contains(pattern.toLowerCase()),
                    );

                    return filtered.cast<ListDetails>();
                  },
                  close: Navigator.of(context).pop,
                  getTitle: (p0) => p0.description ?? '',
                  getValue: (p0) => p0.code ?? '',
                  multi: true,
                );
              case StringConstants.status:
                return EmrFilterAutoComplete<ListDetails, String>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) async {
                    final filtered = dataController.allStatuses.where(
                      (e) => (e.code ?? '')
                          .toLowerCase()
                          .contains(pattern.toLowerCase()),
                    );

                    return filtered.cast<ListDetails>();
                  },
                  close: Navigator.of(context).pop,
                  getTitle: (p0) => p0.description ?? '',
                  getValue: (p0) => p0.code ?? '',
                  multi: true,
                );
              case StringConstants.condition:
                return EmrFilterAutoComplete<ListDetails, String>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) async {
                    final filtered = dataController.allConditions.where(
                      (e) => (e.code ?? '')
                          .toLowerCase()
                          .contains(pattern.toLowerCase()),
                    );

                    return filtered.cast<ListDetails>();
                  },
                  close: Navigator.of(context).pop,
                  getTitle: (p0) => p0.description ?? '',
                  getValue: (p0) => p0.code ?? '',
                  multi: true,
                );
              case StringConstants.haulier:
                return EmrFilterAutoComplete<Haulier, String>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) async {
                    await dataController.getHauliers(
                      pattern,
                    );
                    return dataController.allHauliers;
                  },
                  close: Navigator.of(context).pop,
                  getTitle: (p0) => '${p0.accountNo} - ${p0.name}',
                  getValue: (p0) => p0.accountNo ?? '',
                  getSubtitle: StringHelper.getHaulierTypeForDisplay,
                  multi: true,
                );
            }

            throw Exception(
              'filterContentBuilder should return a Widget for ${filter.key}',
            );
          },
          filters: [],
          displayMode: EmrFilterDisplayMode.popover,
        );

  final TruckDataController dataController;
  late AssetsFilter appliedFilters;
  final SharedPreferencesService _sharedPrefs;
  bool isInternal = false;

  Future<void> fetchFilterValues() async {
    await dataController.getFilterValues(isInternal: isInternal);
  }

  void initilize(String screen) {
    if (screen == StringConstants.internalTrucks) {
      isInternal = true;
    }
    fetchFilterValues();
    bindSavedFiltersForUser();
  }

  Future<void> bindSavedFiltersForUser() async {
    filters.addListener(onFilterChanged);
    appliedFilters = await _sharedPrefs.getAssetsFilters(
      isInternal == true
          ? StringConstants.kInternalTrucksFilterKey
          : StringConstants.kManagedTrucksFilterKey,
    );
    filters.value = _buildPreAppliedFilters(appliedFilters);
  }

  List<EmrFilterModel<dynamic>> _buildPreAppliedFilters(
    AssetsFilter preAppliedFilters,
  ) {
    final filterControls = <EmrFilterModel<dynamic>>[];
    if (preAppliedFilters.yardCodes != null &&
        preAppliedFilters.yardCodes!.isNotEmpty) {
      filterControls.add(
        EmrFilterModel<List<String>>(
          key: StringConstants.yard,
          name: StringConstants.yard,
          value: preAppliedFilters.yardCodes,
          text: StringHelper.formatFirstItemWithCount<String>(
            preAppliedFilters.yardCodes!,
          ),
        ),
      );
    }
    if (preAppliedFilters.assetTypes != null &&
        preAppliedFilters.assetTypes!.isNotEmpty) {
      filterControls.add(
        EmrFilterModel<List<String>>(
          key: StringConstants.truckTypeFilter,
          name: StringConstants.assetType,
          value: preAppliedFilters.assetTypes,
          text: StringHelper.formatFirstItemWithCount<String>(
            preAppliedFilters.assetTypes!,
          ),
        ),
      );
    }
    if (preAppliedFilters.conditions != null &&
        preAppliedFilters.conditions!.isNotEmpty) {
      filterControls.add(
        EmrFilterModel<List<String>>(
          key: StringConstants.condition,
          name: StringConstants.condition,
          value: preAppliedFilters.conditions,
          text: StringHelper.formatFirstItemWithCount<String>(
            preAppliedFilters.conditions!,
          ),
        ),
      );
    }
    if (preAppliedFilters.statuses != null &&
        preAppliedFilters.statuses!.isNotEmpty) {
      filterControls.add(
        EmrFilterModel<List<String>>(
          key: StringConstants.status,
          name: StringConstants.status,
          value: preAppliedFilters.statuses,
          text: StringHelper.formatFirstItemWithCount<String>(
            preAppliedFilters.statuses!,
          ),
        ),
      );
    }
    if (preAppliedFilters.haulierCodes != null &&
        preAppliedFilters.haulierCodes!.isNotEmpty) {
      filterControls.add(
        EmrFilterModel<List<String>>(
          key: StringConstants.haulier,
          name: StringConstants.haulier,
          value: preAppliedFilters.haulierCodes,
          text: StringHelper.formatFirstItemWithCount<String>(
            preAppliedFilters.haulierCodes!,
          ),
        ),
      );
    }
    return filterControls;
  }

  AssetsFilter getAppliedFilterValues() {
    var yardCodes = <String>[];
    var conditions = <String>[];
    var statuses = <String>[];
    var assetTypes = <String>[];
    var haulierCodes = <String>[];

    final yardFilter = tryGetFilter<List<String>>(key: StringConstants.yard);
    if (yardFilter != null) {
      yardCodes = yardFilter.value!;
    }

    final conditionsFilter =
        tryGetFilter<List<String>>(key: StringConstants.condition);
    if (conditionsFilter != null) {
      conditions = conditionsFilter.value!;
    }

    final statusesFilter =
        tryGetFilter<List<String>>(key: StringConstants.status);
    if (statusesFilter != null) {
      statuses = statusesFilter.value!;
    }

    final assetTypesFilter =
        tryGetFilter<List<String>>(key: StringConstants.truckTypeFilter);
    if (assetTypesFilter != null) {
      assetTypes = assetTypesFilter.value!;
    }

    final haulierCodesFilter =
        tryGetFilter<List<String>>(key: StringConstants.haulier);
    if (haulierCodesFilter != null) {
      haulierCodes = haulierCodesFilter.value!;
    }

    return AssetsFilter(
      yardCodes: yardCodes,
      statuses: statuses,
      conditions: conditions,
      assetTypes: assetTypes,
      haulierCodes: haulierCodes,
    );
  }

  Future<void> onFilterChanged() async {
    appliedFilters = getAppliedFilterValues();
    await _sharedPrefs.setAssetsFilters(
      appliedFilters,
      isInternal == true
          ? StringConstants.kInternalTrucksFilterKey
          : StringConstants.kManagedTrucksFilterKey,
    );
  }

  @override
  List<EmrFilterModel<dynamic>> newFilters() {
    return [
      if (isInternal && !containsFilter(key: StringConstants.yard))
        EmrFilterModel<List<String>>(
          key: StringConstants.yard,
          name: StringConstants.yard,
        ),
      if (!containsFilter(key: StringConstants.truckTypeFilter))
        EmrFilterModel<List<String>>(
          key: StringConstants.truckTypeFilter,
          name: StringConstants.assetType,
        ),
      if (!containsFilter(key: StringConstants.status))
        EmrFilterModel<List<String>>(
          key: StringConstants.status,
          name: StringConstants.status,
        ),
      if (isInternal && !containsFilter(key: StringConstants.condition))
        EmrFilterModel<List<String>>(
          key: StringConstants.condition,
          name: StringConstants.condition,
        ),
      if (!containsFilter(key: StringConstants.haulier))
        EmrFilterModel<List<String>>(
          key: StringConstants.haulier,
          name: StringConstants.haulier,
        ),
    ];
  }
}
