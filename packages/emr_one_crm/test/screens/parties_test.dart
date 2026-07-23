// ignore_for_file: avoid_dynamic_calls

import 'package:emr_one_crm/emr_one_crm.dart';
import 'package:emr_one_crm/keys.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';

import '../../../emr_one_core/test/eo_test_helper.dart';

void main() {
  eoPatrolTest(
    'parties screen should show parties',
    registerRoutes: CrmRouteRegistry.register,
    test: ($, httpResponses) async {
      // Set HTTP responses for the calls we're expecting.
      httpResponses['PartySearch'] = [
        kPartySearchOneResult,
        kPartySearchNoResults,
      ];

      // Tapping the TradeR tile should take us to the parties screen
      // with a spinner.
      await $('TRADER').tap(settlePolicy: SettlePolicy.noSettle);

      // The party results will then load, and we expect to see LITT006.
      await $('LITT006').waitUntilVisible();

      expect($('LITT006'), findsOneWidget);
      expect($('IT Test Trader'), findsOneWidget);

      // Now enter search text which will not match any parties.
      await $(K.partySearchTextField).enterText('Nothing');
      await $('No results').waitUntilVisible();
      expect($('No results'), findsOneWidget);
      expect($('LITT006'), findsNothing);
    },
  );
}

final kPartySearchOneResult = {
  'data': {
    'myAccounts': {
      'nodes': [
        {
          'accountNumber': 'LITT006',
          'name': 'IT Test Trader',
          '__typename': 'Account',
        }
      ],
      '__typename': 'AccountsConnection',
    },
    '__typename': 'Query',
  },
};

final kPartySearchNoResults = {
  'data': {
    'myAccounts': {
      'nodes': <Map<String, Object>>[],
      '__typename': 'AccountsConnection',
    },
    '__typename': 'Query',
  },
};
