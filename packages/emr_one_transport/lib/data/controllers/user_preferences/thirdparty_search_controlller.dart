import 'package:emr_one_transport/core/api_response.dart';
import 'package:emr_one_transport/data/dataSources/thirdparty_settings_data_source.dart';
import 'package:emr_one_transport/data/models/user_preferences/user_preference_thirdparty_haulier_request.dart';
import 'package:emr_one_transport/data/models/user_preferences/user_thirdparty_hauliers.dart';
import 'package:emr_one_transport/data/services/user_settings_service.dart';
import 'package:flutter/material.dart';

class ThirdPartyHaulierSearchController extends ChangeNotifier {
  ThirdPartyHaulierSearchController({
    required this.dataSource,
    required this.userSettingsService,
  });

  final UserSettingsService userSettingsService;
  bool isLoading = true;
  late ThirdPartySettingsDataSource dataSource;
  List<UserPreferenceThirdPartyHaulierRequest> modifiedHaulierEntries = [];
  List<UserThirdPartyHauliers> hauliersDetails = [];
  List<UserThirdPartyHauliers> filteredThirdPartyHauliers = [];

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
      filteredThirdPartyHauliers = dataSource.data.value;
      hauliersDetails = filteredThirdPartyHauliers
          .map(
            (e) => UserThirdPartyHauliers(
              e.accountId,
              haulierCode: e.haulierCode,
              isMyThirdPartyHaulier: e.isMyThirdPartyHaulier,
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
    filteredThirdPartyHauliers
        .firstWhere((e) => e.haulierCode == code)
        .isMyThirdPartyHaulier = value;
    notifyListeners();

    final index =
        modifiedHaulierEntries.indexWhere((e) => e.haulierCode == code);

    if (index >= 0) {
      modifiedHaulierEntries[index].isSelected = value;
    } else {
      modifiedHaulierEntries.add(
        UserPreferenceThirdPartyHaulierRequest(
          accountId,
          haulierCode: code,
          haulierName: name,
          isSelected: value,
        ),
      );
    }
  }

  Future<ApiResponse<void>> saveUserThirdPartyHauliers() async {
    showLoader();
    modifiedHaulierEntries.removeWhere(
      (h) =>
          h.isSelected ==
          hauliersDetails
              .firstWhere((e) => e.haulierCode == h.haulierCode)
              .isMyThirdPartyHaulier!,
    );
    final result = await userSettingsService
        .saveUserThirdPartyHauliers(modifiedHaulierEntries);
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
