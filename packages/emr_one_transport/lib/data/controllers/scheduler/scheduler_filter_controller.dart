import 'dart:core';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/controllers/scheduler/scheduler_data_controller.dart';
import 'package:emr_one_transport/data/helpers/string_helper.dart';
import 'package:emr_one_transport/data/models/common/list_details.dart';
import 'package:emr_one_transport/data/models/scheduler/haulier.dart';
import 'package:emr_one_transport/data/models/scheduler/scheduler_filter.dart';
import 'package:emr_one_transport/data/models/user_preferences/dispatch_yards.dart';
import 'package:flutter/material.dart';

class SchedulerFilterController extends EmrFilterController {
  SchedulerFilterController({
    required this.dataController,
  }) : super(
          filterContentBuilder: (context, filter, controller) {
            switch (filter.key) {
              case StringConstants.yardFilterKey:
                return EmrFilterAutoComplete<DispatchYards, String>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) async {
                    final allYards = dataController.allYards;
                    if (pattern.isEmpty) {
                      return allYards;
                    } else {
                      return allYards.where(
                        (yard) => yard.yardCode!
                            .toLowerCase()
                            .contains(pattern.toLowerCase()),
                      );
                    }
                  },
                  close: Navigator.of(context).pop,
                  getTitle: (suggestion) => suggestion.yardCode!,
                  getValue: (suggestion) => suggestion.yardCode!,
                  multi: true,
                );
              case StringConstants.managedThirdPartyFilterKey:
                return EmrFilterAutoComplete<Haulier, String>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) async {
                    final managedHaulierCodes =
                        dataController.myManagedHauliers;
                    var suggestions = managedHaulierCodes;
                    if (pattern.isNotEmpty) {
                      suggestions = managedHaulierCodes
                          .where(
                            (haulier) => haulier.code
                                .toLowerCase()
                                .contains(pattern.toLowerCase()),
                          )
                          .toList();
                    }
                    return Future.value(suggestions);
                  },
                  close: Navigator.of(context).pop,
                  getTitle: (suggestion) =>
                      '${suggestion.code} - ${suggestion.name}',
                  getValue: (suggestion) => suggestion.code,
                  multi: true,
                );
              case StringConstants.thirdPartyFilterKey:
                return EmrFilterAutoComplete<Haulier, String>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) async {
                    final thirdpartyHaulierCodes =
                        dataController.myThirdPartyHauliers;
                    var suggestions = thirdpartyHaulierCodes;
                    if (pattern.isNotEmpty) {
                      suggestions = thirdpartyHaulierCodes
                          .where(
                            (haulier) => haulier.code
                                .toLowerCase()
                                .contains(pattern.toLowerCase()),
                          )
                          .toList();
                    }
                    return Future.value(suggestions);
                  },
                  close: Navigator.of(context).pop,
                  getTitle: (suggestion) =>
                      '${suggestion.code} - ${suggestion.name}',
                  getValue: (suggestion) => suggestion.code,
                  multi: true,
                );
              case StringConstants.jobTypeDisplay:
                return EmrFilterAutoComplete<ListDetails, ListDetails>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) async {
                    final list = dataController.allJobTypes
                        .where(
                          (e) => (e.code ?? '')
                              .normalized()
                              .contains(pattern.normalized()),
                        )
                        .toList();

                    return list;
                  },
                  close: Navigator.of(context).pop,
                  getTitle: (p0) => p0.description ?? '',
                  getValue: (p0) => p0,
                  multi: true,
                );
              case StringConstants.containerTypeDisplay:
                return EmrFilterAutoComplete<ListDetails, ListDetails>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) async {
                    final filtered = dataController.allContainerTypes.where(
                      (e) => (e.description ?? '')
                          .toLowerCase()
                          .contains(pattern.toLowerCase()),
                    );

                    return filtered.toList();
                  },
                  close: Navigator.of(context).pop,
                  getTitle: (p0) => p0.description ?? '',
                  getValue: (p0) => p0,
                  multi: true,
                );
              case StringConstants.truckTypeFilter:
                return EmrFilterAutoComplete<ListDetails, ListDetails>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) async {
                    final filtered = dataController.allTruckTypes.where(
                      (e) => (e.description ?? '')
                          .toLowerCase()
                          .contains(pattern.toLowerCase()),
                    );

                    return filtered.toList();
                  },
                  close: Navigator.of(context).pop,
                  getTitle: (p0) => p0.description ?? '',
                  getValue: (p0) => p0,
                  multi: true,
                );
              case StringConstants.productType:
                return EmrFilterAutoComplete<ListDetails, ListDetails>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) async {
                    final filtered = dataController.allProductFamilies.where(
                      (e) => (e.description ?? '')
                          .toLowerCase()
                          .contains(pattern.toLowerCase()),
                    );

                    return filtered.toList();
                  },
                  close: Navigator.of(context).pop,
                  getTitle: (p0) => p0.description ?? '',
                  getValue: (p0) => p0,
                  multi: true,
                );
            }
            throw Exception(
              'filterContentBuilder should return a Widget for ${filter.key}',
            );
          },
        );

  final SchedulerDataController dataController;

  @override
  List<EmrFilterModel<dynamic>> newFilters() {
    return [
      if (!containsFilter(key: StringConstants.yardFilterKey))
        EmrFilterModel<List<String>>(
          key: StringConstants.yardFilterKey,
          name: StringConstants.yardText,
        ),
      if (!containsFilter(key: StringConstants.managedThirdPartyFilterKey))
        EmrFilterModel<List<String>>(
          key: StringConstants.managedThirdPartyFilterKey,
          name: StringConstants.managedthirdPartyHaulierDisplay,
          textBuilder: (context, filterModel) {
            final filter = filterModel as EmrFilterModel<List<String>>;
            return Text(
              _chipBuilder(
                StringConstants.managedthirdPartyHaulierDisplay,
                filter.value!,
              ),
            );
          },
        ),
      if (!containsFilter(key: StringConstants.thirdPartyFilterKey))
        EmrFilterModel<List<String>>(
          key: StringConstants.thirdPartyFilterKey,
          name: StringConstants.thirdPartyHaulierDisplay,
          textBuilder: (context, filterModel) {
            final filter = filterModel as EmrFilterModel<List<String>>;
            return Text(
              _chipBuilder(
                StringConstants.thirdPartyHaulierDisplay,
                filter.value!,
              ),
            );
          },
        ),
      if (!containsFilter(key: StringConstants.jobTypeDisplay))
        EmrFilterModel<List<ListDetails>>(
          key: StringConstants.jobTypeDisplay,
          name: StringConstants.jobTypeDisplay,
        ),
      if (!containsFilter(key: StringConstants.containerTypeDisplay))
        EmrFilterModel<List<ListDetails>>(
          key: StringConstants.containerTypeDisplay,
          name: StringConstants.containerTypeDisplay,
        ),
      if (!containsFilter(key: StringConstants.truckTypeFilter))
        EmrFilterModel<List<ListDetails>>(
          key: StringConstants.truckTypeFilter,
          name: StringConstants.truckTypeFilter,
        ),
      if (!containsFilter(key: StringConstants.productType))
        EmrFilterModel<List<ListDetails>>(
          key: StringConstants.productType,
          name: StringConstants.productType,
        ),
    ];
  }

  Future<void> fetchFilterValues() async {
    await dataController.getFilterValues();
  }

  Future<SchedulerFilter> getFilterValues() async {
    var yardCodes = <String>[];

    final yardFilter =
        tryGetFilter<List<String>>(key: StringConstants.yardFilterKey);
    if (yardFilter != null) {
      yardCodes = yardFilter.value!;
    }
    var managedHaulierCodes = <String>[];

    final managedHaulierFilter = tryGetFilter<List<String>>(
      key: StringConstants.managedThirdPartyFilterKey,
    );
    if (managedHaulierFilter != null) {
      managedHaulierCodes = managedHaulierFilter.value!;
    }

    var thirdPartyHaulierCodes = <String>[];

    final thirdPartyHaulierFilter =
        tryGetFilter<List<String>>(key: StringConstants.thirdPartyFilterKey);
    if (thirdPartyHaulierFilter != null) {
      thirdPartyHaulierCodes = thirdPartyHaulierFilter.value!;
    }

    var containerTypes = <ListDetails>[];
    final containerTypesFilter = tryGetFilter<List<ListDetails>>(
      key: StringConstants.containerTypeDisplay,
    );
    if (containerTypesFilter != null) {
      containerTypes = containerTypesFilter.value!;
    }

    var truckTypes = <ListDetails>[];
    final truckTypesFilter = tryGetFilter<List<ListDetails>>(
      key: StringConstants.truckTypeFilter,
    );
    if (truckTypesFilter != null) {
      truckTypes = truckTypesFilter.value!;
    }

    var jobTypes = <ListDetails>[];
    final jobTypesFilter = tryGetFilter<List<ListDetails>>(
      key: StringConstants.jobTypeDisplay,
    );
    if (jobTypesFilter != null) {
      jobTypes = jobTypesFilter.value!;
    }

    var productFamilies = <ListDetails>[];
    final productFamiliesFilter = tryGetFilter<List<ListDetails>>(
      key: StringConstants.productType,
    );
    if (productFamiliesFilter != null) {
      productFamilies = productFamiliesFilter.value!;
    }

    return SchedulerFilter(
      yardCodes: yardCodes,
      managedThirdPartyHaulierCodes: managedHaulierCodes,
      thirdPartyHaulierCodes: thirdPartyHaulierCodes,
      containerTypes: containerTypes,
      jobTypes: jobTypes,
      truckTypes: truckTypes,
      productFamilies: productFamilies,
    );
  }

  void applyFilters(SchedulerFilter? filter) {
    if (filter != null) filters.value = _buildPreAppliedFilters(filter);
  }

  List<EmrFilterModel<dynamic>> _buildPreAppliedFilters(
    SchedulerFilter preAppliedFilters,
  ) {
    final filterControls = <EmrFilterModel<dynamic>>[];
    if (preAppliedFilters.yardCodes.isNotEmpty) {
      filterControls.add(
        EmrFilterModel<List<String>>(
          key: StringConstants.yardFilterKey,
          name: StringConstants.yardText,
          value: preAppliedFilters.yardCodes,
          text: StringHelper.formatFirstItemWithCount<String>(
            preAppliedFilters.yardCodes,
          ),
        ),
      );
    }
    if (preAppliedFilters.managedThirdPartyHaulierCodes.isNotEmpty) {
      filterControls.add(
        EmrFilterModel<List<String>>(
          key: StringConstants.managedThirdPartyFilterKey,
          name: StringConstants.managedthirdPartyHaulierDisplay,
          value: preAppliedFilters.managedThirdPartyHaulierCodes,
          textBuilder: (context, filterModel) {
            final filter = filterModel as EmrFilterModel<List<String>>;
            return Text(
              _chipBuilder(
                StringConstants.managedthirdPartyHaulierDisplay,
                filter.value!,
              ),
            );
          },
        ),
      );
    }
    if (preAppliedFilters.thirdPartyHaulierCodes.isNotEmpty) {
      filterControls.add(
        EmrFilterModel<List<String>>(
          key: StringConstants.thirdPartyFilterKey,
          name: StringConstants.thirdPartyHaulierDisplay,
          value: preAppliedFilters.thirdPartyHaulierCodes,
          textBuilder: (context, filterModel) {
            final filter = filterModel as EmrFilterModel<List<String>>;
            return Text(
              _chipBuilder(
                StringConstants.thirdPartyHaulierDisplay,
                filter.value!,
              ),
            );
          },
        ),
      );
    }
    if (preAppliedFilters.jobTypes.isNotEmpty) {
      filterControls.add(
        EmrFilterModel<List<ListDetails>>(
          key: StringConstants.jobTypeDisplay,
          name: StringConstants.jobTypeDisplay,
          value: preAppliedFilters.jobTypes,
          text: StringHelper.formatFirstItemWithCount<String>(
            preAppliedFilters.jobTypes.map((e) => e.description ?? '').toList(),
          ),
        ),
      );
    }
    if (preAppliedFilters.containerTypes.isNotEmpty) {
      filterControls.add(
        EmrFilterModel<List<ListDetails>>(
          key: StringConstants.containerTypeDisplay,
          name: StringConstants.containerTypeDisplay,
          value: preAppliedFilters.containerTypes,
          text: StringHelper.formatFirstItemWithCount<String>(
            preAppliedFilters.containerTypes
                .map((e) => e.description ?? '')
                .toList(),
          ),
        ),
      );
    }
    if (preAppliedFilters.truckTypes.isNotEmpty) {
      filterControls.add(
        EmrFilterModel<List<ListDetails>>(
          key: StringConstants.truckTypeFilter,
          name: StringConstants.truckTypeFilter,
          value: preAppliedFilters.truckTypes,
          text: StringHelper.formatFirstItemWithCount<String>(
            preAppliedFilters.truckTypes
                .map((e) => e.description ?? '')
                .toList(),
          ),
        ),
      );
    }
    if (preAppliedFilters.productFamilies.isNotEmpty) {
      filterControls.add(
        EmrFilterModel<List<ListDetails>>(
          key: StringConstants.productType,
          name: StringConstants.productType,
          value: preAppliedFilters.productFamilies,
          text: StringHelper.formatFirstItemWithCount<String>(
            preAppliedFilters.productFamilies
                .map((e) => e.description ?? '')
                .toList(),
          ),
        ),
      );
    }
    return filterControls;
  }

  String _chipBuilder(String prefix, List<String> values) {
    return '$prefix - ${StringHelper.formatFirstItemWithCount<String>(
      values,
    )}';
  }
}
