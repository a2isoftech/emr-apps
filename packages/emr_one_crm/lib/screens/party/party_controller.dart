import 'dart:async';

import 'package:emr_core_api/services/core_api_service.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class PartyController extends ChangeNotifier {
  PartyController({required this.coreApiService});

  final CoreApiService coreApiService;
  Account partyInfo = Account.empty();
  bool hasData = false;
  bool hasErrors = false;

  ValueNotifier<List<Contact>> contactData = ValueNotifier<List<Contact>>([]);

  ValueNotifier<bool> busy = ValueNotifier<bool>(true);

  String contactFilterQuery = '';
  Future<Account?> getPartyPageInfo(String partyAccountNo) async {
    final response = await coreApiService.accountService.getAccountInfo(
      partyAccountNo,
      includePublicationData: false,
    );
    if (response.$1 != null) {
      partyInfo = response.$1!;
      hasData = true;
      hasErrors = false;
    } else {
      hasData = false;
      hasErrors = true;
    }
    return response.$1;
  }

  void notify() {
    notifyListeners();
  }

  void reset() {
    partyInfo = Account.empty();
    hasData = false;
    hasErrors = false;
  }

  void contactSearchChanged({bool forceLoad = false, bool setBusy = true}) {
    final filteredContacts = (partyInfo.contacts ?? []).where(
      (element) => (element.firstName ?? '').toLowerCase().contains(
        contactFilterQuery.toLowerCase(),
      ),
    );

    contactData.value = filteredContacts.toList();
  }
}
