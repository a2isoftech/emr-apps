import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/models/common/action_result.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/user_preferences/scheduler_preference.dart';
import 'package:emr_one_transport/data/services/user_settings_service.dart';
import 'package:flutter/material.dart';

class SchedulerPreferenceController extends ChangeNotifier {
  SchedulerPreferenceController(this.userSettingsService);

  final UserSettingsService userSettingsService;
  SchedulerPreference? schedulerPreference;

  Set<SchedulerTruckGroupBy> selectedGroupBy = {SchedulerTruckGroupBy.yard};
  Set<SchedulerTruckGroupBy> get selectedTruckGroupBy => selectedGroupBy;
  set selectedTruckGroupBy(Set<SchedulerTruckGroupBy> value) {
    selectedGroupBy = value;
    notifyListeners();
  }

  ValueNotifier<LocationTypeEnum> selectedLocationCustomizationOption =
      ValueNotifier<LocationTypeEnum>(LocationTypeEnum.endLocation);

  ValueNotifier<AddressFormatType> selectedAddressCustomizationOption =
      ValueNotifier<AddressFormatType>(AddressFormatType.fullAddress);

  bool isloading = true;

  void showLoader() {
    isloading = true;
    notifyListeners();
  }

  void hideLoader() {
    isloading = false;
    notifyListeners();
  }

  void onSelectedTruckGroupByChanged(Set<SchedulerTruckGroupBy> selectedVal) {
    selectedGroupBy = selectedVal;
    notifyListeners();
  }

  Future<void> init() async {
    final response = await userSettingsService.getSchedulerPreference();
    if (response.isSuccess) {
      schedulerPreference =
          response.data ?? SchedulerPreference.defaultPreference();

      selectedLocationCustomizationOption.value =
          schedulerPreference!.locationTypeEnum;
      selectedGroupBy = {
        schedulerPreference?.truckGrouping ?? SchedulerTruckGroupBy.yard,
      };
      selectedAddressCustomizationOption.value =
          schedulerPreference?.addressFormatType ??
          AddressFormatType.fullAddress;
    }
    hideLoader();
  }

  Future<ActionResult> save() async {
    try {
      showLoader();
      final response = await userSettingsService.saveSchedulerPreference(
        selectedGroupBy.first,
        selectedLocationCustomizationOption.value,
        selectedAddressCustomizationOption.value,
      );
      return response.isSuccess
          ? ActionResult(status: ActionStatus.apiSuccess)
          : ActionResult(
              status: ActionStatus.apiFailure,
              errorMessage: StringConstants.error,
            );
    } catch (e) {
      return ActionResult(
        status: ActionStatus.apiFailure,
        errorMessage: StringConstants.error,
      );
    } finally {
      hideLoader();
    }
  }
}
