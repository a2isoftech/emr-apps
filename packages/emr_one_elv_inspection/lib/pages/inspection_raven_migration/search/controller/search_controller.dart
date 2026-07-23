import 'package:emr_one_core/utilities/debounceable.dart';
import 'package:emr_one_elv_core/models/api_response.dart';
import 'package:emr_one_elv_core/models/inspection_search_input_model.dart';
import 'package:emr_one_elv_inspection/models/raven_migration/search_response_model.dart';
import 'package:emr_one_elv_inspection/services/inspection_service_raven.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class InspectionSearchController extends ChangeNotifier {
  InspectionSearchController({required this.service});
  final InspectionServiceRaven service;

  List<SearchResponseModel>? results;
  String searchText = '';
  bool loadingSearch = false;
  Yard? selectedYard;

  final _debounceableSearch = Debounceable<ApiResponse<SearchResponseModel>?>();

  Future<void> initSearchController(Yard defaultYard) async {
    selectedYard = defaultYard;
    await searchForVehicles();
    loadingSearch = false;
    notifyListeners();
  }

  Future<void> searchForVehicles() => _debounceableSearch.call(() async {
    loadingSearch = true;
    notifyListeners();
    if (selectedYard != null) {
      final response = await service.getInspectionVehicles(
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

    notifyListeners();
    return null;
  });

  Future<void> refreshList() async {
    loadingSearch = true;
    notifyListeners();
    final response = await service.getInspectionVehicles(
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

  void searchOnBack() {
    searchText = '';
    results?.clear();
    notifyListeners();
    searchForVehicles();
    notifyListeners();
  }
}
