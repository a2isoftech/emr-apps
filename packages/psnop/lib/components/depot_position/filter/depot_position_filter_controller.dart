import 'package:emr_flutter_theme/controls/emr_button.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:psnop/models/filter_response_models/active_grade_groups_model.dart';
import 'package:psnop/models/filter_response_models/active_grade_types_model.dart';
import 'package:psnop/models/filter_response_models/depot_region_response_model.dart';
import 'package:psnop/models/filter_response_models/depot_response_model.dart';
import 'package:psnop/networking/psnop_api_helper.dart';
import 'package:psnop/repository/filters/depot_regions_repository.dart';
import 'package:psnop/repository/filters/depot_repository.dart';
import 'package:psnop/repository/filters/grade_group_repository.dart';
import 'package:psnop/repository/filters/grade_repository.dart';
import 'package:psnop/repository/filters/grade_type_repository.dart';

class DepotPositionFilterController extends EmrFilterController {
  DepotPositionFilterController(
    this.apiHelper,
  ) : super(
          filters: [
            EmrFilterModel<List<String>>(
              key: kDepotRegionKey,
              name: 'Depot Region',
            ),
            EmrFilterModel<List<String>>(
              key: kDepotKey,
              name: 'Depot',
            ),
          ],
          filterContentBuilder: (context, filter, controller) {
            // Determine the widget to show for each filter.
            switch (filter.key) {
              case kDepotRegionKey:
                return EmrFilterAutoComplete<RegionViewModel, String>(
                  const Key(kDepotRegionKey),
                  filter,
                  controller,
                  (pattern, filterController) =>
                      DepotRegionRepository.fetchDepotRegionList(
                    apiHelper: apiHelper,
                    filter: pattern,
                  ),
                  close: Navigator.of(context).pop,
                  getTitle: (suggestion) => suggestion.depotRegionName,
                  getValue: (suggestion) => suggestion.depotRegionName,
                  multi: true,
                );
              case kDepotKey:
                return EmrFilterAutoComplete<DepotResponseModel, String>(
                  const Key(kDepotKey),
                  filter,
                  controller,
                  (pattern, filterController) => DepotRepository.fetchDepotList(
                    apiHelper: apiHelper,
                    filter: pattern,
                  ),
                  close: Navigator.of(context).pop,
                  getTitle: (suggestion) =>
                      '${suggestion.depotNumber} - ${suggestion.depotName}',
                  getValue: (suggestion) => suggestion.depotNumber,
                  multi: true,
                );
              case kGradeKey:
                return EmrFilterAutoComplete<String, String>(
                  const Key(kGradeKey),
                  filter,
                  controller,
                  (pattern, filterController) =>
                      GradeRepository.fetchGradesList(
                    apiHelper: apiHelper,
                    filter: pattern,
                    selectedGradeTypes: controller
                        .tryGetFilter<List<String>>(key: kGradeTypeKey)
                        ?.value,
                    selectedGradeGroups: controller
                        .tryGetFilter<List<String>>(key: kGradeGroupKey)
                        ?.value,
                  ),
                  close: Navigator.of(context).pop,
                  getTitle: (suggestion) => suggestion,
                  getValue: (suggestion) => suggestion,
                  multi: true,
                );
              case kGradeGroupKey:
                return EmrFilterAutoComplete<ActiveGradeGroupsModel, String>(
                  const Key(kGradeGroupKey),
                  filter,
                  controller,
                  (pattern, filterController) =>
                      GradeGroupRepository.fetchGradeGroupsList(
                    apiHelper: apiHelper,
                    filter: pattern,
                    selectedGradeTypes: controller
                        .tryGetFilter<List<String>>(key: kGradeTypeKey)
                        ?.value,
                    selectedGrades: controller
                        .tryGetFilter<List<String>>(key: kGradeKey)
                        ?.value,
                  ),
                  close: Navigator.of(context).pop,
                  getTitle: (suggestion) => suggestion
                              .gradeGroupTerritoryName !=
                          null
                      // ignore: lines_longer_than_80_chars
                      ? '${suggestion.gradeGroup} - ${suggestion.gradeGroupTerritoryName}'
                      : suggestion.gradeGroup,
                  getValue: (suggestion) => suggestion.gradeGroup,
                  multi: true,
                );
              case kGradeTypeKey:
                return EmrFilterAutoComplete<ActiveGradeTypesModel, String>(
                  const Key(kGradeGroupKey),
                  filter,
                  controller,
                  (pattern, filterController) =>
                      GradeTypeRepository.fetchGradeTypesList(
                    apiHelper: apiHelper,
                    filter: pattern,
                    selectedGradeGroups: controller
                        .tryGetFilter<List<String>>(key: kGradeGroupKey)
                        ?.value,
                    selectedGrades: controller
                        .tryGetFilter<List<String>>(key: kGradeKey)
                        ?.value,
                  ),
                  close: Navigator.of(context).pop,
                  getTitle: (suggestion) => suggestion.gradeTypeTerritoryName !=
                          null
                      // ignore: lines_longer_than_80_chars
                      ? '${suggestion.gradeType} - ${suggestion.gradeTypeTerritoryName}'
                      : suggestion.gradeType,
                  getValue: (suggestion) => suggestion.gradeType,
                  multi: true,
                );
              case kIgnoreZeroHeapsKey:
                return EmrButton(
                  label: 'Ignore Zero Heaps',
                  onPressed: () {
                    controller.addOrUpdateFilter(
                      filter: filter,
                      text: 'Ignore Zero Heaps',
                      value: true,
                    );
                    Navigator.pop(context);
                  },
                );
              case kWeeksKey:
                return EmrPicker<int>(
                  items: (_) => Future.value([1, 2, 4]),
                  itemTitleText: (number) {
                    return number.toString();
                  },
                  onItemSelected: (p0) {
                    controller.addOrUpdateFilter(
                      filter: filter,
                      text: 'Week(s): $p0',
                      value: p0,
                    );
                    Navigator.pop(context);
                  },
                  mode: EmrPickerMode.search,
                );
            }

            throw Exception(
              'filterContentBuilder should return a Widget for ${filter.key}',
            );
          },
        );

  final PsnopApiHelper apiHelper;

  // Required filters.
  static const kDepotRegionKey = 'depotRegion';
  static const kDepotKey = 'depot';

  // Optional filters.
  static const kGradeKey = 'gradeCode';
  static const kGradeGroupKey = 'gradeGroup';
  static const kGradeTypeKey = 'gradeType';
  static const kIgnoreZeroHeapsKey = 'ignoreZeroHeaps';
  static const kWeeksKey = 'weeks';

  @override
  List<EmrFilterModel<dynamic>> newFilters() {
    final depotRegionSelected = tryGetFilter<List<String>>(
          key: DepotPositionFilterController.kDepotRegionKey,
        )?.value !=
        null;

    final depotSelected = tryGetFilter<List<String>>(
          key: DepotPositionFilterController.kDepotKey,
        )?.value !=
        null;

    if (!depotRegionSelected && !depotSelected) {
      return [];
    }
    return [
      if (!containsFilter(key: DepotPositionFilterController.kGradeKey))
        EmrFilterModel<List<String>>(
          key: DepotPositionFilterController.kGradeKey,
          name: 'Grade',
        ),
      if (!containsFilter(key: DepotPositionFilterController.kGradeGroupKey))
        EmrFilterModel<List<String>>(
          key: DepotPositionFilterController.kGradeGroupKey,
          name: 'Grade Group',
        ),
      if (!containsFilter(key: DepotPositionFilterController.kGradeTypeKey))
        EmrFilterModel<List<String>>(
          key: DepotPositionFilterController.kGradeTypeKey,
          name: 'Grade Type',
        ),
      if (!containsFilter(
        key: DepotPositionFilterController.kIgnoreZeroHeapsKey,
      ))
        EmrFilterModel<bool>(
          key: DepotPositionFilterController.kIgnoreZeroHeapsKey,
          name: 'Ignore Zero Heaps',
        ),
      if (!containsFilter(key: DepotPositionFilterController.kWeeksKey))
        EmrFilterModel<int>(
          key: DepotPositionFilterController.kWeeksKey,
          name: 'Weeks',
        ),
    ];
  }

  @override
  String? validator() {
    // Valid if a publication and managed buyer or party are chosen.
    if (containsFilter(key: kDepotRegionKey, withValue: true) ||
        containsFilter(key: kDepotKey, withValue: true)) {
      return null;
    }

    // Invalid.
    return 'Select a Depot Region OR Depot, and then extra filters';
  }
}
