import 'package:emr_flutter_theme/controls/emr_button.dart';
import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_management/enums/live_loads_status.dart';
import 'package:emr_one_yard_management/models/liveLoads/live_loads_search_model.dart';
import 'package:emr_one_yard_management/models/parties/parties_model.dart';
import 'package:emr_one_yard_management/models/yard/yards_model.dart';
import 'package:emr_one_yard_management/repository/filters/parties_repository.dart';
import 'package:emr_one_yard_management/repository/filters/yard_repository.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';

class LiveLoadsFilterController extends EmrFilterController {
  LiveLoadsFilterController({required this.httpClient, required this.config})
      : super(
          filters: [
            EmrFilterModel<String>(
              key: kYardKey,
              name: 'Yard',
              enableDelete: false,
            ),
          ],
          filterContentBuilder: (context, filter, controller) {
            switch (filter.key) {
              case kYardKey:
                return EmrFilterAutoComplete<YardsModel, String>(
                  const Key(kYardKey),
                  filter,
                  controller,
                  (pattern, filterController) =>
                      YardRepository.fetchYards(pattern, httpClient, config),
                  close: () {
                    Navigator.of(context).pop();
                  },
                  getTitle: (suggestion) =>
                      '${suggestion.yardCode} - ${suggestion.yardName}',
                  getValue: (suggestion) {
                    return suggestion.yardCode;
                  },
                );
              case kCustomerKey:
                return EmrFilterAutoComplete<PartiesModel, String>(
                  const Key(kCustomerKey),
                  filter,
                  controller,
                  (pattern, filterController) => PartiesRepository.fetchParties(
                    pattern,
                    httpClient,
                    config,
                  ),
                  close: () {
                    Navigator.of(context).pop();
                  },
                  getTitle: (suggestion) =>
                      '${suggestion.partyAccountNo} - ${suggestion.partyName}',
                  getValue: (suggestion) {
                    return suggestion.partyName;
                  },
                );
              case kLoadsDateRangeKey:
                DateTimeRange? pickedDateRange;
                return TextFormField(
                  decoration: InputDecoration(hintText: context.l10n.dateRange),
                  readOnly: true,
                  onTap: () async {
                    pickedDateRange = await showDateRangePicker(
                      context: context,
                      firstDate: DateTime.now().add(const Duration(days: -365)),
                      cancelText: context.l10n.psnopClose,
                      initialDateRange: loadFromAndToDate,
                      initialEntryMode: DatePickerEntryMode.input,
                      lastDate: DateTime(9999),
                    );
                    if (context.mounted) {
                      if (pickedDateRange != null) {
                        loadFromAndToDate = pickedDateRange;
                        controller.addOrUpdateFilter(
                          filter: filter,
                          text: _loadsDateRange(context, pickedDateRange),
                          value: pickedDateRange,
                        );
                      }
                      Navigator.pop(context);
                    }
                  },
                  controller: TextEditingController(
                    text: controller.containsFilter(key: kLoadsDateRangeKey)
                        ? _loadsDateRange(
                            context,
                            loadFromAndToDate,
                          )
                        : '',
                  ),
                  validator: Validators.required,
                );
              case kSearchKey:
                var searchValue = '';
                return Column(
                  children: [
                    TextField(
                      onChanged: (String value) async {
                        searchValue = value;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    EmrButton(
                      label: context.l10n.confirm,
                      onPressed: () {
                        controller.addOrUpdateFilter(
                          filter: filter,
                          text: 'search:$searchValue',
                          value: searchValue,
                        );

                        Navigator.pop(context);
                      },
                    ),
                  ],
                );
              case kStatusKey:
                return EmrFilterAutoComplete<String, String>(
                  const Key(kStatusKey),
                  filter,
                  controller,
                  (pattern, filterController) {
                    final suggestions = <String>[];
                    if (pattern.isEmpty) {
                      suggestions.add(context.l10n.yardLiveLoadsStatusAny);
                      suggestions
                          .add(context.l10n.yardLiveLoadsStatusAbandoned);
                      suggestions.add(context.l10n.yardLiveLoadsStatusBooked);
                      suggestions
                          .add(context.l10n.yardLiveLoadsStatusCompleted);
                      suggestions
                          .add(context.l10n.yardLiveLoadsStatusInProgress);
                      suggestions.add(context.l10n.yardLiveLoadsStatusOnRoute);
                      suggestions
                          .add(context.l10n.yardLiveLoadsStatusRequested);
                      suggestions
                          .add(context.l10n.yardLiveLoadsStatusScheduled);
                    } else {
                      if (context.l10n.yardLiveLoadsStatusAny
                              .startsWith(pattern) ||
                          LiveLoadsStatus.any.name.startsWith(pattern)) {
                        suggestions.add(context.l10n.yardLiveLoadsStatusAny);
                      }
                      if (context.l10n.yardLiveLoadsStatusAbandoned
                              .startsWith(pattern) ||
                          LiveLoadsStatus.abandoned.name.startsWith(pattern)) {
                        suggestions
                            .add(context.l10n.yardLiveLoadsStatusAbandoned);
                      }
                      if (context.l10n.yardLiveLoadsStatusBooked
                              .startsWith(pattern) ||
                          LiveLoadsStatus.booked.name.startsWith(pattern)) {
                        suggestions.add(context.l10n.yardLiveLoadsStatusBooked);
                      }
                      if (context.l10n.yardLiveLoadsStatusCompleted
                              .startsWith(pattern) ||
                          LiveLoadsStatus.completed.name.startsWith(pattern)) {
                        suggestions
                            .add(context.l10n.yardLiveLoadsStatusCompleted);
                      }
                      if (context.l10n.yardLiveLoadsStatusInProgress
                              .startsWith(pattern) ||
                          LiveLoadsStatus.inProgress.name.startsWith(pattern)) {
                        suggestions
                            .add(context.l10n.yardLiveLoadsStatusInProgress);
                      }
                      if (context.l10n.yardLiveLoadsStatusOnRoute
                              .startsWith(pattern) ||
                          LiveLoadsStatus.onRoute.name.startsWith(pattern)) {
                        suggestions
                            .add(context.l10n.yardLiveLoadsStatusOnRoute);
                      }
                      if (context.l10n.yardLiveLoadsStatusRequested
                              .startsWith(pattern) ||
                          LiveLoadsStatus.requested.name.startsWith(pattern)) {
                        suggestions
                            .add(context.l10n.yardLiveLoadsStatusRequested);
                      }
                      if (context.l10n.yardLiveLoadsStatusScheduled
                              .startsWith(pattern) ||
                          LiveLoadsStatus.scheduled.name.startsWith(pattern)) {
                        suggestions
                            .add(context.l10n.yardLiveLoadsStatusScheduled);
                      }
                    }
                    return Future.value(suggestions);
                  },
                  close: Navigator.of(context).pop,
                  getTitle: (suggestion) => suggestion,
                  getValue: (suggestion) {
                    return suggestion;
                  },
                );
            }
            return Container();
          },
        );

  static String _loadsDateRange(
    BuildContext context,
    DateTimeRange? dateTimeRange,
  ) {
    if (dateTimeRange == null) {
      return '';
    }
    final shortDateFormatter = DateFormat.yMd(
      Localizations.localeOf(context).toLanguageTag(),
    );
    final start = shortDateFormatter.format(dateTimeRange.start);
    final end = shortDateFormatter.format(dateTimeRange.end);
    return '$start - $end';
  }

  static const kYardKey = 'yard';
  static const kCustomerKey = 'customer';
  static const kStatusKey = 'status';
  static const kLoadsDateRangeKey = 'loadDate';
  static const kSearchKey = 'search';

  static DateTimeRange? loadFromAndToDate;

  final BaseClient httpClient;
  final AppConfig config;

  @override
  List<EmrFilterModel<dynamic>> newFilters() {
    final yardSelected = tryGetFilter<String>(
          key: LiveLoadsFilterController.kYardKey,
        )?.value !=
        null;
    if (!yardSelected) {
      return [];
    }
    return [
      if (!containsFilter(key: LiveLoadsFilterController.kYardKey))
        EmrFilterModel<String>(
          key: LiveLoadsFilterController.kYardKey,
          name: 'Yard',
        ),
      if (!containsFilter(key: LiveLoadsFilterController.kCustomerKey))
        EmrFilterModel<String>(
          key: LiveLoadsFilterController.kCustomerKey,
          name: 'Customer',
        ),
      if (!containsFilter(key: LiveLoadsFilterController.kLoadsDateRangeKey))
        EmrFilterModel<DateTimeRange>(
          key: LiveLoadsFilterController.kLoadsDateRangeKey,
          name: 'Date Range',
        ),
      if (!containsFilter(key: LiveLoadsFilterController.kStatusKey))
        EmrFilterModel<String>(
          key: LiveLoadsFilterController.kStatusKey,
          name: 'Status',
        ),
      if (!containsFilter(key: LiveLoadsFilterController.kSearchKey))
        EmrFilterModel<String>(
          key: LiveLoadsFilterController.kSearchKey,
          name: 'Search',
        ),
    ];
  }

  Future<LiveLoadsSearchModel?> getCurrentFilters() async {
    final yardSelected = tryGetFilter<String>(
      key: LiveLoadsFilterController.kYardKey,
    )?.value;
    final customerSelected =
        tryGetFilter<String>(key: LiveLoadsFilterController.kCustomerKey)
            ?.value;
    final fromToDateSelected = tryGetFilter<DateTimeRange>(
      key: LiveLoadsFilterController.kLoadsDateRangeKey,
    )?.value;

    final statusSelected =
        tryGetFilter<String>(key: LiveLoadsFilterController.kStatusKey)?.value;

    final searchComment =
        tryGetFilter<String>(key: LiveLoadsFilterController.kSearchKey)?.value;
    return LiveLoadsSearchModel(
      yard: yardSelected,
      customer: customerSelected,
      startDate: fromToDateSelected?.start,
      endDate: fromToDateSelected?.end,
      status: statusSelected,
      search: searchComment,
    );
  }

  @override
  String? validator() {
    // Valid if a publication and managed buyer or party are chosen.
    if (containsFilter(key: kYardKey, withValue: true)) {
      return null;
    }

    // Invalid.
    return 'Select a Yard, and then extra filters';
  }
}
