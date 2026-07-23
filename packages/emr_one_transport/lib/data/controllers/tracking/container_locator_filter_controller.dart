import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/core/utils/map/map_event_blocker_registry.dart';
import 'package:emr_one_transport/data/controllers/tracking/container_locator_data_controller.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/common/list_details.dart';
import 'package:emr_one_transport/data/models/tracking/asset_geo_search_request.dart';
import 'package:emr_one_transport/data/models/user_preferences/dispatch_yards.dart';
import 'package:emr_one_transport/presentation/screens/assets/assetLocator/widgets/common/base_asset_locator_control_panel.dart';
import 'package:emr_one_transport/presentation/screens/assets/assetLocator/widgets/common/map_event_blocker.dart';
import 'package:flutter/material.dart';

class ContainerLocatorFilterController extends EmrFilterController
    with BaseAssetLocatorFilterMixin {

  ContainerLocatorFilterController({
    required this.dataController,
    required this.eventBlockerRegistry,
  }) : super(
          filterContentBuilder: (context, filter, controller) {
            switch (filter.key) {
              case _keyAssetNumber:
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
              case _keyAccount:
                var accountValue = '';
                return MapEventBlocker(
                  registry: eventBlockerRegistry,
                  child: Column(
                    children: [
                      TextField(
                        onChanged: (String value) {
                          accountValue = value;
                        },
                        decoration: InputDecoration(
                          hintText: context.l10n.enterAccountCode,
                          border: const OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          if (accountValue.isNotEmpty) {
                            controller.addOrUpdateFilter(
                              filter: filter,
                              text:
                                '${context.l10n.account}: '
                                '$accountValue',
                              value: accountValue,
                            );
                          }
                          Navigator.pop(context);
                        },
                        child: Text(context.l10n.apply),
                      ),
                    ],
                  ),
                );
              case _keyYard:
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
              case _keyType:
                return MapEventBlocker(
                  registry: eventBlockerRegistry,
                  child: EmrFilterAutoComplete<ListDetails, String>(
                    Key(filter.key),
                    filter,
                    controller,
                    (pattern, filterController) async {
                      final filtered = dataController.allContainerTypes
                          .where((e) => (e.description ?? '')
                              .toLowerCase()
                              .contains(pattern.toLowerCase()),);
                      return filtered.cast<ListDetails>();
                    },
                    close: Navigator.of(context).pop,
                    getTitle: (p0) => p0.description ?? '',
                    getValue: (p0) => p0.id ?? '',
                    multi: true,
                  ),
                );
              case _keyStatus:
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
        
  // Filter key constants
  static const String _keyAssetNumber = 'assetNumber';
  static const String _keyAccount = 'account';
  static const String _keyYard = 'yard';
  static const String _keyType = 'type';
  static const String _keyStatus = 'status';

  final ContainerLocatorDataController dataController;
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
    final assetNumberFilter = tryGetFilter<String>(key: _keyAssetNumber);
    final accountFilter = tryGetFilter<String>(key: _keyAccount);
    final yardFilter = tryGetFilter<List<String>>(key: _keyYard);
    final typeFilter = tryGetFilter<List<String>>(key: _keyType);
    final statusFilter = tryGetFilter<List<String>>(key: _keyStatus);

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
      assetType: AssetType.container,
      assetNumbers: assetNumberFilter?.value,
      accountCodes: accountFilter?.value,
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
      if (!containsFilter(key: _keyAssetNumber))
        EmrFilterModel<String>(key: _keyAssetNumber,
        name: 'Asset Number'),
      if (!containsFilter(key: _keyAccount))
        EmrFilterModel<String>(key: _keyAccount,
        name: 'Account'),
      if (!containsFilter(key: _keyYard))
        EmrFilterModel<List<String>>(key: _keyYard,
        name: 'Yard'),
      if (!containsFilter(key: _keyType))
        EmrFilterModel<List<String>>(key: _keyType,
        name: 'Type'),
      if (!containsFilter(key: _keyStatus))
        EmrFilterModel<List<String>>(key: _keyStatus,
        name: 'Status'),
    ];
  }

}
