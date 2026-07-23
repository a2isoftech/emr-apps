import 'package:emr_one_transport/data/dataSources/haulier_settings_data_source.dart';
import 'package:emr_one_transport/data/models/common/action_result.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/haulier_settings/haulier_settings.dart';
import 'package:emr_one_transport/data/services/haulier_settings_service.dart';
import 'package:flutter/material.dart';

class HaulierSettingsController extends ChangeNotifier {
  HaulierSettingsController({
    required this.dataSource,
    required this.haulierSettingsService,
  });

  late HaulierSettingsDataSource dataSource;
  final HaulierSettingsService haulierSettingsService;
  List<HaulierSettings> haulierDetails = [];
  List<HaulierSettings> filteredHauliers = [];
  List<HaulierSettings> modifiedHaulierEntries = [];
  bool isLoading = true;

  Future<void> initialize() async {
    dataSource.loading.addListener(_updateDisplayList);
    showLoader();
    await dataSource.refresh();
  }

  void _updateDisplayList() {
    if (dataSource.loading.value) {
      showLoader();
    } else {
      filteredHauliers = dataSource.data.value;
      haulierDetails = filteredHauliers
          .map(
            (e) => HaulierSettings(
              e.accountId,
              accountNo: e.accountNo,
              isManagedHaulier: e.isManagedHaulier,
            ),
          )
          .toList();
      hideLoader();
    }
  }

  Future<void> searchChanged(String searchedquery) async {
    dataSource.queryScope.query = searchedquery;
    await dataSource.refresh();
  }

  void toggleManagedSelection(
    String accountId,
    String code,
    String name, {
    required bool value,
  }) {
    filteredHauliers.firstWhere((e) => e.accountNo == code).isManagedHaulier =
        value;
    notifyListeners();

    if (modifiedHaulierEntries.any((e) => e.accountNo == code)) {
      modifiedHaulierEntries
          .firstWhere((e) => e.accountNo == code)
          .isManagedHaulier = value;
    } else {
      modifiedHaulierEntries.add(
        HaulierSettings(
          accountId,
          accountNo: code,
          name: name,
          isManagedHaulier: value,
        ),
      );
    }
  }

  Future<ActionResult> saveHaulierSettings() async {
    showLoader();
    modifiedHaulierEntries.removeWhere(
      (entry) =>
          entry.isManagedHaulier ==
          haulierDetails
              .firstWhere((e) => e.accountNo == entry.accountNo)
              .isManagedHaulier!,
    );
    final result = await haulierSettingsService
        .saveHaulierSettings(modifiedHaulierEntries);
    if (result.status == ActionStatus.apiSuccess) {
      modifiedHaulierEntries = [];
    }
    hideLoader();
    return result;
  }

  void showLoader() {
    isLoading = true;
    notifyListeners();
  }

  void hideLoader() {
    isLoading = false;
    notifyListeners();
  }
}
