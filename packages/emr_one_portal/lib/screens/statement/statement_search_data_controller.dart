import 'package:emr_one_portal/portal.dart';
import 'package:flutter/material.dart';

class StatementSearchDataController {
  StatementSearchDataController({
    required this.portalService,
  });

  late List<Company> companies;
  final PortalService portalService;
  ValueNotifier<bool> isPropertyFilterValuesReady = ValueNotifier(false);
  ValueNotifier<List<String>?> operators = ValueNotifier([]);
  ValueNotifier<List<String>?> propertyValues = ValueNotifier([]);

  ValueNotifier<List<String>> selectedFilters = ValueNotifier([]);

  Future<void> getFilterValues() async {
    companies = await portalService.getCompaniesForUserInvoices();
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
