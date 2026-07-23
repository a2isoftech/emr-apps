import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:flutter/widgets.dart';

class AccessCredentialsFilterController extends EmrFilterController {
  AccessCredentialsFilterController({required this.dataController})
    : super(
        filterContentBuilder: (context, filter, controller) {
          switch (filter.key) {
            case kGroup:
              return EmrFilterAutoComplete<ListValue, String>(
                Key(filter.key),
                filter,
                controller,
                (pattern, filterController) async {
                  return dataController.allGroups
                      .where(
                        (e) =>
                            (e.value ?? '').toLowerCase().contains(
                              pattern.toLowerCase(),
                            ) ||
                            (e.text ?? '').toLowerCase().contains(pattern),
                      )
                      .toList();
                },
                close: Navigator.of(context).pop,
                getTitle: (p0) => '${p0.text}',
                getValue: (p0) => p0.value ?? '',
                multi: true,
              );
            case kAccessController:
              return EmrFilterAutoComplete<ListValue, String>(
                Key(filter.key),
                filter,
                controller,
                (pattern, filterController) async {
                  return dataController.allAccessControllers
                      .where(
                        (e) =>
                            (e.value ?? '').toLowerCase().contains(
                              pattern.toLowerCase(),
                            ) ||
                            (e.text ?? '').toLowerCase().contains(pattern),
                      )
                      .toList();
                },
                close: Navigator.of(context).pop,
                getTitle: (p0) => '${p0.text}',
                getValue: (p0) => p0.value ?? '',
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

  final AccessCredentialsDataController dataController;

  static const kGroup = 'Groups';
  static const kAccessController = 'AccessControllers';

  void fetchFilterValues() {
    dataController.getFilterValues();
  }

  @override
  List<EmrFilterModel<dynamic>> newFilters() {
    return [
      if (!containsFilter(key: kGroup))
        EmrFilterModel<List<String>>(key: kGroup, name: 'Group'),
      if (!containsFilter(key: kAccessController))
        EmrFilterModel<List<String>>(key: kAccessController, name: 'Door'),
    ];
  }
}
