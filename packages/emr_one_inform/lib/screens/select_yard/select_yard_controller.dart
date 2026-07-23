import 'package:emr_one_inform/globals.dart';
import 'package:emr_one_inform/models/yard.dart';
import 'package:emr_one_inform/repository/shared_preferences/ipreference_repository.dart';
import 'package:emr_one_inform/services/interfaces/ilanding_page_service.dart';
import 'package:emr_one_inform/services/select_yard_service.dart';
import 'package:flutter/material.dart';

class SelectYardController extends ChangeNotifier {
  SelectYardController({
    required this.selectYardService,
    required this.userPreferencesRepository,
    required this.landingPageService,
  });

  final SelectYardService selectYardService;
  final ILandingPageService landingPageService;
  final IUserPreferencesRepository userPreferencesRepository;

  bool isBusy = false;
  bool isSaveEnabled = false;

  List<String> territories = List.empty(growable: true);
  String? selectedTerritory;

  List<Yard> yards = List.empty(growable: true);
  Yard? selectedYard;

  Future<void> load() async {
    isSaveEnabled = false;
    isBusy = true;
    // notifyListeners();

    territories = await selectYardService.getAllTerritories();
    selectedTerritory = await userPreferencesRepository.getTerritory();

    if (selectedTerritory != null && selectedTerritory!.isNotEmpty) {
      yards = await selectYardService.getYardsByTerritoryCode(
        code: selectedTerritory!,
      );

      selectedYard = await userPreferencesRepository.getYard();
    }

    isBusy = false;
    notifyListeners();
  }

  Future<void> setSelectedTerritory(String territory) async {
    isSaveEnabled = false;
    isBusy = true;
    notifyListeners();

    selectedTerritory = territory;
    await userPreferencesRepository.saveTerritory(territory);

    yards = await selectYardService.getYardsByTerritoryCode(
      code: selectedTerritory!,
    );

    selectedYard = null;

    isBusy = false;
    notifyListeners();
  }

  Future<void> setSelectedYard(Yard yard) async {
    isSaveEnabled = false;
    isBusy = true;
    notifyListeners();

    selectedYard = yard;
    await userPreferencesRepository.saveYard(yard);

    InformJobs.allJobsCounts = await landingPageService.getAllJobsCount(
      yardCode: yard.yardCode,
      startDate: DateTime.now().toUtc(),
      endDate: DateTime.now().toUtc(),
      filterForUser: true,
    );
    InformJobs.yardDetails =
        await landingPageService.getYardDetails(yard.yardCode!);

    if (InformJobs.yardDetails != null) {
      InformJobs.preference = await landingPageService
          .getPreferenceForCompanyCode(InformJobs.yardDetails!.companyCode!);
    }

    isSaveEnabled = true;
    isBusy = false;
    notifyListeners();
  }
}
