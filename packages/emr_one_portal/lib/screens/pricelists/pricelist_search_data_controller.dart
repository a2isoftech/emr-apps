import 'package:emr_account_registration/signup.dart';
import 'package:emr_one_portal/portal.dart';
import 'package:flutter/material.dart';

class PricelistSearchDataController {
  PricelistSearchDataController({
    required this.pricelistService,
    required this.accountService,
  });

  final PricelistService pricelistService;
  final AccountServicePortal accountService;
  late List<Yard> yards;

  ValueNotifier<bool> isPropertyFilterValuesReady = ValueNotifier(false);
  ValueNotifier<List<String>?> operators = ValueNotifier([]);
  ValueNotifier<List<String>?> propertyValues = ValueNotifier([]);
  ValueNotifier<List<String>> selectedFilters = ValueNotifier([]);

  String? countryShortName;

  Future<void> getFilterValues() async {
    if (countryShortName == null || countryShortName!.isEmpty) {
      final account = await accountService.getAccountDetails();
      countryShortName = account != null
          ? account.accountDetails.countryCode
          : PortalStrings.defaultCountry;
    }
    yards = await pricelistService.getYardCodes(countryShortName ?? '');
    await getPropertyFilterValues();
  }

  Future<void> getPropertyFilterValues() async {
    isPropertyFilterValuesReady.value = true;
  }

  void addPropertyFilter(String filter) {
    if (!selectedFilters.value.contains(filter)) {
      selectedFilters.value.add(filter);
    }
  }
}
