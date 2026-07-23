import 'package:emr_one_crm/temp/contracts_provider.dart';
import 'package:flutter/material.dart';

enum PricesSortMode { mostRecent, leastRecent }

enum PricesFilterMode { all, spot, fixed, gpl }

class PricesDataController extends ChangeNotifier {
  PricesSortMode sortMode = PricesSortMode.mostRecent;
  PricesFilterMode filterMode = PricesFilterMode.all;
  String? search;

  List<Contract> contracts = [];

  List<ContractLine> contractLines = [];

  void refreshData() => notifyListeners();

  void setSort(PricesSortMode mode) {
    sortMode = mode;
    notifyListeners();
  }

  void setFilter(PricesFilterMode mode) {
    filterMode = mode;
    notifyListeners();
  }

  void setSearch(String value) {
    if (search != value) {
      search = value;
      notifyListeners();
    }
  }
}
