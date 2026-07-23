import 'package:collection/collection.dart';
import 'package:emr_one_core/controllers/settings_controller.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_dismantling/models/models.dart';
import 'package:emr_one_elv_dismantling/services/dismantling_service.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DismantlingSearchController extends ChangeNotifier {
  DismantlingSearchController({
    required this.dismantlingService,
    required this.settingsController,
  });
  final DismantlingService dismantlingService;
  final SettingsController settingsController;
  final List<Yard> yards = [];
  Yard? selectedYard;
  String searchText = '';
  List<DismantlingVehicle> vehicles = [];
  EmrQueryGraphQLPageInfo pageInfo = EmrQueryGraphQLPageInfo(
    hasPreviousPage: false,
    hasNextPage: false,
    startCursor: null,
    endCursor: null,
  );
  bool loadingSearch = false;
  bool vehicleLoadingErrored = false;

  Future<void> init() async {
    await settingsController.loadUserSettings();
    final userTerritory = settingsController.territory;
    yards.clear();
    final userYards = UserInfoService.instance?.userInfo.yards;
    final userTerritories = UserInfoService.instance?.userInfo.territories;
    if (userYards == null || userTerritories == null) {
      return;
    }

    final currentTerritoryDepots = userTerritories
        .firstWhere((element) => element.code == userTerritory)
        .depots;
    final elvDepots = currentTerritoryDepots!.where(
      (element) => element.code.contains(DismantleConstants.kElvDepotAutCode),
    );

    for (final depot in elvDepots) {
      yards.add(
        userYards.firstWhere((element) => element.yardCode == depot.yardCode),
      );
    }

    final activeYards =
        await dismantlingService.getElvYardsFromUserYards(yards);

    yards
      ..clear()
      ..addAll(activeYards);

    yards.sortBy((element) => element.yardCode);
    if (yards.length == 1) {
      selectedYard = yards.first;
    } else {
      await getYardFromPrefs();
    }
    await getVehiclesForDismantling();
  }

  Future<void> getVehiclesForDismantling({
    String? cursor,
  }) async {
    loadingSearch = true;
    vehicleLoadingErrored = false;
    notifyListeners();
    try {
      final response = await dismantlingService.getVehiclesForDismantling(
        50,
        selectedYard!.yardCode,
        searchText.isEmpty ? searchText : '*$searchText*',
        afterCursor: cursor,
      );
      final activeVehicles = response.vehicles.where((p) => p.active).toList();
      if (cursor != null && cursor.isNotEmpty) {
        vehicles.addAll(activeVehicles);
      } else {
        vehicles = activeVehicles;
      }
      pageInfo = response.pageInfo;
    } catch (ex) {
      vehicleLoadingErrored = true;
      vehicles = [];
    } finally {
      loadingSearch = false;
      notifyListeners();
    }
  }

  Future<void> getYardFromPrefs() async {
    final prefs = await SharedPreferences.getInstance();

    final savedYardCode = prefs.getString('dismantlingYardCode');

    selectedYard = yards.firstWhere(
      (element) => element.yardCode == savedYardCode,
      orElse: () => yards.first,
    );
  }

  Future<void> setYardInPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('dismantlingYardCode', selectedYard!.yardCode);
  }

  void setYard(Yard e) {
    selectedYard = e;
    notifyListeners();
    setYardInPrefs();
  }
}
