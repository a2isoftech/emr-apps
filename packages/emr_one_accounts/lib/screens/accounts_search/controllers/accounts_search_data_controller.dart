import 'package:emr_core_api/emr_core_api.dart';

class AccountsSearchDataController {
  AccountsSearchDataController({required this.coreApiService});
  final CoreApiService coreApiService;

  late List<ListValue> allAccountStatuses;
  late List<ListValue> allAccountTypes;

  Future<void> getFilterValues() async {
    allAccountStatuses = await coreApiService.accountService
        .getListValuesForAccountStatuses();
    allAccountTypes = await coreApiService.accountService
        .getListValuesForAccountTypes();
  }

  Future<List<ListValue>> getAccountManagers(String query) {
    return coreApiService.accountService.getListValuesForAccountManagers(query);
  }
}
