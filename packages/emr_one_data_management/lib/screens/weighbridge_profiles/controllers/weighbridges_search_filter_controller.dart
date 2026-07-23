import 'package:collection/collection.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class WeighbridgesSearchFilterController extends EmrFilterController {
  WeighbridgesSearchFilterController({
    required this.userInfoService,
    this.savedFilters,
  }) : super(
          filters: [],
          filterContentBuilder: (context, filter, controller) {
            switch (filter.key) {
              case kYardCode:
                return EmrFilterAutoComplete<String, String>(
                  Key(filter.key),
                  filter,
                  controller,
                  (pattern, filterController) => Future.value(
                    switch (filter.key) {
                      kYardCode => userInfoService.userInfo.depots
                          .map((e) => e.yardCode!)
                          .toSet(),
                      _ => throw Exception(
                          '${context.l10n.noDataSourceFor} ${filter.key}',
                        ),
                    }
                        .where(
                      (element) => element
                          .contains(RegExp(pattern, caseSensitive: false)),
                    ),
                  ),
                  close: Navigator.of(context).pop,
                  getTitle: (suggestion) => suggestion,
                  getValue: (suggestion) => suggestion,
                );
            }
            return Container();
          },
        ) {
    addOrUpdateFilter(
      filter: yardFilter,
      text: yardCodeValue,
      value: yardCodeValue,
    );
  }

  final UserInfoService userInfoService;
  final Map<String, dynamic>? savedFilters;

  static const kYardCode = 'YardCode';

  @override
  List<EmrFilterModel<dynamic>> newFilters() {
    return [
      if (!containsFilter(key: kYardCode)) yardFilter,
    ];
  }

  EmrFilterModel<String> get yardFilter {
    return EmrFilterModel<String>(
      key: kYardCode,
      name: 'Yard',
      enableDelete: false,
      value: yardCodeValue,
      text: yardCodeValue,
    );
  }

  String get yardCodeValue =>
      savedFilters?.entries.firstWhereOrNull((x) => x.key == kYardCode)?.value
          as String? ??
      userInfoService.userInfo.defaultYard;
}
