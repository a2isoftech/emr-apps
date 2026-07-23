import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/core/utils/map/map_event_blocker_registry.dart';
import 'package:emr_one_transport/data/controllers/tracking/trailer_locator_data_controller.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/common/list_details.dart';
import 'package:emr_one_transport/data/models/tracking/asset_geo_search_request.dart';
import 'package:emr_one_transport/data/models/user_preferences/dispatch_yards.dart';
import 'package:emr_one_transport/presentation/screens/assets/assetLocator/widgets/common/base_asset_locator_control_panel.dart';
import 'package:emr_one_transport/presentation/screens/assets/assetLocator/widgets/common/map_event_blocker.dart';
import 'package:flutter/material.dart';

/// Filter controller for trailer locator
/// Note: Unlike containers, trailers don't have account codes
class TrailerLocatorFilterController extends EmrFilterController
    with BaseAssetLocatorFilterMixin {

  TrailerLocatorFilterController({
    required this.dataController,
    required this.eventBlockerRegistry,
  }) : super(
          filterContentBuilder: (context, filter, controller) {
            switch (filter.key) {
              case _filterKeyAssetNumber:
                var assetNumberValue = '';
                return MapEventBlocker(
                  registry: eventBlockerRegistry,
                  child: Column(
                    children: [
                      TextField(
                        onChanged: (String value) {
                          assetNumberValue = value;
                        },
                        decoration: InputDecoration(
                          hintText: context.l10n.enterAssetNumber,
                          border: const OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          if (assetNumberValue.isNotEmpty) {
                            controller.addOrUpdateFilter(
                              filter: filter,
                              text:
                              '${context.l10n.assetNumber}: '
                              '$assetNumberValue',
                              value: assetNumberValue,
                            );
                          }
                          Navigator.pop(context);
                        },
                        child: Text(context.l10n.apply),
                      ),
                    ],
                  ),
                );
              case _filterKeyYard:
                return MapEventBlocker(
                  registry: eventBlockerRegistry,
                  child: EmrFilterAutoComplete<DispatchYards, String>(
                    Key(filter.key),
                    filter,
                    controller,
                    (pattern, filterController) async {
                      return dataController.allYards
                          .where((e) => (e.yardCode ?? '')
                              .toLowerCase()
                              .contains(pattern.toLowerCase()),)
                          .toList();
                    },
                    close: Navigator.of(context).pop,
                    getTitle: (p0) => '${p0.yardCode}',
                    getValue: (p0) => '${p0.yardCode}',
                    multi: true,
                  ),
                );
              case _filterKeyType:
                return MapEventBlocker(
                  registry: eventBlockerRegistry,
                  child: EmrFilterAutoComplete<ListDetails, String>(
                    Key(filter.key),
                    filter,
                    controller,
                    (pattern, filterController) async {
                      final filtered = dataController.allTrailerTypes
                          .where((e) => (e.description ?? '')
                              .toLowerCase()
                              .contains(pattern.toLowerCase()),);
                      return filtered.cast<ListDetails>();
                    },
                    close: Navigator.of(context).pop,
                    getTitle: (p0) => p0.description ?? '',
                    getValue: (p0) => p0.description ?? '',
                    multi: true,
                  ),
                );
              case _filterKeyStatus:
                return MapEventBlocker(
                  registry: eventBlockerRegistry,
                  child: EmrFilterAutoComplete<String, String>(
                    Key(filter.key),
                    filter,
                    controller,
                    (pattern, filterController) async {
                      return dataController.allStatuses
                          .where((e) =>
                              e.toLowerCase().contains(pattern.toLowerCase()),)
                          .toList();
                    },
                    close: Navigator.of(context).pop,
                    getTitle: (p0) => p0,
                    getValue: (p0) => p0,
                    multi: true,
                  ),
                );
            }
            throw Exception('Unknown filter key: ${filter.key}');
          },
          filters: [],
          displayMode: EmrFilterDisplayMode.popover,
        );
        
  static const String _filterKeyAssetNumber = 'assetNumber';
  static const String _filterKeyYard = 'yard';
  static const String _filterKeyType = 'type';
  static const String _filterKeyStatus = 'status';

  final TrailerLocatorDataController dataController;
  final MapEventBlockerRegistry eventBlockerRegistry;

  // Check if any filters are currently active
  @override
  bool hasActiveFilters() {
    return filters.value.isNotEmpty;
  }

  Future<void> fetchFilterValues() async {
    await dataController.getFilterValues();
  }

  @override
  AssetGeoSearchRequest getAppliedFilterAsRequest({
    required double latNE,
    required double lngNE,
    required double latSW,
    required double lngSW,
  }) {
    final assetNumberFilter = tryGetFilter<String>(key: _filterKeyAssetNumber);
    final yardFilter = tryGetFilter<List<String>>(key: _filterKeyYard);
    final typeFilter = tryGetFilter<List<String>>(key: _filterKeyType);
    final statusFilter = tryGetFilter<List<String>>(key: _filterKeyStatus);

    // Expand status filter to include CUSTOMERSITE when CUSTOMER is selected
    String? expandedStatusFilter;
    if (statusFilter?.value?.isNotEmpty ?? false) {
      final statuses = List<String>.from(statusFilter!.value!);

      // If CUSTOMER is selected, also include CUSTOMERSITE
      if (statuses.any((s) => s.toUpperCase() 
              == StringConstants.containerLocationStatusCustomer) &&
          !statuses.any((s) => s.toUpperCase() 
            == StringConstants.containerLocationStatusCustomerSITE)) {
        statuses.add(StringConstants.containerLocationStatusCustomerSITE);
      }

      expandedStatusFilter = statuses.join(',');
    }

    return AssetGeoSearchRequest(
      latitudeNorthEast: latNE,
      longitudeNorthEast: lngNE,
      latitudeSouthWest: latSW,
      longitudeSouthWest: lngSW,
      assetType: AssetType.trailer,
      assetNumbers: assetNumberFilter?.value,
      yardCodes: yardFilter?.value?.isNotEmpty ?? false
          ? yardFilter!.value!.join(',')
          : null,
      typeIds: typeFilter?.value?.isNotEmpty ?? false
          ? typeFilter!.value!.join(',')
          : null,
      statusTypes: expandedStatusFilter,
    );
  }

  @override
  List<EmrFilterModel<dynamic>> newFilters() {
    return [
      if (!containsFilter(key: _filterKeyAssetNumber))
        EmrFilterModel<String>(key: _filterKeyAssetNumber,
        name: 'Asset Number'),
      if (!containsFilter(key: _filterKeyYard))
        EmrFilterModel<List<String>>(key: _filterKeyYard,
        name: 'Yard'),
      if (!containsFilter(key: _filterKeyType))
        EmrFilterModel<List<String>>(key: _filterKeyType,
        name: 'Type'),
      if (!containsFilter(key: _filterKeyStatus))
        EmrFilterModel<List<String>>(key: _filterKeyStatus,
        name: 'Status'),
    ];
  }

}
