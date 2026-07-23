import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:flutter/widgets.dart';

class DoorsFilterController extends EmrFilterController {
  DoorsFilterController({required this.dataController})
    : super(
        filterContentBuilder: (context, filter, controller) {
          switch (filter.key) {
            case kSite:
              return EmrFilterAutoComplete<ListValue, String>(
                Key(filter.key),
                filter,
                controller,
                (pattern, filterController) async {
                  return dataController.allSites
                      .where(
                        (e) =>
                            (e.value ?? '').toLowerCase().contains(
                              pattern.toLowerCase(),
                            ) ||
                            (e.text ?? '').toLowerCase().contains(
                              pattern.toLowerCase(),
                            ),
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
                            (e.text ?? '').toLowerCase().contains(
                              pattern.toLowerCase(),
                            ),
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

  final DoorDataController dataController;

  static const kSite = 'Sites';
  static const kAccessController = 'AccessControllers';

  void fetchFilterValues() {
    dataController.getFilterValues();
  }

  @override
  List<EmrFilterModel<dynamic>> newFilters() {
    return [
      if (!containsFilter(key: kSite))
        EmrFilterModel<List<String>>(key: kSite, name: 'Site'),
      if (!containsFilter(key: kAccessController))
        EmrFilterModel<List<String>>(key: kAccessController, name: 'Door'),
    ];
  }
}
