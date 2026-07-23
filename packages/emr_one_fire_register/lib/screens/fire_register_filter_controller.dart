import 'package:collection/collection.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_fire_register/constants/string_constants.dart';
import 'package:emr_one_fire_register/models/models.dart';
import 'package:emr_one_fire_register/services/fire_register_service.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FireRegisterFilterController extends EmrFilterController {
  FireRegisterFilterController(
    this.fireRegisterService,
    this.activeLocale,
    this.selectedYard,
  ) : super(
        filters: [
          EmrFilterModel<String>(key: kArea, name: 'Area', enableDelete: false),
          EmrFilterModel<String>(key: kZone, name: 'Zone', enableDelete: false),
          EmrFilterModel<DateTime>(
            key: kDate,
            name: 'Date',
            enableDelete: false,
            value: DateTime.now(),
            text: DateFormat.yMd(
              activeLocale.toString(),
            ).format(DateTime.now()),
          ),
          EmrFilterModel<String>(
            key: kOnSite,
            name: StringConstants.onSite,
            enableDelete: false,
            value: StringConstants.onSite,
            text: 'On Site At Zone',
          ),
          EmrFilterModel<String>(key: kType, name: 'Type', enableDelete: false),
        ],
        filterContentBuilder: (context, filter, controller) {
          // Determine the widget to show for each filter.
          switch (filter.key) {
            case kArea:
              return EmrFilter.autocomplete<String, String>(
                const Key(kArea),
                filter,
                controller,
                (pattern, filterController) async {
                  // Get the area names for the selected yard.
                  final areas = await fireRegisterService.getYardAreas(
                    selectedYard,
                  );
                  final data = <String>[StringConstants.all];
                  final areaToSelect = areas.sortedBy((e) => e);
                  data.addAll(areaToSelect);

                  return Future.value(
                    data
                        .where(
                          (area) => area.contains(
                            RegExp(pattern, caseSensitive: false),
                          ),
                        )
                        .toList(),
                  );
                },
                close: Navigator.of(context).pop,
                getTitle: (suggestion) => suggestion,
                getValue: (suggestion) => suggestion,
              );

            case kZone:
              if (kArea.isNotEmpty) {
                return EmrFilter.autocomplete<String, String>(
                  const Key(kZone),
                  filter,
                  controller,
                  (pattern, filterController) async {
                    // Get the zone names for the selected yard.
                    final data = <String>[StringConstants.all];
                    final areaName = controller
                        .tryGetFilter<String>(
                          key: FireRegisterFilterController.kArea,
                        )
                        ?.value;
                    if (areaName != StringConstants.all) {
                      final zones = await fireRegisterService.getAreaZones(
                        areaName ?? '',
                        selectedYard,
                      );
                      final zonesToSelect = zones.sortedBy((e) => e).toList();
                      data.addAll(zonesToSelect);
                    }
                    return Future.value(
                      data
                          .where(
                            (zone) => zone.contains(
                              RegExp(pattern, caseSensitive: false),
                            ),
                          )
                          .toList(),
                    );
                  },
                  close: Navigator.of(context).pop,
                  getTitle: (suggestion) => suggestion,
                  getValue: (suggestion) => suggestion,
                );
              }
            case kDate:
              return EmrFilter.datePicker(
                context,
                filter,
                controller,
                close: Navigator.of(context).pop,
              );
            case kOnSite:
              return EmrFilter.autocomplete<GeneralFilterModel, String>(
                const Key(kOnSite),
                filter,
                controller,
                (pattern, filterController) {
                  return Future.value(GeneralFilterModel.defaultList);
                },
                close: Navigator.of(context).pop,
                getTitle: (suggestion) => suggestion.title,
                getValue: (suggestion) => suggestion.value,
              );
            case kType:
              return EmrFilter.autocomplete<GeneralFilterModel, String>(
                const Key(kType),
                filter,
                controller,
                (pattern, filterController) {
                  return Future.value(GeneralFilterModel.empTypeList);
                },
                close: Navigator.of(context).pop,
                getTitle: (suggestion) => suggestion.title,
                getValue: (suggestion) => suggestion.value,
              );
          }

          throw Exception(
            'filterContentBuilder should return a Widget for ${filter.key}',
          );
        },
      );

  final FireRegisterService fireRegisterService;
  final Locale activeLocale;
  String selectedYard;

  static const kArea = 'area';

  static const kZone = 'zone';

  static const kDate = 'date';

  static const kOnSite = 'onSite';

  static const kType = 'type';

  bool get areaSelected =>
      tryGetFilter<String>(key: FireRegisterFilterController.kArea)?.value !=
      null;

  bool get zoneSelected =>
      tryGetFilter<String>(key: FireRegisterFilterController.kZone)?.value !=
      null;

  bool get filtersSelected =>
      tryGetFilter<String>(key: FireRegisterFilterController.kArea)?.value !=
          null &&
      tryGetFilter<String>(key: FireRegisterFilterController.kZone)?.value !=
          null &&
      tryGetFilter<DateTime>(key: FireRegisterFilterController.kDate)?.value !=
          null;
}
