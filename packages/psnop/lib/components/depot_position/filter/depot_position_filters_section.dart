import 'dart:async';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:psnop/components/depot_position/filter/depot_position_filter_controller.dart';
import 'package:psnop/models/depot_search/depot_search_model.dart';
import 'package:psnop/networking/psnop_api_helper.dart';
import 'package:psnop/providers/depot_position_controller.dart';
import 'package:psnop/repository/depot_position_repository.dart';

class DepotPositionFiltersSection extends StatefulWidget {
  const DepotPositionFiltersSection({
    required this.apiHelper,
    super.key,
  });

  final PsnopApiHelper apiHelper;

  @override
  State<DepotPositionFiltersSection> createState() =>
      _DepotPositionFiltersSectionState();
}

class _DepotPositionFiltersSectionState
    extends State<DepotPositionFiltersSection> {
  late final DepotPositionFilterController controller;
  late DepotPositionController depotPositionController;

  DepotSearchModel searchFilters = DepotSearchModel(
    depotNos: [],
    depotRegionNames: [],
    gradeGroups: [],
    gradeTypes: [],
    grades: [],
    ignoreZeroHeaps: false,
    weeks: 2,
  );

  @override
  void initState() {
    super.initState();
    controller = DepotPositionFilterController(
      widget.apiHelper,
    );

    controller.filters.addListener(refreshGridData);

    unawaited(refreshGridData());
  }

  @override
  void dispose() {
    controller.filters.removeListener(refreshGridData);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    depotPositionController = Provider.of<DepotPositionController>(
      context,
    );
    return SizedBox(
      height: 100,
      child: Padding(
        padding: const EdgeInsets.all(Insets.gutter),
        child: EmrFilter(
          controller: controller,
          validator: controller.validator,
        ),
      ),
    );
  }

  Future<DepotSearchModel?> getCurrentFilters() async {
    final depotRegionsSelected = controller
        .tryGetFilter<List<String>>(
          key: DepotPositionFilterController.kDepotRegionKey,
        )
        ?.value;
    final depotsSelected = controller
        .tryGetFilter<List<String>>(
          key: DepotPositionFilterController.kDepotKey,
        )
        ?.value;

    if (depotRegionsSelected == null && depotsSelected == null) {
      return null;
    }

    final gradesSelected = controller
        .tryGetFilter<List<String>>(
          key: DepotPositionFilterController.kGradeKey,
        )
        ?.value;

    final gradeGroupsSelected = controller
        .tryGetFilter<List<String>>(
          key: DepotPositionFilterController.kGradeGroupKey,
        )
        ?.value;

    final gradeTypesSelected = controller
        .tryGetFilter<List<String>>(
          key: DepotPositionFilterController.kGradeTypeKey,
        )
        ?.value;

    final ignoreZeroHeapsSelected = controller
        .tryGetFilter<bool>(
          key: DepotPositionFilterController.kIgnoreZeroHeapsKey,
        )
        ?.value;

    final weekSelected = controller
        .tryGetFilter<int>(
          key: DepotPositionFilterController.kWeeksKey,
        )
        ?.value;

    return DepotSearchModel(
      depotRegionNames: depotRegionsSelected ?? [],
      depotNos: depotsSelected ?? [],
      gradeGroups: gradeGroupsSelected,
      grades: gradesSelected,
      gradeTypes: gradeTypesSelected,
      ignoreZeroHeaps: ignoreZeroHeapsSelected ?? false,
      weeks: weekSelected ?? 2,
    );
  }

  Future<void> refreshGridData() async {
    final newFilters = await getCurrentFilters();
    if (newFilters == null) {
      return;
    }

    if (!(searchFilters == newFilters)) {
      await depotPositionController.getDepotPosition(
        searchModel: newFilters,
        repository: DepotPositionRepository(apiHelper: widget.apiHelper),
      );
    }
  }
}
