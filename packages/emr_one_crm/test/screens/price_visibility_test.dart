import 'package:emr_one_crm/emr_one_crm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';

import '../../../emr_one_core/test/eo_test_helper.dart';

void main() {
  eoPatrolTest(
    'price visibility - desktop (managed buyer)',
    registerRoutes: CrmRouteRegistry.register,
    initialLocation: '/pricing',
    screen: Screen.desktop,
    test: ($, httpResponses) async {
      // Set HTTP responses for the calls we're expecting.
      httpResponses['GetGuidePriceListPublications'] = [kPublicationsResult];
      httpResponses['GetManagedBuyers'] = [kManagedBuyers];
      httpResponses['GetGuidePriceLists'] = [kGetGuidePriceLists];

      // The screen should initially show a validation error.
      final initialWidget = $('Select a buyer, and then extra filters');
      await initialWidget.waitUntilVisible();
      expect(initialWidget, findsOneWidget);

      // Select a buyer.
      await $(InputChip).$('Buyer').tap(settlePolicy: SettlePolicy.noSettle);
      await $('RONNIE FAIRHURST').tap(settlePolicy: SettlePolicy.noSettle);

      // Check results grid.
      final litt006 = $('LITT006');
      await litt006.waitUntilVisible();
      expect(litt006, findsOneWidget);

      expect($('YBLK'), findsNWidgets(2));
    },
  );

  eoPatrolTest(
    'price visibility - mobile',
    registerRoutes: CrmRouteRegistry.register,
    initialLocation: '/pricing',
    test: ($, httpResponses) async {
      // The screen is only available on desktops.
      final initialWidget = $('Not available');
      await initialWidget.waitUntilVisible();
      expect(initialWidget, findsOneWidget);
    },
  );

  eoPatrolTest(
    'price visibility - navigating away should cleanup',
    registerRoutes: CrmRouteRegistry.register,
    initialLocation: '/pricing',
    screen: Screen.desktop,
    test: ($, httpResponses) async {
      // The screen should initially show a validation error.
      final initialWidget = $('Select a buyer, and then extra filters');
      await initialWidget.waitUntilVisible();
      expect(initialWidget, findsOneWidget);

      // Navigate away from the screen once the side menu is visible.
      await $(Icons.home_outlined).waitUntilVisible();
      await $(Icons.home_outlined).tap(settlePolicy: SettlePolicy.noSettle);

      // The home screen should appear.
      final items = $('PRICE\nVISIBILITY');
      await items.waitUntilVisible();
      expect(items, findsNWidgets(2));
    },
  );
}

final kPublicationsResult = {
  'data': {
    'publications': {
      'nodes': [
        {
          'publicationId': 287,
          'publicationName': 'UK West (North West FER)',
          '__typename': 'T2Publication',
        },
        {
          'publicationId': 288,
          'publicationName': 'UK West (North West FER) - DOOR',
          '__typename': 'T2Publication',
        },
        {
          'publicationId': 289,
          'publicationName': 'UK West (North West FER) - A',
          '__typename': 'T2Publication',
        },
        {
          'publicationId': 290,
          'publicationName': 'UK West (North West FER) - B',
          '__typename': 'T2Publication',
        },
        {
          'publicationId': 291,
          'publicationName': 'UK West (North West FER) - C',
          '__typename': 'T2Publication',
        },
        {
          'publicationId': 292,
          'publicationName': 'UK West (North West FER) - D',
          '__typename': 'T2Publication',
        },
        {
          'publicationId': 293,
          'publicationName': 'UK West (North West NFE)',
          '__typename': 'T2Publication',
        },
      ],
      '__typename': 'PublicationsConnection',
    },
    '__typename': 'Query',
  },
};

final kManagedBuyers = {
  'data': {
    'managedBuyers': [
      {
        'username': 'RONNIE FAIRHURST',
        'azureId': 'f420f3d8-1da2-44d9-baac-c7935fe23807',
        '__typename': 'BuyerInfo',
      }
    ],
    '__typename': 'Query',
  },
};

final kGetGuidePriceLists = {
  'data': {
    'guidePrices': {
      'totalCount': 2,
      'pageInfo': {
        'hasPreviousPage': false,
        'hasNextPage': false,
        '__typename': 'PageInfo',
      },
      'nodes': [
        {
          'partyAccountNo': 'LITT006',
          'grade': {
            'gradeCode': 'A214',
            'comment': 'ROLLED ALI',
            '__typename': 'Grade',
          },
          'publication': {
            'id': 296,
            'name': 'UK West (North West NFE) - B',
            '__typename': 'Publication',
          },
          'yardCode': 'YBLK',
          'deliveryMethod': 'DELIVERED',
          'materialPrice': 900.0000000000000,
          'finalPriceUomValue': 900.0000000000000,
          'issueDate': '2023-02-13T00:00:00.000Z',
          'customerUom': 'TONNES',
          'contractLineId': 31781634,
          'priceProtection': [
            {
              'id': 1268,
              'description': 'Increase Protection',
              'tagTemplateId': 2,
              '__typename': 'Tag',
            }
          ],
          '__typename': 'GuidePriceListSearchResult',
        },
        {
          'partyAccountNo': 'LITT006',
          'grade': {
            'gradeCode': 'A215',
            'comment': 'MXD Ali ALLOY CT',
            '__typename': 'Grade',
          },
          'publication': {
            'id': 296,
            'name': 'UK West (North West NFE) - B',
            '__typename': 'Publication',
          },
          'yardCode': 'YBLK',
          'deliveryMethod': 'DELIVERED',
          'materialPrice': 1120.0000000000000,
          'finalPriceUomValue': 1120.0000000000000,
          'issueDate': '2023-02-13T00:00:00.000Z',
          'customerUom': 'TONNES',
          'contractLineId': 31781635,
          'priceProtection': [
            {
              'id': 1268,
              'description': 'Increase Protection',
              'tagTemplateId': 2,
              '__typename': 'Tag',
            }
          ],
          '__typename': 'GuidePriceListSearchResult',
        }
      ],
      '__typename': 'GuidePricesConnection',
    },
    '__typename': 'Query',
  },
};

final kPartySearch = {
  'data': {
    'myAccounts': {
      'nodes': [
        {
          'accountNumber': 'LRUN005',
          'name': 'Runcorn Recycling Scrap Metal Limited',
          '__typename': 'Account',
        }
      ],
      '__typename': 'AccountsConnection',
    },
    '__typename': 'Query',
  },
};
