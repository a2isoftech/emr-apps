import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/filter/emr_filter_date_range_picker.dart';
import 'package:emr_one_elv_core/constants.dart';
import 'package:emr_one_elv_quotes/services/quote_search_service.dart';
import 'package:flutter/material.dart';

class QuoteSearchFilterController extends EmrFilterController {
  QuoteSearchFilterController({
    required this.userInfoService,
    required this.quoteSearchService,
  }) : super(
          filterContentBuilder: (context, filter, controller) {
            // Determine the widget to show for each filter.
            switch (filter.key) {
              case QuoteSearchConstants.kYardCode:
              case QuoteSearchConstants.kStatus:
              case QuoteSearchConstants.kAcquisitionType:
              case QuoteSearchConstants.kCollectionStatus:
              case QuoteSearchConstants.kLeadSource:
                return EmrFilterAutoComplete<String, String>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) => Future.value(
                    switch (filter.key) {
                      QuoteSearchConstants.kYardCode => userInfoService
                          .userInfo.depots
                          .map((e) => e.yardCode!)
                          .toSet(),
                      QuoteSearchConstants.kStatus => {
                          ...Enum$QuoteStatus.values
                              .where(
                                (p) =>
                                    p != Enum$QuoteStatus.$unknown &&
                                    p != Enum$QuoteStatus.INSPECTED &&
                                    p !=
                                        Enum$QuoteStatus.INSPECTION_IN_PROGRESS,
                              )
                              .map((e) => e.name.replaceAll('_', ' ')),
                        },
                      QuoteSearchConstants.kAcquisitionType =>
                        Enum$AcquisitionType.values
                            .where((e) => e != Enum$AcquisitionType.$unknown)
                            .map((e) => e.name.replaceAll('_', ' ')),
                      QuoteSearchConstants.kCollectionStatus =>
                        Enum$CollectionStatus.values
                            .where((e) => e != Enum$CollectionStatus.$unknown)
                            .map((e) => e.name.replaceAll('_', ' ')),
                      QuoteSearchConstants.kLeadSource => Enum$LeadSource.values
                          .where((e) => e != Enum$LeadSource.$unknown)
                          .map((e) => e.name.replaceAll('_', ' ')),
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
              case QuoteSearchConstants.kCollectionDateRange:
              case QuoteSearchConstants.kCreatedDateRange:
                return EmrFilterDateRangePicker(
                  filterModel: filter as EmrFilterModel<EmrDateRangeValue>,
                  controller: controller,
                );
            }

            throw Exception(
              'filterContentBuilder should return a Widget for ${filter.key}',
            );
          },
        );

  final UserInfoService userInfoService;
  final QuoteSearchService quoteSearchService;

  @override
  List<EmrFilterModel<dynamic>> newFilters() {
    return [
      if (!containsFilter(key: QuoteSearchConstants.kYardCode))
        EmrFilterModel<List<String>>(
          key: QuoteSearchConstants.kYardCode,
          name: 'Yard code',
        ),
      if (!containsFilter(key: QuoteSearchConstants.kStatus))
        EmrFilterModel<List<String>>(
          key: QuoteSearchConstants.kStatus,
          name: 'Status',
        ),
      if (!containsFilter(key: QuoteSearchConstants.kAcquisitionType))
        EmrFilterModel<List<String>>(
          key: QuoteSearchConstants.kAcquisitionType,
          name: 'Acquisition type',
        ),
      if (!containsFilter(key: QuoteSearchConstants.kCollectionStatus))
        EmrFilterModel<List<String>>(
          key: QuoteSearchConstants.kCollectionStatus,
          name: 'Collection status',
        ),
      if (!containsFilter(key: QuoteSearchConstants.kLeadSource))
        EmrFilterModel<List<String>>(
          key: QuoteSearchConstants.kLeadSource,
          name: 'Lead source',
        ),
      if (!containsFilter(key: QuoteSearchConstants.kCollectionDateRange))
        EmrFilterModel<EmrDateRangeValue>(
          key: QuoteSearchConstants.kCollectionDateRange,
          name: 'Collection Date',
        ),
      if (!containsFilter(key: QuoteSearchConstants.kCreatedDateRange))
        EmrFilterModel<EmrDateRangeValue>(
          key: QuoteSearchConstants.kCreatedDateRange,
          name: 'Created Date',
        ),
    ];
  }
}
