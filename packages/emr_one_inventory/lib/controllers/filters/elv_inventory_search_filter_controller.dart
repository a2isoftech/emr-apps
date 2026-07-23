import 'package:emr_core_api/graphql/queries/inventory/location/get_locations.graphql.dart';
import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inventory/services/elv_inventory_search_service.dart';
import 'package:flutter/material.dart';

class ElvInventorySearchFilterController extends EmrFilterController {
  ElvInventorySearchFilterController({
    required this.userInfoService,
    required this.elvInventorySearchService,
  }) : super(
          filterContentBuilder: (context, filter, controller) {
            // Determine the widget to show for each filter.
            switch (filter.key) {
              case kYardCode:
              case kProductLine:
                return EmrFilterAutoComplete<String, String>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) => Future.value(
                    switch (filter.key) {
                      kYardCode => userInfoService.userInfo.depots
                          .map((e) => e.yardCode!)
                          .toSet(),
                      kProductLine => {
                          'ELV',
                          ...Enum$PartType.values
                              .where((p) => p != Enum$PartType.$unknown)
                              .map((e) => e.name.replaceAll('_', '')),
                        },
                      _ => throw Exception('No data source for ${filter.key}'),
                    }
                        .where(
                      (element) => element
                          .contains(RegExp(pattern, caseSensitive: false)),
                    ),
                  ),
                  multi: true,
                  close: Navigator.of(context).pop,
                  getTitle: (suggestion) => suggestion,
                  getValue: (suggestion) => suggestion,
                );
              case kLocationCode:
                return EmrFilterAutoComplete<
                    Query$GetLocations$inventoryLocations$nodes, String>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) {
                    final locationCodes = filterController
                        .tryGetFilter<List<String>>(
                          key: kLocationCode,
                        )
                        ?.value;
                    return elvInventorySearchService.getLocations(
                      locationCodes,
                      pattern,
                    );
                  },
                  multi: true,
                  close: Navigator.of(context).pop,
                  getTitle: (suggestion) =>
                      '${suggestion.code} - ${suggestion.description}',
                  getValue: (suggestion) => suggestion.code,
                );
              case kItemStatus:
              case kVehicleStatus:
              case kPartStatus:
                return EmrFilterAutoComplete<String, String>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) => Future.value(
                    switch (filter.key) {
                      kItemStatus => Enum$ItemStatus.values
                          .where((e) => e != Enum$ItemStatus.$unknown)
                          .map((e) => e.name.replaceAll('_', '')),
                      kVehicleStatus => Enum$VehicleStatus.values
                          .where((e) => e != Enum$VehicleStatus.$unknown)
                          .map((e) => e.name.replaceAll('_', '')),
                      kPartStatus => Enum$PartStatus.values
                          .where((e) => e != Enum$PartStatus.$unknown)
                          .map((e) => e.name),
                      _ => throw Exception('No data source for ${filter.key}'),
                    }
                        .where(
                      (element) => element
                          .contains(RegExp(pattern, caseSensitive: false)),
                    ),
                  ),
                  multi: filter.key != kItemStatus,
                  close: Navigator.of(context).pop,
                  getTitle: (suggestion) => suggestion,
                  getValue: (suggestion) => suggestion,
                );
            }

            throw Exception(
              'filterContentBuilder should return a Widget for ${filter.key}',
            );
          },
          filters: [],
        );

  final UserInfoService userInfoService;
  final ElvInventorySearchService elvInventorySearchService;

  static const kYardCode = 'YardCode';
  static const kLocationCode = 'LocationCode';
  static const kProductLine = 'ProductLine';
  static const kItemStatus = 'ItemStatus';
  static const kVehicleStatus = 'VehicleStatus';
  static const kPartStatus = 'PartStatus';

  @override
  List<EmrFilterModel<dynamic>> newFilters() {
    return [
      if (!containsFilter(key: kYardCode))
        EmrFilterModel<List<String>>(key: kYardCode, name: 'Yard code'),
      if (!containsFilter(key: kLocationCode))
        EmrFilterModel<List<String>>(key: kLocationCode, name: 'Location'),
      if (!containsFilter(key: kProductLine))
        EmrFilterModel<List<String>>(key: kProductLine, name: 'Product line'),
      if (!containsFilter(key: kItemStatus))
        EmrFilterModel<String>(key: kItemStatus, name: 'Item status'),
      if (!containsFilter(key: kVehicleStatus))
        EmrFilterModel<List<String>>(
          key: kVehicleStatus,
          name: 'Vehicle status',
        ),
      if (!containsFilter(key: kPartStatus))
        EmrFilterModel<List<String>>(key: kPartStatus, name: 'Part status'),
    ];
  }
}
