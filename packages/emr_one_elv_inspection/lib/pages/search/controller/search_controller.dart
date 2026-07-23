import 'package:emr_one_core/controllers/settings_controller.dart';
import 'package:emr_one_core/utilities/debounceable.dart';
import 'package:emr_one_elv_core/models/api_response.dart';
import 'package:emr_one_elv_core/models/elv_territory_enum.dart';
import 'package:emr_one_elv_core/models/inspection_search_input_model.dart';
import 'package:emr_one_elv_core/models/inspection_search_result.dart';
import 'package:emr_one_elv_inspection/models/model.dart';
import 'package:emr_one_elv_inspection/services/inspection_services.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InspectionSearchController extends ChangeNotifier {
  InspectionSearchController({
    required this.activeTerritory,
    required this.services,
  });
  final InspectionServices services;
  final ElvTerritory activeTerritory;

  List<InspectionResponseModel> yardVehicles = [];
  ValueNotifier<List<Yard>> searchedYard = ValueNotifier([]);
  List<InspectionResponseModel>? results;
  String searchText = '';
  Yard? selectedYard;
  bool searchingNextPage = false;
  bool hideInspectedVehicles = false;
  bool loadingSearch = false;
  bool hasSearched = false;
  int currentPage = 1;

  final _debounceableSearch =
      Debounceable<ApiResponse<InspectionSearchResults>?>();

  Future<void> initSearchController(
    SettingsController settingsController,
    List<Territory>? userTerritories,
    Yard? defaultYard,
  ) async {
    currentPage = 1;
    await settingsController.loadUserSettings();

    selectedYard = defaultYard;
    await searchForVehicles();
    loadingSearch = false;
    notifyListeners();
  }

  Future<void> searchForVehicles() => _debounceableSearch.call(() async {
    loadingSearch = true;
    notifyListeners();
    if (selectedYard != null) {
      final response = await services.getInspectionVehicles(
        first: 50,
        input: InspectionSearchInput(
          yardCode: selectedYard!.yardCode,
          searchText: searchText,
        ),
      );

      if (response.response == null) {
        loadingSearch = false;
        notifyListeners();
        return null;
      }
      results = response.response;
    }
    loadingSearch = false;
    hasSearched = true;
    currentPage += 1;
    searchingNextPage = false;

    notifyListeners();
    return null;
  });

  Future<void> refreshList() async {
    loadingSearch = true;
    notifyListeners();
    final response = await services.getInspectionVehicles(
      first: 50,
      input: InspectionSearchInput(
        yardCode: selectedYard!.yardCode,
        searchText: searchText,
      ),
    );
    results = response.response;
    loadingSearch = false;
    notifyListeners();
  }

  Future<void> setYardInPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('inspectionYardCode', selectedYard!.yardCode);
  }

  void searchOnBack() {
    searchText = '';
    yardVehicles.clear();
    results?.clear();
    notifyListeners();
    searchForVehicles();
    notifyListeners();
  }

  Future<void> nextPage() async {
    searchingNextPage = true;
    await searchForVehicles();
    notifyListeners();
  }
}
