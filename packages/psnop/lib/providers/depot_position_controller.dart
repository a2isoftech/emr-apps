import 'package:flutter/material.dart';
import 'package:psnop/enums/depot_position_state.dart';
import 'package:psnop/models/depot_position_table/depot_position_response_model.dart';
import 'package:psnop/models/depot_search/depot_search_model.dart';
import 'package:psnop/models/filter_response_models/active_grade_groups_model.dart';
import 'package:psnop/models/filter_response_models/active_grade_types_model.dart';
import 'package:psnop/models/filter_response_models/depot_region_response_model.dart';
import 'package:psnop/models/filter_response_models/depot_response_model.dart';
import 'package:psnop/repository/depot_position_repository.dart';

class DepotPositionController extends ChangeNotifier {
  List<DepotResponseModel> depotNumbers = [];
  List<RegionViewModel> depotRegionNames = [];
  List<String> grades = [];
  List<ActiveGradeGroupsModel> gradeGroups = [];
  List<ActiveGradeTypesModel> gradeTypes = [];
  bool ignoreZeroHeaps = false;
  DepotPositionResponseModel model = DepotPositionResponseModel.empty();
  DepotSearchModel? searchModel;
  double scrollOffset = 0;
  DepotPositionState state = DepotPositionState.init;
  int weeks = 2;

  void clear() {
    depotNumbers = [];
    depotRegionNames = [];
    gradeGroups = [];
    grades = [];
    gradeTypes = [];
    ignoreZeroHeaps = false;
    model = DepotPositionResponseModel.empty();
    scrollOffset = 0;
    searchModel = null;
    state = DepotPositionState.init;
    weeks = 2;
    notifyListeners();
  }

  Future<void> getDepotPosition({
    required DepotSearchModel searchModel,
    required DepotPositionRepository repository,
  }) async {
    this.searchModel = DepotSearchModel.fromJson(searchModel.toJson());
    scrollOffset = 0;
    state = DepotPositionState.loading;
    notifyListeners();

    final response = await repository.getDepotPositions(
      searchModel,
    );

    if (response != null) {
      model = response;
      state = DepotPositionState.success;
      notifyListeners();
    } else {
      model = DepotPositionResponseModel.empty();
      state = DepotPositionState.error;
      notifyListeners();
    }
  }
}
