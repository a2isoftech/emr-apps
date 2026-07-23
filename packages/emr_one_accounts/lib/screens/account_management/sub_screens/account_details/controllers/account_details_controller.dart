import 'package:emr_core_api/services/core_api_service.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class AccountDetailsController extends ChangeNotifier {
  AccountDetailsController({required this.coreApiService});

  final CoreApiService coreApiService;

  final ValueNotifier<Account?> currentAccount = ValueNotifier(null);

  void refreshScreen() {
    notifyListeners();
  }

  static bool forceLoad = false;

  Future<(Account?, String?, String?)> getAccount(String code) async {
    final account = await coreApiService.accountService.getAccountInfo(
      code,
      forceLoad: forceLoad,
    );
    forceLoad = false;
    return account;
  }
}
