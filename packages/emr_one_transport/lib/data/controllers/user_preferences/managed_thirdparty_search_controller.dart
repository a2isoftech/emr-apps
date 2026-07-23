import 'package:emr_one_transport/core/api_response.dart';
import 'package:emr_one_transport/data/dataSources/managed_thirdparty_settings_data_source.dart';
import 'package:emr_one_transport/data/models/user_preferences/user_managed_hauliers.dart';
import 'package:emr_one_transport/data/models/user_preferences/user_managed_hauliers_request.dart';
import 'package:emr_one_transport/data/services/user_settings_service.dart';
import 'package:flutter/material.dart';

class ManagedThirdPartyHaulierSearchController extends ChangeNotifier {
  ManagedThirdPartyHaulierSearchController({
    required this.dataSource,
    required this.userSettingsService,
  });

  final UserSettingsService userSettingsService;
  bool isLoading = true;
  late ManagedThirdPartySettingsDataSource dataSource;
  List<UserManagedHauliersRequest> modifiedHaulierEntries = [];
  List<UserManagedHauliers> hauliersDetails = [];
  List<UserManagedHauliers> filteredManagedThirdPartyHauliers = [];

  Future<void> initialize() async {
    dataSource.loading.addListener(_updateDisplayList);
    showLoader();
    await dataSource.refresh();
  }

  void clearListeners() {
    dataSource.loading.removeListener(_updateDisplayList);
  }

  void _updateDisplayList() {
    if (dataSource.loading.value) {
      showLoader();
    } else {
      filteredManagedThirdPartyHauliers = dataSource.data.value;
      hauliersDetails = filteredManagedThirdPartyHauliers
          .map(
            (e) => UserManagedHauliers(
              e.accountId,
              haulierCode: e.haulierCode,
              isMyManagedHaulier: e.isMyManagedHaulier,
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

  void toggleSelection(
    String accountId,
    String code,
    String name, {
    required bool value,
  }) {
    filteredManagedThirdPartyHauliers
        .firstWhere((e) => e.haulierCode == code)
        .isMyManagedHaulier = value;
    notifyListeners();

    final index =
        modifiedHaulierEntries.indexWhere((e) => e.haulierCode == code);

    if (index >= 0) {
      modifiedHaulierEntries[index].isSelected = value;
    } else {
      modifiedHaulierEntries.add(
        UserManagedHauliersRequest(
          accountId,
          haulierCode: code,
          haulierName: name,
          isSelected: value,
        ),
      );
    }
  }

  Future<ApiResponse<void>> saveUserManagedHauliers() async {
    isLoading = true;
    notifyListeners();

    modifiedHaulierEntries.removeWhere(
      (h) =>
          h.isSelected ==
          hauliersDetails
              .firstWhere((e) => e.haulierCode == h.haulierCode)
              .isMyManagedHaulier,
    );

    final result = await userSettingsService
        .saveUserManagedHauliers(modifiedHaulierEntries);

    if (result.isSuccess) {
      modifiedHaulierEntries = [];
    }
    hideLoader();
    return result;
  }

  Future<void> refreshData() async {
    await dataSource.refresh();
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
