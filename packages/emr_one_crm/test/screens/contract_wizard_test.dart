// ignore_for_file: avoid_dynamic_calls

import 'package:emr_one_crm/emr_one_crm.dart';
import 'package:emr_one_crm/keys.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';

import '../../../emr_one_core/test/eo_test_helper.dart';

void main() {
  eoPatrolTest(
    'contract wizard: start fresh',
    registerRoutes: CrmRouteRegistry.register,
    initialLocation: '/trader/party/LITT006/prices/new/spot',
    test: ($, httpResponses) async {
      // Set HTTP responses for the calls we're expecting.
      httpResponses['PartySearch'] = [kPartySearchOneResult];
      httpResponses['gplPublicationData'] = [kGplPublicationDataResult];
      httpResponses['getSpotWizardData'] = [
        kGetSpotWizardDataResult1,
        kGetSpotWizardDataResult2,
        kGetSpotWizardDataResult3,
      ];
      httpResponses['GetSpotWizardDataForOrderBook'] = [
        kGetSpotWizardDataForOrderBook,
      ];
      httpResponses['CreateSpotContract'] = [kCreateSpotContract];

      // Choose START FRESH once the screen has loaded.
      await $('START FRESH').waitUntilVisible();
      expect($('New Spot Contract'), findsOneWidget);
      expect($('LITT006'), findsOneWidget);
      expect($('STEP 1'), findsOneWidget);
      await $('START FRESH').tap(settlePolicy: SettlePolicy.noSettle);

      // Pausing while we fetch gplPublicationData.
      await $('SETTING UP').waitUntilVisible();
      expect($('SETTING UP'), findsOneWidget);

      // Choose an order book.
      await $('STEP 2').waitUntilVisible();
      await $(K.orderBook).tap();
      await $('Purchase - UK Price Matrix').waitUntilVisible();
      await $('Purchase - UK Price Matrix')
          .tap(settlePolicy: SettlePolicy.noSettle);

      // Scroll down to collected delivery method button and tap it.
      await $.tester.drag(find.text('ORDER BOOK:'), const Offset(0, -200));
      await $(OutlinedButton).$('COLLECTED').waitUntilVisible();
      await $(OutlinedButton).$('COLLECTED').tap();

      // Scroll back up to delivery methods and choose delivered.
      await $.tester.drag(find.text('ADD A NEW GRADE:'), const Offset(0, 400));
      await $.tester.pumpAndSettle();
      await $(OutlinedButton).$('DELIVERED').tap();

      // Choose a new grade.
      await $(K.grade).waitUntilVisible();
      await $(K.grade).tap();
      await $('A214').waitUntilVisible();
      await $('A214').tap(settlePolicy: SettlePolicy.noSettle);

      // Enter prices.
      await $(K.addGradeCollectedPrice).$(TextFormField).enterText('1');
      await $(K.addGradeDeliveredPrice).$(TextFormField).enterText('2');

      // Add the grade.
      await $('ADD NEW').tap();

      // Proceed to the summary
      await $('NEXT').tap();

      // Verify the summary
      expect($('STEP 3'), findsOneWidget);
      expect($('Please check the details you have entered'), findsOneWidget);
      expect($('collected, delivered'), findsOneWidget);
      expect($('A214'), findsOneWidget);
      expect($('2.0 / MT'), findsOneWidget);
      expect($('1.0 / MT'), findsOneWidget);

      // Create the contract.
      await $('NEXT').tap(settlePolicy: SettlePolicy.noSettle);

      // Confirmation screen.
      await $('Spot Contract Confirmed').waitUntilVisible();
      expect($('Spot Contract Confirmed'), findsOneWidget);
      expect($('Contract Ref: 388951'), findsOneWidget);

      // Wait for animations to complete before exiting the test.
      await $.tester.pumpAndSettle();
    },
  );
}

final kPartySearchOneResult = {
  'data': {
    'accounts': {
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

final kGplPublicationDataResult = {
  'data': {
    'gplPublicationData': [
      {
        'id': 290,
        'name': 'UK West (North West FER) - B',
        'issueDate': '2023-01-18',
        'grades': [
          {
            'gradeCode': '12C',
            'comment': '12C mixed source',
            'gradeGroup': 'FNP12',
            'gradeType': 'FERROUS',
            'basePrice': {
              'uom': 'TONNES',
              'value': 305.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 305.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 305.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 305.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 305.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 305.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 305.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 305.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 312.5000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 305.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': '8C',
            'comment': 'Clean low residual to shred',
            'gradeGroup': 'FNP48',
            'gradeType': 'FERROUS',
            'basePrice': {
              'uom': 'TONNES',
              'value': 245.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 245.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 245.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 245.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 245.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 245.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 245.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 245.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 252.5000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 245.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': '9A2',
            'comment': '2ft x 1ft cast iron',
            'gradeGroup': 'FCAST',
            'gradeType': 'FERROUS',
            'basePrice': {
              'uom': 'TONNES',
              'value': 165.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 165.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 165.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 165.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 165.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 165.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 165.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 165.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 172.5000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 165.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'FFBAL',
            'comment': 'Frag feed bales to shred',
            'gradeGroup': 'FFRAGLI',
            'gradeType': 'FERROUS',
            'basePrice': {
              'uom': 'TONNES',
              'value': 225.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 225.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 225.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 225.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 225.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 225.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 225.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 225.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 232.5000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 225.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          }
        ],
        '__typename': 'GplPublication',
      },
      {
        'id': 296,
        'name': 'UK West (North West NFE) - B',
        'issueDate': '2023-02-13',
        'grades': [
          {
            'gradeCode': 'A214',
            'comment': 'ROLLED ALI',
            'gradeGroup': 'ALOLRO',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 900.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 900.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 900.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 900.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 900.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 900.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 900.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 900.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 900.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 900.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'A215',
            'comment': 'MXD Ali ALLOY CT',
            'gradeGroup': 'NFALSEC',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 1120.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1120.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1120.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1120.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1120.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1120.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1120.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1120.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1120.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1120.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'A216',
            'comment': 'PAINTED H/9 EXTRUSION',
            'gradeGroup': 'NFALPRI',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 1345.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1345.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1345.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1345.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1345.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1345.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1345.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1345.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1345.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1345.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'A217',
            'comment': 'CLEAN H/9 EXTRUSION',
            'gradeGroup': 'NFALPRI',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 1385.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1385.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1385.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1385.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1385.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1385.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1385.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1385.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1385.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1385.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'A218',
            'comment': 'MXD H/9 EXTRUSION',
            'gradeGroup': 'NFALPRI',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 1345.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1345.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1345.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1345.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1345.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1345.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1345.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1345.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1345.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1345.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'A219',
            'comment': 'Ali Turnings',
            'gradeGroup': 'NFALSEC',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 530.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 530.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 530.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 530.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 530.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 530.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 530.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 530.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 530.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 530.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'A220',
            'comment': 'ALI COPPER RADS',
            'gradeGroup': 'NFALCUR',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 2750.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 2750.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 2750.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 2750.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 2750.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 2750.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 2750.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 2750.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 2750.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 2750.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'A221',
            'comment': 'Ali LITHO PLATES',
            'gradeGroup': 'NFALPRI',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 1560.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1560.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1560.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1560.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1560.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1560.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1560.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1560.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1560.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1560.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'A222',
            'comment': 'IRONY/REFINING Ali',
            'gradeGroup': 'ALZORB',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 400.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 400.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 400.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 400.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 400.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 400.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 400.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 400.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 400.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 400.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'A224',
            'comment': 'THERMAL BREAK',
            'gradeGroup': 'NFALSEC',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 880.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 880.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 880.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 880.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 880.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 880.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 880.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 880.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 880.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 880.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'A225',
            'comment': 'Ali RADIATORS',
            'gradeGroup': 'NFALSEC',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 550.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 550.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 550.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 550.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 550.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 550.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 550.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 550.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 550.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 550.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'A228',
            'comment': 'SHREDDED ZORBA',
            'gradeGroup': 'ALZORB',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 400.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 400.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 400.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 400.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 400.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 400.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 400.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 400.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 400.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 400.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'A229',
            'comment': 'Ali QUADRANT',
            'gradeGroup': 'NSALPRI',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 1620.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1620.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1620.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1620.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1620.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1620.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1620.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1620.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1620.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1620.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'A231',
            'comment': 'H/E/30 Ali',
            'gradeGroup': 'NFALPRI',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 980.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 980.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 980.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 980.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 980.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 980.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 980.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 980.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 980.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 980.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'A234',
            'comment': 'Ali WHEELS',
            'gradeGroup': 'NFALPRI',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 1700.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1700.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1700.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1700.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1700.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1700.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1700.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1700.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1700.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1700.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'A235',
            'comment': 'CAST Ali',
            'gradeGroup': 'NFALSEC',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 970.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 970.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 970.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 970.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 970.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 970.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 970.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 970.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 970.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 970.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'A243',
            'comment': 'MIXED Ali POLYBACK CUTS',
            'gradeGroup': 'NFALSEC',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 1120.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1120.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1120.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1120.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1120.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1120.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1120.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1120.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1120.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1120.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'ACB',
            'comment': 'Ali CUTS BALER',
            'gradeGroup': 'NFALSEC',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 1120.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1120.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1120.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1120.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1120.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1120.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1120.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1120.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1120.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1120.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'ACRB',
            'comment': 'ALI COPPER RADS BALER',
            'gradeGroup': 'NFALCUR',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 2750.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 2750.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 2750.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 2750.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 2750.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 2750.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 2750.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 2750.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 2750.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 2750.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'ARB',
            'comment': 'ROLLED Ali BALER',
            'gradeGroup': 'ALOLRO',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 900.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 900.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 900.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 900.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 900.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 900.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 900.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 900.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 900.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 900.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'B241',
            'comment': 'MIXED BRASS SOLID',
            'gradeGroup': 'NFBRASS',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 4100.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 4100.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 4100.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 4100.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 4100.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 4100.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 4100.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 4100.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 4100.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 4100.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'B243',
            'comment': 'COMPOSITE RADS',
            'gradeGroup': 'NFBRASS',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 2950.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 2950.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 2950.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 2950.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 2950.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 2950.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 2950.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 2950.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 2950.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 2950.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'B245',
            'comment': 'ROD BRASS BORINGS',
            'gradeGroup': 'NFBRASS',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 3000.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 3000.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 3000.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 3000.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 3000.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 3000.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 3000.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 3000.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 3000.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 3000.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'B246',
            'comment': 'BRASS No2 SWARF',
            'gradeGroup': 'NFBRASS',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 2950.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 2950.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 2950.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 2950.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 2950.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 2950.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 2950.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 2950.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 2950.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 2950.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'B248',
            'comment': 'GUN METAL SOLIDS',
            'gradeGroup': 'NFBRONZ',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 4900.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 4900.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 4900.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 4900.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 4900.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 4900.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 4900.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 4900.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 4900.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 4900.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'B249',
            'comment': 'GUN METAL SWARF',
            'gradeGroup': 'NFBRONZ',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 4500.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 4500.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 4500.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 4500.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 4500.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 4500.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 4500.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 4500.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 4500.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 4500.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'B250',
            'comment': 'P B SOLIDS',
            'gradeGroup': 'NFBRONZ',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 5000.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 5000.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 5000.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 5000.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 5000.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 5000.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 5000.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 5000.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 5000.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 5000.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'B251',
            'comment': 'P B BORINGS',
            'gradeGroup': 'NFBRONZ',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 4500.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 4500.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 4500.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 4500.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 4500.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 4500.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 4500.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 4500.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 4500.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 4500.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'B258',
            'comment': 'BRASS SHELL CASES',
            'gradeGroup': 'NFBRASS',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 4200.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 4200.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 4200.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 4200.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 4200.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 4200.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 4200.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 4200.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 4200.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 4200.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'BACB',
            'comment': 'BALED Ali CUTS',
            'gradeGroup': 'NFALSEC',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 1120.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1120.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1120.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1120.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1120.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1120.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1120.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1120.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1120.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1120.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'BACRB',
            'comment': 'BALED ALI COPPER RADS',
            'gradeGroup': 'NFALCUR',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 2750.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 2750.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 2750.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 2750.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 2750.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 2750.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 2750.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 2750.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 2750.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 2750.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'BARB',
            'comment': 'BALED ROLLED Ali',
            'gradeGroup': 'ALOLRO',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 900.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 900.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 900.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 900.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 900.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 900.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 900.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 900.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 900.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 900.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'C271',
            'comment': 'DRY BRIGHT WIRE',
            'gradeGroup': 'NFCUHI',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 6490.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 6490.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 6490.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 6490.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 6490.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 6490.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 6490.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 6490.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 6490.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 6490.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'C272',
            'comment': 'GREASY BRIGHT WIRE',
            'gradeGroup': 'NFCUHI',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 6060.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 6060.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 6060.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 6060.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 6060.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 6060.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 6060.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 6060.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 6060.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 6060.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'C273',
            'comment': 'NO1 COPPER WIRE',
            'gradeGroup': 'NFCUHI',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 6130.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 6130.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 6130.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 6130.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 6130.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 6130.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 6130.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 6130.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 6130.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 6130.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'C274',
            'comment': '94% Mixed Copper',
            'gradeGroup': 'NFCUHV',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 5800.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 5800.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 5800.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 5800.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 5800.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 5800.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 5800.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 5800.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 5800.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 5800.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'C275',
            'comment': '96% Mixed Copper',
            'gradeGroup': 'NFCUHV',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 5970.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 5970.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 5970.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 5970.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 5970.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 5970.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 5970.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 5970.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 5970.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 5970.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'C277',
            'comment': 'BRAZIERY COPPER',
            'gradeGroup': 'NFCUHV',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 5230.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 5230.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 5230.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 5230.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 5230.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 5230.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 5230.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 5230.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 5230.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 5230.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'C280',
            'comment': 'ELEMENTS',
            'gradeGroup': 'NFCUHVP',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 1580.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1580.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1580.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1580.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1580.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1580.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1580.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1580.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1580.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1580.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'C281',
            'comment': 'CLEAN PYRO',
            'gradeGroup': 'NFCUHVP',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 2400.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 2400.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 2400.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 2400.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 2400.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 2400.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 2400.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 2400.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 2400.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 2400.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'C282',
            'comment': 'PVC PYRO',
            'gradeGroup': 'NFCUHVP',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 1850.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1850.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1850.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1850.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1850.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1850.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1850.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1850.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1850.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1850.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'C283',
            'comment': 'HARD DRAWN COPPER',
            'gradeGroup': 'NFCUHI',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 6150.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 6150.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 6150.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 6150.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 6150.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 6150.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 6150.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 6150.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 6150.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 6150.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'C284',
            'comment': 'ELECTRO COPPER',
            'gradeGroup': 'NFCUHI',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 6390.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 6390.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 6390.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 6390.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 6390.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 6390.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 6390.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 6390.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 6390.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 6390.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'C287',
            'comment': 'COPPER CYLINDERS',
            'gradeGroup': 'NFCUHV',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 5630.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 5630.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 5630.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 5630.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 5630.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 5630.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 5630.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 5630.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 5630.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 5630.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'C288',
            'comment': 'CLEAN COPPER TUBE',
            'gradeGroup': 'NFCUHI',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 6250.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 6250.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 6250.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 6250.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 6250.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 6250.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 6250.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 6250.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 6250.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 6250.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'C293',
            'comment': 'ELECTRIC MOTORS',
            'gradeGroup': 'NFCUOTH',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 640.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 640.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 640.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 640.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 640.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 640.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 640.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 640.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 640.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 640.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'C293R',
            'comment': 'Electric Motors - Rejects',
            'gradeGroup': 'NFCUOTH',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 200.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 200.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 200.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 200.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 200.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 200.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 200.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 200.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 200.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 200.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'C298',
            'comment': '98% HEAVY COPPER TUBE',
            'gradeGroup': 'NFCUHV',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 5970.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 5970.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 5970.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 5970.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 5970.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 5970.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 5970.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 5970.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 5970.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 5970.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'C306',
            'comment': 'Starters and Alternators',
            'gradeGroup': 'NFCUOTH',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 750.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 750.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 750.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 750.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 750.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 750.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 750.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 750.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 750.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 750.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'C325',
            'comment': 'Oversize Motors',
            'gradeGroup': 'NFCUOTH',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 400.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 400.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 400.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 400.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 400.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 400.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 400.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 400.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 400.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 400.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'C340',
            'comment': 'Lead Washed Rads',
            'gradeGroup': 'NFCUHV',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 4950.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 4950.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 4950.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 4950.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 4950.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 4950.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 4950.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 4950.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 4950.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 4950.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'CABL0',
            'comment': 'Sorted NO2 Cable',
            'gradeGroup': 'NFCABH',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 3292.500000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 3292.5000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 3292.5000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 3292.5000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 3292.5000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 3292.5000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 3292.5000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 3292.5000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 3292.5000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 3292.5000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'CABL1',
            'comment': 'Household Cable',
            'gradeGroup': 'NFCABH',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 2195.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 2195.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 2195.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 2195.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 2195.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 2195.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 2195.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 2195.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 2195.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 2195.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'CABL2',
            'comment': 'LOW GRADE CABLE',
            'gradeGroup': 'NFCABH',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 1440.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1440.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1440.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1440.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1440.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1440.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1440.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1440.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1440.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1440.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'CABL5',
            'comment': 'ALUMINIUM CABLE',
            'gradeGroup': 'NFALCAB',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 470.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 470.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 470.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 470.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 470.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 470.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 470.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 470.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 470.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 470.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'CABLP',
            'comment': '3 pin Cable',
            'gradeGroup': 'NFCABOT',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 250.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 250.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 250.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 250.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 250.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 250.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 250.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 250.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 250.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 250.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'CABLR',
            'comment': 'Cable with attachments',
            'gradeGroup': 'NFCABH',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 600.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 600.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 600.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 600.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 600.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 600.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 600.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 600.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 600.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 600.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'IASR',
            'comment': 'Irony Ali Shredder',
            'gradeGroup': 'ALZORB',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 400.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 400.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 400.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 400.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 400.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 400.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 400.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 400.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 400.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 400.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'L101',
            'comment': 'LEAD',
            'gradeGroup': 'NFLEAD',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 1560.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1560.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1560.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1560.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1560.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1560.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1560.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1560.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1560.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1560.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'L102',
            'comment': 'Lead acid batteries',
            'gradeGroup': 'NFLEAD',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 540.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 540.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 540.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 540.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 540.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 540.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 540.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 540.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 540.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 540.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'L112',
            'comment': 'LEAD STEEL G/BARS',
            'gradeGroup': 'NSLEAD',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 540.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 540.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 540.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 540.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 540.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 540.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 540.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 540.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 540.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 540.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'N121',
            'comment': '18/8 STAINLESS SOLIDS',
            'gradeGroup': 'NFNISTD',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 1050.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1050.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1050.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1050.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1050.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1050.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1050.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1050.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1050.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1050.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'N121OS',
            'comment': 'OVER SIZE 18/8 SOLIDS',
            'gradeGroup': 'NFNISTD',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 950.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 950.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 950.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 950.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 950.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 950.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 950.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 950.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 950.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 950.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'N122',
            'comment': '18/8 STAINLESS Turnings',
            'gradeGroup': 'NFNISTD',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 950.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 950.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 950.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 950.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 950.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 950.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 950.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 950.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 950.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 950.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'N123',
            'comment': '316 STAINLESS SOLID',
            'gradeGroup': 'NFNISTD',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 1700.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1700.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1700.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1700.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1700.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1700.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1700.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1700.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1700.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1700.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'N123OS',
            'comment': 'OVER SIZE 316 STAINLESS SOLID',
            'gradeGroup': 'NFNISTD',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 1600.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1600.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1600.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1600.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1600.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1600.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1600.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1600.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1600.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1600.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'N124',
            'comment': '316 STAINLESS Turnings',
            'gradeGroup': 'NFNISTD',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 1350.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1350.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1350.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1350.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1350.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1350.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1350.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1350.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1350.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1350.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'N125',
            'comment': 'CHROME IRON SOLID',
            'gradeGroup': 'NFNISTD',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 300.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 300.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 300.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 300.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 300.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 300.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 300.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 300.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 300.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 300.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'N141',
            'comment': 'IRONY STAINLESS',
            'gradeGroup': 'NSNISTD',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 390.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 390.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 390.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 390.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 390.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 390.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 390.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 390.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 390.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 390.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'PSHA',
            'comment': 'PRESSED \u0026 SHEARED ALI 20 01 40',
            'gradeGroup': 'ALOLRO',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 900.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 900.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 900.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 900.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 900.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 900.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 900.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 900.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 900.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 900.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'SHA',
            'comment': 'Rolled Ali Feedstock 20 01 40',
            'gradeGroup': 'ALOLRO',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 900.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 900.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 900.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 900.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 900.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 900.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 900.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 900.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 900.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 900.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'SIASR',
            'comment': 'Shredded Irony Ali',
            'gradeGroup': 'ALZORB',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 400.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 400.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 400.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 400.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 400.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 400.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 400.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 400.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 400.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 400.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'Z161',
            'comment': 'ZINC DIECAST',
            'gradeGroup': 'NFZINC',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 1000.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1000.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1000.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1000.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1000.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1000.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1000.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1000.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1000.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1000.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          },
          {
            'gradeCode': 'Z162',
            'comment': 'ZINC ROOFING SHEET',
            'gradeGroup': 'NFZINC',
            'gradeType': 'NONFER',
            'basePrice': {
              'uom': 'TONNES',
              'value': 1000.000000,
              'id': 1,
              '__typename': 'UomValue',
            },
            'yardPrices': [
              {
                'yard': {
                  'yardCode': 'YBLK',
                  'yardName': 'Blackburn',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1000.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YECC',
                  'yardName': 'Eccles',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1000.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YHYD',
                  'yardName': 'Hyde',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1000.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLIV',
                  'yardName': 'Liverpool',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1000.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YLPL',
                  'yardName': 'Liverpool Bankhall Lane',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1000.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YMOR',
                  'yardName': 'Manchester',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1000.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YRDL',
                  'yardName': 'Rochdale',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1000.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL',
                  'yardName': 'Salford',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1000.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              },
              {
                'yard': {
                  'yardCode': 'YSAL2',
                  'yardName': 'SALFORD CASH NF 2',
                  '__typename': 'Yard',
                },
                'finalPrice': {
                  'value': 1000.0000000000000,
                  'id': 1,
                  '__typename': 'UomValue',
                },
                '__typename': 'YardPrice',
              }
            ],
            '__typename': 'GplGrade',
          }
        ],
        '__typename': 'GplPublication',
      }
    ],
    '__typename': 'Query',
  },
};

final kGetSpotWizardDataResult1 = {
  'data': {
    'userOrderBooks': {
      'nodes': [
        {
          'orderBookTypeId': 1,
          'orderBookName': 'Sales NFE - UK Yard',
          'gradeType': 'NONFER',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 2,
          'orderBookName': 'Sales NFE - UK SEP',
          'gradeType': 'NONFER',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 3,
          'orderBookName': 'Sales NFE - GER Yard',
          'gradeType': 'NONFER',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 4,
          'orderBookName': 'B2B NFE - Hong Kong',
          'gradeType': 'NONFER',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 5,
          'orderBookName': 'Sales FER - Intl Container',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 6,
          'orderBookName': 'B2B FER - Container',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 7,
          'orderBookName': 'Sales FER - UK Domestic',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 8,
          'orderBookName': 'Sales FER - UK Deep Sea',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 9,
          'orderBookName': 'Sales FER - UK Short Sea',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 10,
          'orderBookName': 'Purchase - UK Fixed Non Ferrous',
          'gradeType': 'NONFER',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 11,
          'orderBookName': 'Purchase - UK Price Matrix',
          'gradeType': 'NONFER',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 12,
          'orderBookName': 'Purchase - UK Interdepot',
          'gradeType': 'NONFER',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 13,
          'orderBookName': 'Purchase - UK Interdepot Short Sea',
          'gradeType': 'NONFER',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 18,
          'orderBookName': 'Purchase - Netherlands Fixed',
          'gradeType': 'NONFER',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 19,
          'orderBookName': 'Purchase - Netherlands Price Matrix',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 20,
          'orderBookName': 'B2B - Netherlands Domestic',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 22,
          'orderBookName': 'Sales FER - Netherlands Domestic',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 30,
          'orderBookName': 'WWT - EMR',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 31,
          'orderBookName': 'WWT - IMR',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 32,
          'orderBookName': 'Sales - IMR',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 33,
          'orderBookName': 'Sales - UK Price Matrix',
          'gradeType': 'NONFER',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 34,
          'orderBookName': 'B2B - Germany',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 35,
          'orderBookName': 'B2B NFE - USA',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 36,
          'orderBookName': 'Purchase - IMR',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 37,
          'orderBookName': 'B2B - Intercompany',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 38,
          'orderBookName': 'Hedging Control',
          'gradeType': 'NONFER',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 39,
          'orderBookName': 'B2B - RGL',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 40,
          'orderBookName': 'Sales FER - Netherlands Deep Sea',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 41,
          'orderBookName': 'Sales NFE - Specialist',
          'gradeType': 'NONFER',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 42,
          'orderBookName': 'Sales FER - Netherlands Short Sea',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 43,
          'orderBookName': 'Sales FER - UK Unalloc Deep Sea',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 44,
          'orderBookName': 'Sales FER - UK Unalloc Short Sea',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 45,
          'orderBookName': 'B2B - USA Deep Sea',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 46,
          'orderBookName': 'Sales FER - GER Deep Sea',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 47,
          'orderBookName': 'Sales FER - TMA Depots',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 48,
          'orderBookName': 'B2B - UK Domestic',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 50,
          'orderBookName': 'Purchase - GER Fixed',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 51,
          'orderBookName': 'Sales FER - GER Domestic',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 52,
          'orderBookName': 'Purchase - GER Price Matrix',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 54,
          'orderBookName': 'Sales NFE - USA Yard',
          'gradeType': 'NONFER',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 55,
          'orderBookName': 'Sales FER - USA Domestic',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 56,
          'orderBookName': 'Purchase - USA Fixed',
          'gradeType': 'NONFER',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 57,
          'orderBookName': 'Purchase - USA Interdepot',
          'gradeType': 'NONFER',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 58,
          'orderBookName': 'Purchase - USA Price Matrix',
          'gradeType': 'NONFER',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 59,
          'orderBookName': 'B2B - EMR Trading',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 60,
          'orderBookName': 'Sales FER - UK Steelworks',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 61,
          'orderBookName': 'Sales NFE - Netherlands Yard',
          'gradeType': 'NONFER',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 62,
          'orderBookName': 'Sales NFE - USA Northern',
          'gradeType': 'NONFER',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 63,
          'orderBookName': 'Sales NFE - USA Southern',
          'gradeType': 'NONFER',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 64,
          'orderBookName': 'Sales NFE - USA Eastern',
          'gradeType': 'NONFER',
          '__typename': 'UserOrderBook',
        }
      ],
      'pageInfo': {
        'hasNextPage': true,
        'endCursor': 'NDk=',
        '__typename': 'PageInfo',
      },
      '__typename': 'UserOrderBooksConnection',
    },
    '__typename': 'Query',
  },
};

final kGetSpotWizardDataResult2 = {
  'data': {
    'userOrderBooks': {
      'nodes': [
        {
          'orderBookTypeId': 65,
          'orderBookName': 'Purchase NFE - USA Northern',
          'gradeType': 'NONFER',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 66,
          'orderBookName': 'Purchase NFE - USA Southern',
          'gradeType': 'NONFER',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 67,
          'orderBookName': 'Purchase NFE - USA Eastern',
          'gradeType': 'NONFER',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 68,
          'orderBookName': 'Sales FER - USA Domestic - Northern',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 69,
          'orderBookName': 'Sales FER - USA Domestic - Southern',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 70,
          'orderBookName': 'Sales FER - USA Domestic - Eastern',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 71,
          'orderBookName': 'B2B - USA Domestic - Northern',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 72,
          'orderBookName': 'B2B - USA Domestic - Southern',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 73,
          'orderBookName': 'B2B - USA Domestic - Eastern',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 74,
          'orderBookName': 'Sales FER - GER Short Sea',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 75,
          'orderBookName': 'Purchase FER - UK EMR Steels',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 76,
          'orderBookName': 'Sales FER - UK EMR Steels',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 79,
          'orderBookName': 'Sales FER - USA Export',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 80,
          'orderBookName': 'Sales SOLDER - UK Domestic',
          'gradeType': 'NONFER',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 81,
          'orderBookName': 'Purchase SOLDER - UK Fixed',
          'gradeType': 'NONFER',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 85,
          'orderBookName': 'Purchase NFE - USA Southern West',
          'gradeType': 'NONFER',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 87,
          'orderBookName': 'Sales FER - USA Gold',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 88,
          'orderBookName': 'Sales NFE - USA Gold',
          'gradeType': 'NONFER',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 90,
          'orderBookName': 'B2B - USA Gold',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 115,
          'orderBookName': 'Purchase - SPAIN Fixed',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 117,
          'orderBookName': 'Sales FER - SPAIN Short sea',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 118,
          'orderBookName': 'Sales FER - SPAIN Deep sea',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 125,
          'orderBookName': 'Purchase SWE - GER Yard',
          'gradeType': 'NONFER',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 126,
          'orderBookName': 'Purchase SWE - NED Yard',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 127,
          'orderBookName': 'B2B SWE - GER',
          'gradeType': 'NONFER',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 128,
          'orderBookName': 'Purchase ITA - GER Yard',
          'gradeType': 'NONFER',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 129,
          'orderBookName': 'Purchase ITA - NED Yard',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 130,
          'orderBookName': 'B2B - Italy Domestic',
          'gradeType': 'NONFER',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 131,
          'orderBookName': 'Purchase DNG - GER Yard',
          'gradeType': 'NONFER',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 132,
          'orderBookName': 'Purchase DNG - NED Yard',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 133,
          'orderBookName': 'B2B DNG - GER',
          'gradeType': 'NONFER',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 134,
          'orderBookName': 'B2B DNG - NED',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 135,
          'orderBookName': 'Purchase - UK Price Matrix Period Negotiated',
          'gradeType': 'NONFER',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 136,
          'orderBookName': 'B2B - Spain Domestic',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 137,
          'orderBookName': 'B2B - Netherlands Triangulation',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 138,
          'orderBookName': 'Sales NFE - USA Gold (EMR Managed)',
          'gradeType': 'NONFER',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 139,
          'orderBookName': 'B2B NFE - USA Gold (EMR Managed)',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 140,
          'orderBookName': 'B2B - Netherlands Intra EU',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 141,
          'orderBookName': 'B2B - Germany Triangulation',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 142,
          'orderBookName': 'B2B - Germany Intra EU',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 143,
          'orderBookName': 'B2B - Spain Intra EU',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 144,
          'orderBookName': 'B2B - Italy Intra EU',
          'gradeType': 'NONFER',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 145,
          'orderBookName': 'Purchase FER - USA Northern',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 146,
          'orderBookName': 'Purchase FER - USA Southern',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 147,
          'orderBookName': 'Purchase FER - USA Eastern',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 148,
          'orderBookName': 'Sales FER - Spain Yard',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 149,
          'orderBookName': 'Sales NFE - Spain Yard',
          'gradeType': 'NONFER',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 156,
          'orderBookName': 'Sales FER - UK ELV',
          'gradeType': 'NONFER',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 157,
          'orderBookName': 'Sales NFE - EMR USA Specialist Yard',
          'gradeType': 'NONFER',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 158,
          'orderBookName': 'Sales NFE - USA Spectrum (Gold Managed)',
          'gradeType': 'NONFER',
          '__typename': 'UserOrderBook',
        }
      ],
      'pageInfo': {
        'hasNextPage': true,
        'endCursor': 'OTk=',
        '__typename': 'PageInfo',
      },
      '__typename': 'UserOrderBooksConnection',
    },
    '__typename': 'Query',
  },
};

final kGetSpotWizardDataResult3 = {
  'data': {
    'userOrderBooks': {
      'nodes': [
        {
          'orderBookTypeId': 159,
          'orderBookName': 'Sales FER - USA Southern',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 160,
          'orderBookName': 'Purchase ITA - Spain Yard',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 161,
          'orderBookName': 'Purchase - UK Fixed Ferrous North',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 162,
          'orderBookName': 'Purchase - UK Fixed Ferrous South',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 165,
          'orderBookName': 'Sales FER - UK Foundry',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 166,
          'orderBookName': 'Purchase - FRANCE Fixed',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 167,
          'orderBookName': 'Sales FER - FRANCE Short Sea',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 168,
          'orderBookName': 'Sales FER - FRANCE Deep sea',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 169,
          'orderBookName': 'B2B - France Domestic',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 170,
          'orderBookName': 'B2B - France Intra EU',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 171,
          'orderBookName': 'Sales FER - France Yard',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 172,
          'orderBookName': 'Sales NFE - France Yard',
          'gradeType': 'NONFER',
          '__typename': 'UserOrderBook',
        },
        {
          'orderBookTypeId': 173,
          'orderBookName': 'Purchase ITA - France Yard',
          'gradeType': 'FERROUS',
          '__typename': 'UserOrderBook',
        }
      ],
      'pageInfo': {
        'hasNextPage': false,
        'endCursor': 'MTEy',
        '__typename': 'PageInfo',
      },
      '__typename': 'UserOrderBooksConnection',
    },
    '__typename': 'Query',
  },
};

final kGetSpotWizardDataForOrderBook = {
  'data': {
    'contractOrderBookDefaults': {
      'contract': {
        'contractTypeID': 1,
        'currencyCode': 'GBP',
        'priceTypeID': 1,
        'targetTonnageUomID': null,
        '__typename': 'ContractOrderBookHeaderDefaults',
      },
      '__typename': 'ContractOrderBookDefaults',
    },
    'gradesForUserByGradeType': [
      {
        'gradeGroup': 'COPPERS',
        'gradeType': 'NONFER',
        'gradeCode': '1818',
        'comment': 'BRIGHT GRANULES FINISHED',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRI',
        'gradeType': 'NONFER',
        'gradeCode': '5/6000',
        'comment': '5/6000 Series',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A000',
        'comment': 'Ali MIGRATION',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A212',
        'comment': 'Ali CANS',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A213',
        'comment': '4000/5000 Ali CUTS',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'ALOLRO',
        'gradeType': 'NONFER',
        'gradeCode': 'A214',
        'comment': 'ROLLED ALI',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'ALOLRO',
        'gradeType': 'NONFER',
        'gradeCode': 'A214BP',
        'comment': 'Ali Body Panel slight Fe %',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A215',
        'comment': 'MXD Ali ALLOY CT',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRI',
        'gradeType': 'NONFER',
        'gradeCode': 'A216',
        'comment': 'PAINTED H/9 EXTRUSION',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRI',
        'gradeType': 'NONFER',
        'gradeCode': 'A217',
        'comment': 'CLEAN H/9 EXTRUSION',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRI',
        'gradeType': 'NONFER',
        'gradeCode': 'A218',
        'comment': 'MXD H/9 EXTRUSION',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A219',
        'comment': 'Ali Turnings',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A219B',
        'comment': 'ALI SWARF',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALCUR',
        'gradeType': 'NONFER',
        'gradeCode': 'A220',
        'comment': 'ALI COPPER RADS',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFPOWER',
        'gradeType': 'NONFER',
        'gradeCode': 'A220LG',
        'comment': 'LG ALI COPPER RADS',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRI',
        'gradeType': 'NONFER',
        'gradeCode': 'A221',
        'comment': 'Ali LITHO PLATES',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRI',
        'gradeType': 'NONFER',
        'gradeCode': 'A221B',
        'comment': 'ALI LITHO BALER',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'ALZORB',
        'gradeType': 'NONFER',
        'gradeCode': 'A222',
        'comment': 'IRONY/REFINING Ali',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'ALZORB',
        'gradeType': 'NONFER',
        'gradeCode': 'A222B',
        'comment': 'ALI REFINES',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'ALZORB',
        'gradeType': 'NONFER',
        'gradeCode': 'A222BS',
        'comment': 'Ali Body Shells',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFPOWER',
        'gradeType': 'NONFER',
        'gradeCode': 'A222LG',
        'comment': 'LG IRONY/REFINING Ali',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A223',
        'comment': 'Ali INGOTS',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A224',
        'comment': 'THERMAL BREAK',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A225',
        'comment': 'Ali RADIATORS',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A226',
        'comment': 'NS4 Ali CUTS',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A227',
        'comment': 'AIRCRAFT Ali',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'ALZORB',
        'gradeType': 'NONFER',
        'gradeCode': 'A228',
        'comment': 'SHREDDED ZORBA',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NSALPRI',
        'gradeType': 'NONFER',
        'gradeCode': 'A229',
        'comment': 'Ali QUADRANT',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRI',
        'gradeType': 'NONFER',
        'gradeCode': 'A231',
        'comment': 'H/E/30 Ali',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A232',
        'comment': 'GROUP 2/7 PUCKS EWC19 12 03',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A233',
        'comment': 'GROUP 2/7 Ali TURNINGS',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRI',
        'gradeType': 'NONFER',
        'gradeCode': 'A234',
        'comment': 'Ali WHEELS',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A235',
        'comment': 'CAST Ali',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A236',
        'comment': 'Shredded Fridge Ali',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A238',
        'comment': 'BMW IRONY Ali TURNS',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A239',
        'comment': 'DRIED Ali TURNS',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A240',
        'comment': 'Ali TURNS 10%M',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A242',
        'comment': 'MIXED Ali PURE CUTS',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A243',
        'comment': 'MIXED Ali POLYBACK CUTS',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A244',
        'comment': 'MIXED Ali PAINTED CUTS',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A245',
        'comment': 'Ali ROAD SIGNS',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A246',
        'comment': 'Ali LM5',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRI',
        'gradeType': 'NONFER',
        'gradeCode': 'A251',
        'comment': '5000 Series Ali Cuttings',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A253',
        'comment': 'BMW CLEAN ALI TURNINGS',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A256',
        'comment': 'PAINTED ALUMINUM SIDING',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALCAB',
        'gradeType': 'NONFER',
        'gradeCode': 'A257',
        'comment': 'ACSR WIRE',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRI',
        'gradeType': 'NONFER',
        'gradeCode': 'A258',
        'comment': 'EC WIRE',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRI',
        'gradeType': 'NONFER',
        'gradeCode': 'A259',
        'comment': 'Chopped Aluminum Wire',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A260',
        'comment': 'ALUMINUM RADIATORS - IRONY',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALCUR',
        'gradeType': 'NONFER',
        'gradeCode': 'A261',
        'comment': 'A/C RADIATORS - IRONY',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALCAB',
        'gradeType': 'NONFER',
        'gradeCode': 'A262',
        'comment': 'CATV WIRE',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRI',
        'gradeType': 'NONFER',
        'gradeCode': 'A263',
        'comment': 'Aluminum MLC Clips (Mill)',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRI',
        'gradeType': 'NONFER',
        'gradeCode': 'A264',
        'comment': '10/10 Aluminum Extrusions',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A266',
        'comment': 'Mixed Aluminum Pucks',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRI',
        'gradeType': 'NONFER',
        'gradeCode': 'A267',
        'comment': 'MUNICIPAL ALUMINUM',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A268',
        'comment': 'MIXED ALUMINUM UNPREPARED',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRI',
        'gradeType': 'NONFER',
        'gradeCode': 'A269',
        'comment': '5052 ALUMINUM',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALCAB',
        'gradeType': 'NONFER',
        'gradeCode': 'A270',
        'comment': 'INSULATED ALUMINUM WIRE',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALCAB',
        'gradeType': 'NONFER',
        'gradeCode': 'A271',
        'comment': 'ALUMINUM URD WIRE',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRI',
        'gradeType': 'NONFER',
        'gradeCode': 'A272',
        'comment': '6063 ALUMINUM Painted',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRI',
        'gradeType': 'NONFER',
        'gradeCode': 'A273',
        'comment': '6063 Aluminum Bare',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRI',
        'gradeType': 'NONFER',
        'gradeCode': 'A274',
        'comment': 'Mixed 6063 Aluminum',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRI',
        'gradeType': 'NONFER',
        'gradeCode': 'A275',
        'comment': 'Municipal Mixed Nonferrous ',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRI',
        'gradeType': 'NONFER',
        'gradeCode': 'A276',
        'comment': 'Yard Metal',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A277',
        'comment': 'ALI 7000 SOLIDS',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRI',
        'gradeType': 'NONFER',
        'gradeCode': 'A278',
        'comment': '3003 ALI SOLIDS',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A279',
        'comment': 'Paperback Aluminum',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALCUR',
        'gradeType': 'NONFER',
        'gradeCode': 'A280',
        'comment': 'Ali Copper Rads - Fe Ends',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'ALZORB',
        'gradeType': 'NONFER',
        'gradeCode': 'A281',
        'comment': '10% IRONY ALUMINUM',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'ALZORB',
        'gradeType': 'NONFER',
        'gradeCode': 'A282',
        'comment': 'IRONY ALUMINUM',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRI',
        'gradeType': 'NONFER',
        'gradeCode': 'A283',
        'comment': 'No 3 Aluminium Extrusion',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRI',
        'gradeType': 'NONFER',
        'gradeCode': 'A284',
        'comment': 'Aluminum Anodes',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRI',
        'gradeType': 'NONFER',
        'gradeCode': 'A285',
        'comment': '6061 Aluminum',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRI',
        'gradeType': 'NONFER',
        'gradeCode': 'A286',
        'comment': '2000 Aluminum',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRI',
        'gradeType': 'NONFER',
        'gradeCode': 'A287',
        'comment': 'Aluminum Chrome Wheels',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRI',
        'gradeType': 'NONFER',
        'gradeCode': 'A288',
        'comment': 'Aluminum Mixed Wheels',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRI',
        'gradeType': 'NONFER',
        'gradeCode': 'A289',
        'comment': '6061 Aluminium Truck Wheels',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'ALZORB',
        'gradeType': 'NONFER',
        'gradeCode': 'A290',
        'comment': 'Gas Meters/Al Case',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A291',
        'comment': 'Processing Aluminum Cans (UBC)',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRI',
        'gradeType': 'NONFER',
        'gradeCode': 'A292',
        'comment': 'Secondary MLC Clips (Mill)',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A293',
        'comment': '6061 Aluminum Pucks',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRI',
        'gradeType': 'NONFER',
        'gradeCode': 'A294',
        'comment': 'MLCC Aluminum Pucks',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRI',
        'gradeType': 'NONFER',
        'gradeCode': 'A295',
        'comment': '1100 Fin Stock',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A298',
        'comment': '2024 Aluminum',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALCAB',
        'gradeType': 'NONFER',
        'gradeCode': 'A299',
        'comment': 'ACSR/Neoprene',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRI',
        'gradeType': 'NONFER',
        'gradeCode': 'A300',
        'comment': '5086 Aluminum',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A301',
        'comment': '6061 Aluminum Secondary',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRI',
        'gradeType': 'NONFER',
        'gradeCode': 'A302',
        'comment': '6061 Aluminum Bare',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRI',
        'gradeType': 'NONFER',
        'gradeCode': 'A303',
        'comment': '6061 Aluminum Extrusion',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRI',
        'gradeType': 'NONFER',
        'gradeCode': 'A304',
        'comment': '6061 Aluminum Painted',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRI',
        'gradeType': 'NONFER',
        'gradeCode': 'A305',
        'comment': '6061 Aluminum New',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A306',
        'comment': '6061 Al Turnings',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A307',
        'comment': '6063 Extrusion Secondary',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A308',
        'comment': 'Aluminum Compressors',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A309',
        'comment': 'Transmissions',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A310',
        'comment': '7050 Aluminum',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A311',
        'comment': '7075 Aluminum',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRI',
        'gradeType': 'NONFER',
        'gradeCode': 'A312',
        'comment': '7085 Pucks',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A313',
        'comment': 'Aluminum Sow',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A314',
        'comment': 'Aluminum Transformers',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A315',
        'comment': 'Aluminum Bumpers',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A316',
        'comment': 'Aluminum Clip #1',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A317',
        'comment': 'Aluminum Dross',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRI',
        'gradeType': 'NONFER',
        'gradeCode': 'A318',
        'comment': 'Finstock',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A319',
        'comment': 'Aluminum Pistons',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRI',
        'gradeType': 'NONFER',
        'gradeCode': 'A320',
        'comment': 'Aluminum 5052 w/Poly',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRI',
        'gradeType': 'NONFER',
        'gradeCode': 'A321',
        'comment': 'Aluminum 5454',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALCAB',
        'gradeType': 'NONFER',
        'gradeCode': 'A322',
        'comment': 'Neoprene',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRD',
        'gradeType': 'NONFER',
        'gradeCode': 'A323',
        'comment': 'Aluminum Honeycomb',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRI',
        'gradeType': 'NONFER',
        'gradeCode': 'A324',
        'comment': 'Aluminum 3000 Series',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALCUR',
        'gradeType': 'NONFER',
        'gradeCode': 'A325',
        'comment': 'Reefer Ends',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRI',
        'gradeType': 'NONFER',
        'gradeCode': 'A326',
        'comment': 'Irrigation Pipe',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A327',
        'comment': 'Aluminum Slag',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRD',
        'gradeType': 'NONFER',
        'gradeCode': 'A328',
        'comment': 'Aluminum Solids',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A329',
        'comment': 'Alu rim turnings',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A330',
        'comment': 'Cast alu \u003E5%',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A331',
        'comment': 'Cast alu old and new Fe free',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A332',
        'comment': 'Cast alu new Fe free',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A333',
        'comment': 'Alu rims clean',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A334',
        'comment': 'Alu Si plated',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A335',
        'comment': 'Alu tubes with Pvc',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALCAB',
        'gradeType': 'NONFER',
        'gradeCode': 'A336',
        'comment': 'ACSR wire 65/35',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALCAB',
        'gradeType': 'NONFER',
        'gradeCode': 'A337',
        'comment': 'ACSR wire 60/40',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRD',
        'gradeType': 'NONFER',
        'gradeCode': 'A347',
        'comment': 'Engine Control Units',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'ALZORB',
        'gradeType': 'NONFER',
        'gradeCode': 'A348',
        'comment': 'Zorba 2',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALCAB',
        'gradeType': 'NONFER',
        'gradeCode': 'A349',
        'comment': 'Alu wire 99,5% oxidised',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRI',
        'gradeType': 'NONFER',
        'gradeCode': 'A356',
        'comment': 'Alu lithosheets with paper',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'ALZORB',
        'gradeType': 'NONFER',
        'gradeCode': 'A360',
        'comment': 'Zorba 3',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'ALZORB',
        'gradeType': 'NONFER',
        'gradeCode': 'A361',
        'comment': 'Zorba 4',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRI',
        'gradeType': 'NONFER',
        'gradeCode': 'A362',
        'comment': 'Alu refinery',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A363',
        'comment': 'Alu rims hammeled',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRI',
        'gradeType': 'NONFER',
        'gradeCode': 'A364',
        'comment': 'New alu low cu clippings hammelled',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRI',
        'gradeType': 'NONFER',
        'gradeCode': 'A365',
        'comment': 'New alu with protection foil hammelled',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A366',
        'comment': 'Clean alu extrusion hammelled',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRI',
        'gradeType': 'NONFER',
        'gradeCode': 'A367',
        'comment': 'Painted alu extrusion ALMGSI 0,5hammeled',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRI',
        'gradeType': 'NONFER',
        'gradeCode': 'A368',
        'comment': 'Alu thermobreak extrusion gehammelt',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRI',
        'gradeType': 'NONFER',
        'gradeCode': 'A369',
        'comment': '6000 Series Auto Cuttings',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'ALZORB',
        'gradeType': 'NONFER',
        'gradeCode': 'A370',
        'comment': 'Shreddable NF 25% Zorba and below',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'ALZORB',
        'gradeType': 'NONFER',
        'gradeCode': 'A371',
        'comment': 'Shreddable NF 25% to 40% Zorba',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'ALZORB',
        'gradeType': 'NONFER',
        'gradeCode': 'A372',
        'comment': 'Shreddable NF 40% Zorba and above',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRI',
        'gradeType': 'NONFER',
        'gradeCode': 'A374',
        'comment': '5000 Series Ali Dry',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRI',
        'gradeType': 'NONFER',
        'gradeCode': 'A375',
        'comment': '5000 Series Ali Oily',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRI',
        'gradeType': 'NONFER',
        'gradeCode': 'A379',
        'comment': '3003 Feeder Tube',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A380',
        'comment': '3003 Sow',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A381',
        'comment': '6061 SOW',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A382',
        'comment': '380  Sow',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A383',
        'comment': '356/357 Sow',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A384',
        'comment': 'ALUMINUM 380 CAST PUCK',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A385',
        'comment': '356/357 Slag',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A386',
        'comment': '6000 with Poly Turnings',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A387',
        'comment': '6000 Fines',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'A388',
        'comment': '5000 fines',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALCAB',
        'gradeType': 'NONFER',
        'gradeCode': 'A389',
        'comment': 'Bare CATV',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALCAB',
        'gradeType': 'NONFER',
        'gradeCode': 'A390',
        'comment': 'Irony CATV',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALOTH',
        'gradeType': 'NONFER',
        'gradeCode': 'A999',
        'comment': 'ALI Misc',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALCAB',
        'gradeType': 'NONFER',
        'gradeCode': 'AAAC',
        'comment': 'AAAC WIRE',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'ACB',
        'comment': 'Ali CUTS BALER',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'ACBJLR',
        'comment': 'JLR Ali CUTS BALER',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'ACBS',
        'comment': 'ALI CUTS BALER SMALL',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALCUR',
        'gradeType': 'NONFER',
        'gradeCode': 'ACRB',
        'comment': 'ALI COPPER RADS BALER',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALCUR',
        'gradeType': 'NONFER',
        'gradeCode': 'ACRS',
        'comment': 'Ali Copper Rads Shredder19 10 02',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'AIRSR',
        'comment': 'Aircraft Ali Shredder',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'ALM25',
        'comment': 'LM 25 PUCKS 19 12 03',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'ALM26',
        'comment': 'LM26 PUCKS 19 12 03',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'ALOLRO',
        'gradeType': 'NONFER',
        'gradeCode': 'ARB',
        'comment': 'ROLLED Ali BALER',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFPOWER',
        'gradeType': 'NONFER',
        'gradeCode': 'ARBLG',
        'comment': 'LG ROLLED ALI',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'ALOLRO',
        'gradeType': 'NONFER',
        'gradeCode': 'ARBS',
        'comment': 'OLD ROLLED SMALLS',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRI',
        'gradeType': 'NONFER',
        'gradeCode': 'ARIMRS',
        'comment': 'Alloy rims for resale',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'AWIA',
        'comment': 'WASHED INCINERATOR METAL 20  01 40',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRI',
        'gradeType': 'NONFER',
        'gradeCode': 'AWS',
        'comment': 'WHEELS SHREDDER 19 10 02',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRASS',
        'gradeType': 'NONFER',
        'gradeCode': 'B000',
        'comment': 'BRASS MIGRATION',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRASS',
        'gradeType': 'NONFER',
        'gradeCode': 'B240',
        'comment': 'BRASS HAIR WIRE',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRASS',
        'gradeType': 'NONFER',
        'gradeCode': 'B241',
        'comment': 'MIXED BRASS SOLID',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFPOWER',
        'gradeType': 'NONFER',
        'gradeCode': 'B241LG',
        'comment': 'LG MIXED BRASS SOLID',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRASS',
        'gradeType': 'NONFER',
        'gradeCode': 'B243',
        'comment': 'COMPOSITE RADS',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRASS',
        'gradeType': 'NONFER',
        'gradeCode': 'B244',
        'comment': 'ROD BRASS SOLIDS',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRASS',
        'gradeType': 'NONFER',
        'gradeCode': 'B245',
        'comment': 'ROD BRASS BORINGS',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRASS',
        'gradeType': 'NONFER',
        'gradeCode': 'B246',
        'comment': 'BRASS No2 SWARF',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRIR',
        'gradeType': 'NONFER',
        'gradeCode': 'B247',
        'comment': 'IRONY REFINING',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRONZ',
        'gradeType': 'NONFER',
        'gradeCode': 'B248',
        'comment': 'GUN METAL SOLIDS',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRONZ',
        'gradeType': 'NONFER',
        'gradeCode': 'B249',
        'comment': 'GUN METAL SWARF',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRONZ',
        'gradeType': 'NONFER',
        'gradeCode': 'B250',
        'comment': 'P B SOLIDS',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRONZ',
        'gradeType': 'NONFER',
        'gradeCode': 'B251',
        'comment': 'P B BORINGS',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRONZ',
        'gradeType': 'NONFER',
        'gradeCode': 'B252',
        'comment': 'Aluminum Bronze Solids',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRONZ',
        'gradeType': 'NONFER',
        'gradeCode': 'B254',
        'comment': 'P B CROWN WHEELS',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRONZ',
        'gradeType': 'NONFER',
        'gradeCode': 'B256',
        'comment': '80/20 GILDING METAL',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRASS',
        'gradeType': 'NONFER',
        'gradeCode': 'B258',
        'comment': 'BRASS SHELL CASES',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRASS',
        'gradeType': 'NONFER',
        'gradeCode': 'B267',
        'comment': 'HEATER CORES',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRIR',
        'gradeType': 'NONFER',
        'gradeCode': 'B268',
        'comment': 'IRONY AUTO RADIATORS',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRONZ',
        'gradeType': 'NONFER',
        'gradeCode': 'B269',
        'comment': 'GEAR BRONZE',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRIR',
        'gradeType': 'NONFER',
        'gradeCode': 'B270',
        'comment': 'MIXED BRASS - UNGRADED',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRONZ',
        'gradeType': 'NONFER',
        'gradeCode': 'B271',
        'comment': 'NAVY G',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRASS',
        'gradeType': 'NONFER',
        'gradeCode': 'B272',
        'comment': 'NAVY M',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRONZ',
        'gradeType': 'NONFER',
        'gradeCode': 'B273',
        'comment': 'Meter Brass (81 Metal)',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRASS',
        'gradeType': 'NONFER',
        'gradeCode': 'B274',
        'comment': 'Shredded Brass',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRONZ',
        'gradeType': 'NONFER',
        'gradeCode': 'B275',
        'comment': 'HARD BRASS  ',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRONZ',
        'gradeType': 'NONFER',
        'gradeCode': 'B276',
        'comment': 'SILICON BRONZE',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRONZ',
        'gradeType': 'NONFER',
        'gradeCode': 'B278',
        'comment': 'ADMIRALTY BRASS',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRASS',
        'gradeType': 'NONFER',
        'gradeCode': 'B279',
        'comment': 'Electrical Brass',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRIR',
        'gradeType': 'NONFER',
        'gradeCode': 'B280',
        'comment': 'Brass Tubes w/ Aluminum Fins',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRONZ',
        'gradeType': 'NONFER',
        'gradeCode': 'B281',
        'comment': 'Yellow Brass Turnings/Borings',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRONZ',
        'gradeType': 'NONFER',
        'gradeCode': 'B282',
        'comment': 'MN Bron Turnings/Grindings',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRONZ',
        'gradeType': 'NONFER',
        'gradeCode': 'B283',
        'comment': 'Hard Brass Turnings/Borings',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRASS',
        'gradeType': 'NONFER',
        'gradeCode': 'B284',
        'comment': 'BRASS YELLOW PIPE',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRASS',
        'gradeType': 'NONFER',
        'gradeCode': 'B285',
        'comment': '55% 81 Metal Slag',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRASS',
        'gradeType': 'NONFER',
        'gradeCode': 'B286',
        'comment': 'Semi-Red Turnings',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRASS',
        'gradeType': 'NONFER',
        'gradeCode': 'B287',
        'comment': 'Modin Brass',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRASS',
        'gradeType': 'NONFER',
        'gradeCode': 'B288',
        'comment': 'Silicon Turnings',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRIR',
        'gradeType': 'NONFER',
        'gradeCode': 'B289',
        'comment': 'Yellow Brass - Irony',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRASS',
        'gradeType': 'NONFER',
        'gradeCode': 'B290',
        'comment': 'Zipper Brass',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRASS',
        'gradeType': 'NONFER',
        'gradeCode': 'B291',
        'comment': 'Brass Water Meter',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRASS',
        'gradeType': 'NONFER',
        'gradeCode': 'B292',
        'comment': 'Brass Condenser Tubes',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFPOWER',
        'gradeType': 'NONFER',
        'gradeCode': 'B292LG',
        'comment': 'LG BRASS CONDENSER TUBES',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRASS',
        'gradeType': 'NONFER',
        'gradeCode': 'B293',
        'comment': '55% 85 Metal Slag',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRIR',
        'gradeType': 'NONFER',
        'gradeCode': 'B294',
        'comment': 'Brass Slag',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRASS',
        'gradeType': 'NONFER',
        'gradeCode': 'B295',
        'comment': 'Rod Brass Turnings',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRIR',
        'gradeType': 'NONFER',
        'gradeCode': 'B296',
        'comment': 'Brass Water Meter Dirty',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRASS',
        'gradeType': 'NONFER',
        'gradeCode': 'B297',
        'comment': "Mixed brass \u0027Honey\u0027 (Skandinavian)",
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRASS',
        'gradeType': 'NONFER',
        'gradeCode': 'B298',
        'comment': 'Ms58/63 mixed',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRASS',
        'gradeType': 'NONFER',
        'gradeCode': 'B299',
        'comment': 'Ms 70 tubes/clippings',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRASS',
        'gradeType': 'NONFER',
        'gradeCode': 'B300',
        'comment': 'Ms 63 tubes/clippings',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRASS',
        'gradeType': 'NONFER',
        'gradeCode': 'B301',
        'comment': 'Ms 70 tinned',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRASS',
        'gradeType': 'NONFER',
        'gradeCode': 'B302',
        'comment': 'Ms 63 tinned',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRASS',
        'gradeType': 'NONFER',
        'gradeCode': 'B303',
        'comment': 'Brass condensortubes 76/22/2',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRASS',
        'gradeType': 'NONFER',
        'gradeCode': 'B304',
        'comment': 'Brass condensortubes 70/29/1',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRASS',
        'gradeType': 'NONFER',
        'gradeCode': 'B305',
        'comment': 'Brass cartridges big',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRASS',
        'gradeType': 'NONFER',
        'gradeCode': 'B306',
        'comment': 'Brass cartridges Si',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRASS',
        'gradeType': 'NONFER',
        'gradeCode': 'B307',
        'comment': 'Brass drosses',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRASS',
        'gradeType': 'NONFER',
        'gradeCode': 'B308',
        'comment': 'Brass ingots',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRASS',
        'gradeType': 'NONFER',
        'gradeCode': 'B309',
        'comment': 'Gunmetal 90/10',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRASS',
        'gradeType': 'NONFER',
        'gradeCode': 'B310',
        'comment': 'Gunmetal RG 10',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRASS',
        'gradeType': 'NONFER',
        'gradeCode': 'B311',
        'comment': 'Gunmetal RG 5',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRASS',
        'gradeType': 'NONFER',
        'gradeCode': 'B312',
        'comment': 'Gunmetal with Fe',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRASS',
        'gradeType': 'NONFER',
        'gradeCode': 'B313',
        'comment': 'Gunmetals with brass attachments',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRASS',
        'gradeType': 'NONFER',
        'gradeCode': 'B314',
        'comment': 'Gunmetalturnings RG 10',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRASS',
        'gradeType': 'NONFER',
        'gradeCode': 'B315',
        'comment': 'Phosporbronze 96/4',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRASS',
        'gradeType': 'NONFER',
        'gradeCode': 'B316',
        'comment': 'Phosphorbronze 94/6',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRIR',
        'gradeType': 'NONFER',
        'gradeCode': 'B318',
        'comment': 'Brass refinery',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRASS',
        'gradeType': 'NONFER',
        'gradeCode': 'B319',
        'comment': 'Mn/Brass shippropellors',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRONZ',
        'gradeType': 'NONFER',
        'gradeCode': 'B320',
        'comment': 'Phos Bronze 510',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRONZ',
        'gradeType': 'NONFER',
        'gradeCode': 'B321',
        'comment': 'Phos Bronze 521',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRONZ',
        'gradeType': 'NONFER',
        'gradeCode': 'B322',
        'comment': 'Phos Bronze 544',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFBRASS',
        'gradeType': 'NONFER',
        'gradeCode': 'B999',
        'comment': 'MISC BRASS',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRI',
        'gradeType': 'NONFER',
        'gradeCode': 'BA221B',
        'comment': 'BALED ALI LITHO',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'BACB',
        'comment': 'BALED Ali CUTS',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'BACBJLR',
        'comment': 'Baled JLR Ali Cutts',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALCUR',
        'gradeType': 'NONFER',
        'gradeCode': 'BACRB',
        'comment': 'BALED ALI COPPER RADS',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'ALOLRO',
        'gradeType': 'NONFER',
        'gradeCode': 'BARB',
        'comment': 'BALED ROLLED Ali',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFZZZ',
        'gradeType': 'NONFER',
        'gradeCode': 'BAUMSNF',
        'comment': 'BAU CABLE',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'BJLNOV5',
        'comment': 'Baled 5xxx cuttings',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'BJLNOV6',
        'comment': 'Baled 6xxx cuttings',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCABPR',
        'gradeType': 'NONFER',
        'gradeCode': 'BLOFI',
        'comment': 'BLOWN FIBRE',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'BMWA235',
        'comment': 'BMW CAST ALI',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCABPR',
        'gradeType': 'NONFER',
        'gradeCode': 'BTCAB1',
        'comment': 'BT CABLE',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFZZZ',
        'gradeType': 'NONFER',
        'gradeCode': 'BUMSNFE',
        'comment': 'BAU CABLE',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUOTH',
        'gradeType': 'NONFER',
        'gradeCode': 'C000',
        'comment': 'COPPER MIGRATION',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUHI',
        'gradeType': 'NONFER',
        'gradeCode': 'C270',
        'comment': 'COPPER TAPE',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUHI',
        'gradeType': 'NONFER',
        'gradeCode': 'C271',
        'comment': 'DRY BRIGHT WIRE',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUHI',
        'gradeType': 'NONFER',
        'gradeCode': 'C272',
        'comment': 'GREASY BRIGHT WIRE',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUHI',
        'gradeType': 'NONFER',
        'gradeCode': 'C273',
        'comment': 'NO1 COPPER WIRE',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUHV',
        'gradeType': 'NONFER',
        'gradeCode': 'C274',
        'comment': 'COPPER NO2 WIRE',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUHV',
        'gradeType': 'NONFER',
        'gradeCode': 'C275',
        'comment': 'HEAVY COPPER TUBE',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFPOWER',
        'gradeType': 'NONFER',
        'gradeCode': 'C275LG',
        'comment': 'LG HVY COPPER',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUHI',
        'gradeType': 'NONFER',
        'gradeCode': 'C276',
        'comment': 'COPPER CUT/STMP',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUHV',
        'gradeType': 'NONFER',
        'gradeCode': 'C277',
        'comment': 'BRAZIERY COPPER',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUHV',
        'gradeType': 'NONFER',
        'gradeCode': 'C278',
        'comment': 'COPPER VAT WIRE',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUHV',
        'gradeType': 'NONFER',
        'gradeCode': 'C279',
        'comment': 'COPPER Turnings',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUHVP',
        'gradeType': 'NONFER',
        'gradeCode': 'C280',
        'comment': 'ELEMENTS',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUHVP',
        'gradeType': 'NONFER',
        'gradeCode': 'C281',
        'comment': 'CLEAN PYRO',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUHVP',
        'gradeType': 'NONFER',
        'gradeCode': 'C282',
        'comment': 'PVC PYRO',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUHI',
        'gradeType': 'NONFER',
        'gradeCode': 'C283',
        'comment': 'HARD DRAWN COPPER',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUHI',
        'gradeType': 'NONFER',
        'gradeCode': 'C284',
        'comment': 'ELECTRO COPPER',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUHV',
        'gradeType': 'NONFER',
        'gradeCode': 'C285',
        'comment': 'A1 COPPER GRANULES',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUHV',
        'gradeType': 'NONFER',
        'gradeCode': 'C285R',
        'comment': 'Refining Copper Granule',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUHV',
        'gradeType': 'NONFER',
        'gradeCode': 'C286',
        'comment': 'TINNED COPPER',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUHV',
        'gradeType': 'NONFER',
        'gradeCode': 'C287',
        'comment': 'COPPER CYLINDERS',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUHI',
        'gradeType': 'NONFER',
        'gradeCode': 'C288',
        'comment': 'CLEAN COPPER TUBE',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUOTH',
        'gradeType': 'NONFER',
        'gradeCode': 'C289',
        'comment': 'IRONY REFINING COPPER',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUHI',
        'gradeType': 'NONFER',
        'gradeCode': 'C290',
        'comment': 'COPPER CATHODE',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUOTH',
        'gradeType': 'NONFER',
        'gradeCode': 'C293',
        'comment': 'ELECTRIC MOTORS',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFPOWER',
        'gradeType': 'NONFER',
        'gradeCode': 'C293LG',
        'comment': 'LG ELECTRIC MOTORS',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUOTH',
        'gradeType': 'NONFER',
        'gradeCode': 'C293R',
        'comment': 'Electric Motors - Rejects',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUOTH',
        'gradeType': 'NONFER',
        'gradeCode': 'C293W',
        'comment': 'Small Motors',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUOTH',
        'gradeType': 'NONFER',
        'gradeCode': 'C294',
        'comment': 'FRIDGE MOTORS',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUOTH',
        'gradeType': 'NONFER',
        'gradeCode': 'C295',
        'comment': 'Armatures',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUOTH',
        'gradeType': 'NONFER',
        'gradeCode': 'C296',
        'comment': 'ELECTRIC METERS',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUHV',
        'gradeType': 'NONFER',
        'gradeCode': 'C297',
        'comment': 'BURNT \u0026 PAINTED BUS BAR',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUHV',
        'gradeType': 'NONFER',
        'gradeCode': 'C298',
        'comment': '98% HEAVY COPPER TUBE',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUHV',
        'gradeType': 'NONFER',
        'gradeCode': 'C299',
        'comment': 'Used Yorkshire Fittings',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUOTH',
        'gradeType': 'NONFER',
        'gradeCode': 'C300',
        'comment': 'Monitor Yokes',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUOTH',
        'gradeType': 'NONFER',
        'gradeCode': 'C301',
        'comment': 'WEE ARMATURES 19 10 02',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUOTH',
        'gradeType': 'NONFER',
        'gradeCode': 'C304',
        'comment': 'NON-PCB BALLAST',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUHV',
        'gradeType': 'NONFER',
        'gradeCode': 'C305',
        'comment': 'Shredded Copper',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUOTH',
        'gradeType': 'NONFER',
        'gradeCode': 'C306',
        'comment': 'Starters and Alternators',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUOTH',
        'gradeType': 'NONFER',
        'gradeCode': 'C307',
        'comment': 'Elec Motors (Alu Body Casing)',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUOTH',
        'gradeType': 'NONFER',
        'gradeCode': 'C309',
        'comment': 'Beryllium Copper',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUOTH',
        'gradeType': 'NONFER',
        'gradeCode': 'C310',
        'comment': 'Transformers',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFPOWER',
        'gradeType': 'NONFER',
        'gradeCode': 'C310LG',
        'comment': 'LG TRANSFORMERS',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUOTH',
        'gradeType': 'NONFER',
        'gradeCode': 'C311',
        'comment': 'Copper Clad',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUOTH',
        'gradeType': 'NONFER',
        'gradeCode': 'C312',
        'comment': 'Refinery Copper',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUOTH',
        'gradeType': 'NONFER',
        'gradeCode': 'C313',
        'comment': 'Alternators',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUOTH',
        'gradeType': 'NONFER',
        'gradeCode': 'C314',
        'comment': 'Beryllium Copper Turnings',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUOTH',
        'gradeType': 'NONFER',
        'gradeCode': 'C315',
        'comment': 'Shredder Armatures',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUHI',
        'gradeType': 'NONFER',
        'gradeCode': 'C316',
        'comment': 'Cu soudronic',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUHI',
        'gradeType': 'NONFER',
        'gradeCode': 'C317',
        'comment': 'Cu bars new',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUHI',
        'gradeType': 'NONFER',
        'gradeCode': 'C318',
        'comment': 'Cu bars painted',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUHI',
        'gradeType': 'NONFER',
        'gradeCode': 'C319',
        'comment': 'Cu bars tinned',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUHI',
        'gradeType': 'NONFER',
        'gradeCode': 'C320',
        'comment': 'Mixed Ecu bars',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUHV',
        'gradeType': 'NONFER',
        'gradeCode': 'C321',
        'comment': 'Cu granules 3',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUHV',
        'gradeType': 'NONFER',
        'gradeCode': 'C322',
        'comment': 'Cu granules lt 80% cu',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUHI',
        'gradeType': 'NONFER',
        'gradeCode': 'C324',
        'comment': 'Cu ingots',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUOTH',
        'gradeType': 'NONFER',
        'gradeCode': 'C325',
        'comment': 'Oversize Motors',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUOTH',
        'gradeType': 'NONFER',
        'gradeCode': 'C326',
        'comment': 'Washmachine motors',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUOTH',
        'gradeType': 'NONFER',
        'gradeCode': 'C327',
        'comment': 'Cu/Fe ankers with Alu',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUOTH',
        'gradeType': 'NONFER',
        'gradeCode': 'C328',
        'comment': "Trafo\u0027s",
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUOTH',
        'gradeType': 'NONFER',
        'gradeCode': 'C329',
        'comment': "Trafo\u0027s big",
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUOTH',
        'gradeType': 'NONFER',
        'gradeCode': 'C330',
        'comment': 'Starter and dynamos',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFPOWER',
        'gradeType': 'NONFER',
        'gradeCode': 'C330LG',
        'comment': 'LG STATORS \u0026 DYNAMOS',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUOTH',
        'gradeType': 'NONFER',
        'gradeCode': 'C331',
        'comment': 'Cu refinery',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUOTH',
        'gradeType': 'NONFER',
        'gradeCode': 'C332',
        'comment': 'Train motors',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUOTH',
        'gradeType': 'NONFER',
        'gradeCode': 'C333',
        'comment': 'Handtool Motors',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUOTH',
        'gradeType': 'NONFER',
        'gradeCode': 'C334',
        'comment': 'Core \u0026 Windings',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUOTH',
        'gradeType': 'NONFER',
        'gradeCode': 'C335',
        'comment': 'Core \u0026 Windings',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUOTH',
        'gradeType': 'NONFER',
        'gradeCode': 'C336',
        'comment': 'Switch Gear',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFPOWER',
        'gradeType': 'NONFER',
        'gradeCode': 'C336LG',
        'comment': 'LG SWITCH GEAR',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUHV',
        'gradeType': 'NONFER',
        'gradeCode': 'C337',
        'comment': 'Lead Plated Lite CU',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUHV',
        'gradeType': 'NONFER',
        'gradeCode': 'C338',
        'comment': 'SILVER PLATED COPPER WIRE',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUHV',
        'gradeType': 'NONFER',
        'gradeCode': 'C340',
        'comment': 'Lead Washed Rads',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUOTH',
        'gradeType': 'NONFER',
        'gradeCode': 'C341',
        'comment': 'DC MOTORS',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUHV',
        'gradeType': 'NONFER',
        'gradeCode': 'C999',
        'comment': 'MISC COPPER',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCABEX',
        'gradeType': 'NONFER',
        'gradeCode': 'CAB0',
        'comment': 'SORTED NO2 BRENTFORD',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCABEX',
        'gradeType': 'NONFER',
        'gradeCode': 'CAB1',
        'comment': 'HOUSEHOLD CABLE BRENTFORD',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCABEX',
        'gradeType': 'NONFER',
        'gradeCode': 'CAB2',
        'comment': 'LOW GRADE CABLE BRENTFORD',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCABEX',
        'gradeType': 'NONFER',
        'gradeCode': 'CAB3',
        'comment': 'LEAD COPPER CABLE BRENTFORD',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUHI',
        'gradeType': 'NONFER',
        'gradeCode': 'CAB4',
        'comment': 'HIGH GRADE CABLE BRENTFORD',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCABEX',
        'gradeType': 'NONFER',
        'gradeCode': 'CAB5',
        'comment': 'ALUMINIUM CABLE BRENTFORD',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFGRN',
        'gradeType': 'NONFER',
        'gradeCode': 'CAB6',
        'comment': 'GREASY PRODUCTION CABLE BRENTFORD',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCABH',
        'gradeType': 'NONFER',
        'gradeCode': 'CAB999',
        'comment': 'Cable Group',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCABH',
        'gradeType': 'NONFER',
        'gradeCode': 'CABL0',
        'comment': 'Sorted NO2 Cable',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFPOWER',
        'gradeType': 'NONFER',
        'gradeCode': 'CABL0LG',
        'comment': 'LG SORTED NO 2 CABLE',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCABH',
        'gradeType': 'NONFER',
        'gradeCode': 'CABL1',
        'comment': 'HOUSEHOLD CABLE',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCABOT',
        'gradeType': 'NONFER',
        'gradeCode': 'CABL10',
        'comment': 'Antenna Wire / Coax Cable',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCABH',
        'gradeType': 'NONFER',
        'gradeCode': 'CABL11',
        'comment': 'Wave Guide',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCABH',
        'gradeType': 'NONFER',
        'gradeCode': 'CABL12',
        'comment': 'Harness Wire',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCABH',
        'gradeType': 'NONFER',
        'gradeCode': 'CABL13',
        'comment': 'Copper URD',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCABH',
        'gradeType': 'NONFER',
        'gradeCode': 'CABL14',
        'comment': '#1 Insulated Copper Wire - High Recovery',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCABH',
        'gradeType': 'NONFER',
        'gradeCode': 'CABL15',
        'comment': '#2 Insulated Copper Wire - High Recovery',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCABH',
        'gradeType': 'NONFER',
        'gradeCode': 'CABL16',
        'comment': '#2 Insulated Copper Wire',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCABH',
        'gradeType': 'NONFER',
        'gradeCode': 'CABL17',
        'comment': 'Jelly Wire',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCABH',
        'gradeType': 'NONFER',
        'gradeCode': 'CABL18',
        'comment': 'THHN CABLE (78-82%)',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCABH',
        'gradeType': 'NONFER',
        'gradeCode': 'CABL19',
        'comment': 'Cu cable 40-42%',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFZZZ',
        'gradeType': 'NONFER',
        'gradeCode': 'CABL1BU',
        'comment': 'HOUSEHOLD CABLE BU',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCABH',
        'gradeType': 'NONFER',
        'gradeCode': 'CABL2',
        'comment': 'LOW GRADE CABLE',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCABH',
        'gradeType': 'NONFER',
        'gradeCode': 'CABL20',
        'comment': 'Cu cable 42-44%',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCABOT',
        'gradeType': 'NONFER',
        'gradeCode': 'CABL21',
        'comment': 'Cu cable with Fe',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCABOT',
        'gradeType': 'NONFER',
        'gradeCode': 'CABL22',
        'comment': 'Cu energycable',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALCAB',
        'gradeType': 'NONFER',
        'gradeCode': 'CABL23',
        'comment': 'Alu undergroundcable with Fe',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALCAB',
        'gradeType': 'NONFER',
        'gradeCode': 'CABL24',
        'comment': 'Reda Cable Steel Shield',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALCAB',
        'gradeType': 'NONFER',
        'gradeCode': 'CABL25',
        'comment': 'Reda Cable Stainless Shield',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALCAB',
        'gradeType': 'NONFER',
        'gradeCode': 'CABL26',
        'comment': 'Reda Cable Monel Shield',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCABOT',
        'gradeType': 'NONFER',
        'gradeCode': 'CABL29',
        'comment': '6A 2\u00261 BARE ICW',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFZZZ',
        'gradeType': 'NONFER',
        'gradeCode': 'CABL2BU',
        'comment': 'LOW GRADE CABLE BU',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFPOWER',
        'gradeType': 'NONFER',
        'gradeCode': 'CABL2LG',
        'comment': 'LG LOW GRADE CABLE',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCABOT',
        'gradeType': 'NONFER',
        'gradeCode': 'CABL3',
        'comment': 'LEAD COPPER CABLE',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCABOT',
        'gradeType': 'NONFER',
        'gradeCode': 'CABL30',
        'comment': 'MIXED 2\u00261 BARE ICW',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCABOT',
        'gradeType': 'NONFER',
        'gradeCode': 'CABL31',
        'comment': '8A 2\u00261 Bare',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCABOT',
        'gradeType': 'NONFER',
        'gradeCode': 'CABL32',
        'comment': '8A 2\u00261 Galvenized',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCABOT',
        'gradeType': 'NONFER',
        'gradeCode': 'CABL33',
        'comment': 'LEAD COPPER POWER CABLE',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFZZZ',
        'gradeType': 'NONFER',
        'gradeCode': 'CABL3BU',
        'comment': 'LEAD COPPER CABLE BU',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUHI',
        'gradeType': 'NONFER',
        'gradeCode': 'CABL4',
        'comment': 'HIGH GRADE CABLE',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFZZZ',
        'gradeType': 'NONFER',
        'gradeCode': 'CABL4BU',
        'comment': 'POLY CABLE BU',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALCAB',
        'gradeType': 'NONFER',
        'gradeCode': 'CABL5',
        'comment': 'ALUMINIUM CABLE',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFZZZ',
        'gradeType': 'NONFER',
        'gradeCode': 'CABL5BU',
        'comment': 'ALI CABLE BU',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFPOWER',
        'gradeType': 'NONFER',
        'gradeCode': 'CABL5LG',
        'comment': 'LG Aluminium Cable',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCABOT',
        'gradeType': 'NONFER',
        'gradeCode': 'CABL6',
        'comment': 'GREASY PRODUCTION CABLE',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFZZZ',
        'gradeType': 'NONFER',
        'gradeCode': 'CABL6BU',
        'comment': 'GREASY CABLE BU',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCABH',
        'gradeType': 'NONFER',
        'gradeCode': 'CABL7',
        'comment': '2/1 Insulated Cable',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCABH',
        'gradeType': 'NONFER',
        'gradeCode': 'CABL8',
        'comment': 'Aluminum BX',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCABH',
        'gradeType': 'NONFER',
        'gradeCode': 'CABL9',
        'comment': 'Steel BX',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFZZZ',
        'gradeType': 'NONFER',
        'gradeCode': 'CABLDBU',
        'comment': 'DROP WIRE BU',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCABH',
        'gradeType': 'NONFER',
        'gradeCode': 'CABLHP',
        'comment': 'Haz \u0026 POPs Cable',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFZZZ',
        'gradeType': 'NONFER',
        'gradeCode': 'CABLJBU',
        'comment': 'JUMPER WIRE BU',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCABOT',
        'gradeType': 'NONFER',
        'gradeCode': 'CABLP',
        'comment': '3 pin Cable',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCABPR',
        'gradeType': 'NONFER',
        'gradeCode': 'CABLPR',
        'comment': 'Cable Production',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCABH',
        'gradeType': 'NONFER',
        'gradeCode': 'CABLR',
        'comment': 'Cable with attachments',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFZZZ',
        'gradeType': 'NONFER',
        'gradeCode': 'CABLXBU',
        'comment': 'CABLE EXCHANGE BU',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'CASR',
        'comment': 'Cast Ali Shredder',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALCAB',
        'gradeType': 'NONFER',
        'gradeCode': 'CBL25',
        'comment': 'Reda Cable Stainless Shielddnu',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCABH',
        'gradeType': 'NONFER',
        'gradeCode': 'CBWRL1',
        'comment': 'Wiring Looms',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUOTH',
        'gradeType': 'NONFER',
        'gradeCode': 'COINS',
        'comment': 'COINS - MINT',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRI',
        'gradeType': 'NONFER',
        'gradeCode': 'EALLOY',
        'comment': 'Ali WHEELS Ex ELV',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFLEAD',
        'gradeType': 'NONFER',
        'gradeCode': 'EBATT',
        'comment': 'ELV Batteries ',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'ALZORB',
        'gradeType': 'NONFER',
        'gradeCode': 'ENFENG',
        'comment': 'Non Ferrous Engines from ELV',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALOTH',
        'gradeType': 'NONFER',
        'gradeCode': 'EVBATT',
        'comment': 'Electric Vehicle Batteries',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCABEX',
        'gradeType': 'NONFER',
        'gradeCode': 'F000',
        'comment': 'CABLE MIGRATION',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCABPR',
        'gradeType': 'NONFER',
        'gradeCode': 'FIOPT',
        'comment': 'FIBRE OPTIC',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUOTH',
        'gradeType': 'NONFER',
        'gradeCode': 'FRCN',
        'comment': 'Fridge Condensers',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFLEAD',
        'gradeType': 'NONFER',
        'gradeCode': 'GBATLGE',
        'comment': 'GABATT-LGE',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFLEAD',
        'gradeType': 'NONFER',
        'gradeCode': 'GBATMED',
        'comment': 'GABATT-MED',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFLEAD',
        'gradeType': 'NONFER',
        'gradeCode': 'GBATSML',
        'comment': 'GABATT-SML',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFGRN',
        'gradeType': 'NONFER',
        'gradeCode': 'GR01',
        'comment': 'BRIGHT GRANULES RAW',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFGRN',
        'gradeType': 'NONFER',
        'gradeCode': 'GR02',
        'comment': 'GREASY GRANULES RAW',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFGRN',
        'gradeType': 'NONFER',
        'gradeCode': 'GR03',
        'comment': 'MIXED GRANULES RAW',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUHI',
        'gradeType': 'NONFER',
        'gradeCode': 'GR04',
        'comment': 'BRIGHT GRANULES FINISHED',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFGRN',
        'gradeType': 'NONFER',
        'gradeCode': 'GR05',
        'comment': 'Water Table Copper',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCABOT',
        'gradeType': 'NONFER',
        'gradeCode': 'GR06',
        'comment': 'GREASY GRANULES FINISHED',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFGRN',
        'gradeType': 'NONFER',
        'gradeCode': 'GR07',
        'comment': 'LEAD STRIP FINISHED',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFGRN',
        'gradeType': 'NONFER',
        'gradeCode': 'GR08',
        'comment': 'BRIGHT GRANULES FINISHED',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFGRN',
        'gradeType': 'NONFER',
        'gradeCode': 'GR09',
        'comment': 'GREASY GRANULES FINISHED',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFGRN',
        'gradeType': 'NONFER',
        'gradeCode': 'GR12',
        'comment': 'DRY BRIGHT',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFGRN',
        'gradeType': 'NONFER',
        'gradeCode': 'GR13',
        'comment': 'STEEL CHOPPINGS',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFGRN',
        'gradeType': 'NONFER',
        'gradeCode': 'GR14',
        'comment': 'MIXED EXPORT CABLE',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFGRN',
        'gradeType': 'NONFER',
        'gradeCode': 'GR15',
        'comment': 'CU/PB EXPORT CABLE',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFGRN',
        'gradeType': 'NONFER',
        'gradeCode': 'GR16',
        'comment': 'HIGH GRADE EXPORT CABLE',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCABOT',
        'gradeType': 'NONFER',
        'gradeCode': 'GR98',
        'comment': '98% Copper Granulated',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCABH',
        'gradeType': 'NONFER',
        'gradeCode': 'GRCAB0',
        'comment': 'Sorted NO2 Cable GRANULATION',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCABH',
        'gradeType': 'NONFER',
        'gradeCode': 'GRCAB1',
        'comment': 'HOUSEHOLD CABLE GRANULATION',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCABH',
        'gradeType': 'NONFER',
        'gradeCode': 'GRCAB2',
        'comment': 'LOWGRADE CABLE GRANULATION',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCABOT',
        'gradeType': 'NONFER',
        'gradeCode': 'GRCAB3',
        'comment': 'LEAD COPPER CABLE GRANULATION',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUHI',
        'gradeType': 'NONFER',
        'gradeCode': 'GRCAB4',
        'comment': 'HIGH GRADE CABLE GRANULATION',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALCAB',
        'gradeType': 'NONFER',
        'gradeCode': 'GRCAB5',
        'comment': 'ALUMINIUM CABLE GRANULATION',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRI',
        'gradeType': 'NONFER',
        'gradeCode': 'H9SHR',
        'comment': 'Beer Kegs',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRI',
        'gradeType': 'NONFER',
        'gradeCode': 'HE9SR',
        'comment': 'HE9 Shredder',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'ALOLRO',
        'gradeType': 'NONFER',
        'gradeCode': 'HHA1',
        'comment': 'Hammeled Old rolled 2-5%',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRD',
        'gradeType': 'NONFER',
        'gradeCode': 'HHA2',
        'comment': 'Old rolled hammeled Fe free',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRD',
        'gradeType': 'NONFER',
        'gradeCode': 'IAS',
        'comment': 'Irony Alum Ships EWC170407',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'ALZORB',
        'gradeType': 'NONFER',
        'gradeCode': 'IASR',
        'comment': 'Irony Ali Shredder',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'JLNOV5',
        'comment': 'Loose 5xxx cuttings',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'JLNOV6',
        'comment': 'Loose 6xxx cuttings',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFLEAD',
        'gradeType': 'NONFER',
        'gradeCode': 'L000',
        'comment': 'LEAD MIGRATION',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFLEAD',
        'gradeType': 'NONFER',
        'gradeCode': 'L101',
        'comment': 'LEAD',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCABPR',
        'gradeType': 'NONFER',
        'gradeCode': 'L101T',
        'comment': 'TELENT LEAD',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFLEAD',
        'gradeType': 'NONFER',
        'gradeCode': 'L102',
        'comment': 'BATTERIES ',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFLEAD',
        'gradeType': 'NONFER',
        'gradeCode': 'L103',
        'comment': 'TRACTION BATTERY ',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NSLEAD',
        'gradeType': 'NONFER',
        'gradeCode': 'L112',
        'comment': 'LEAD STEEL G/BARS',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFLEAD',
        'gradeType': 'NONFER',
        'gradeCode': 'L115',
        'comment': 'WHEEL WEIGHTS',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFLEAD ',
        'gradeType': 'NONFER',
        'gradeCode': 'L116',
        'comment': 'Range Lead',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFLEAD',
        'gradeType': 'NONFER',
        'gradeCode': 'L119',
        'comment': 'Leadingots',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFLEAD',
        'gradeType': 'NONFER',
        'gradeCode': 'L122',
        'comment': 'ABSOLYTE BATTERIES',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFLEAD',
        'gradeType': 'NONFER',
        'gradeCode': 'L999',
        'comment': 'MISC LEAD',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFGRN',
        'gradeType': 'NONFER',
        'gradeCode': 'LJOIN',
        'comment': 'Lead Joints x Telent',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFLEAD',
        'gradeType': 'NONFER',
        'gradeCode': 'LPOR',
        'comment': 'Portable Lead Acid Batteries',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFZZZ',
        'gradeType': 'NONFER',
        'gradeCode': 'MSNFE',
        'comment': 'Miscellaneous NF',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFNISTD',
        'gradeType': 'NONFER',
        'gradeCode': 'N000',
        'comment': 'NIALLOY MIGRATION',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFNISTD',
        'gradeType': 'NONFER',
        'gradeCode': 'N001',
        'comment': 'HK 40',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFNISTD',
        'gradeType': 'NONFER',
        'gradeCode': 'N002',
        'comment': 'HP 45',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFNISTD',
        'gradeType': 'NONFER',
        'gradeCode': 'N004',
        'comment': 'MARAGING TURNINGS',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFNISTD',
        'gradeType': 'NONFER',
        'gradeCode': 'N121',
        'comment': '18/8 STAINLESS SOLIDS',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFNISTD',
        'gradeType': 'NONFER',
        'gradeCode': 'N121A',
        'comment': 'STAINLESS 304',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFPOWER',
        'gradeType': 'NONFER',
        'gradeCode': 'N121LG',
        'comment': 'LG 18/8 STAINLESS SOLIDS',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFNISTD',
        'gradeType': 'NONFER',
        'gradeCode': 'N121OS',
        'comment': 'OVER SIZE 18/8 SOLIDS',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFNISTD',
        'gradeType': 'NONFER',
        'gradeCode': 'N122',
        'comment': '18/8 STAINLESS Turnings',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFNISTD',
        'gradeType': 'NONFER',
        'gradeCode': 'N123',
        'comment': '316 STAINLESS SOLID',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFPOWER',
        'gradeType': 'NONFER',
        'gradeCode': 'N123LG',
        'comment': 'LG 316 STAINLESS SOLIDS',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFNISTD',
        'gradeType': 'NONFER',
        'gradeCode': 'N123OS',
        'comment': 'OVER SIZE 316 STAINLESS SOLID',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFNISTD',
        'gradeType': 'NONFER',
        'gradeCode': 'N124',
        'comment': '316 STAINLESS Turnings',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFNISTD',
        'gradeType': 'NONFER',
        'gradeCode': 'N125',
        'comment': 'CHROME IRON SOLID',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFPOWER',
        'gradeType': 'NONFER',
        'gradeCode': 'N125LG',
        'comment': 'LG CHROME IRON',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFNISTD',
        'gradeType': 'NONFER',
        'gradeCode': 'N126',
        'comment': 'CHROME IRON Turnings',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFPOWER',
        'gradeType': 'NONFER',
        'gradeCode': 'N127LG',
        'comment': 'LG 70/30 CUP NICKEL SD',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFPOWER',
        'gradeType': 'NONFER',
        'gradeCode': 'N136LG',
        'comment': 'TITANIUMS',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NSNISTD',
        'gradeType': 'NONFER',
        'gradeCode': 'N141',
        'comment': 'IRONY STAINLESS',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFPOWER',
        'gradeType': 'NONFER',
        'gradeCode': 'N174LG',
        'comment': 'LG DUPLEX SOLIDS',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFNISTD',
        'gradeType': 'NONFER',
        'gradeCode': 'N211',
        'comment': '18/8 S.S. UNPREPARED',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFNISTD',
        'gradeType': 'NONFER',
        'gradeCode': 'N212',
        'comment': '316 S.S. UNPREPARED',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFNIHI',
        'gradeType': 'NONFER',
        'gradeCode': 'N222',
        'comment': 'K MONEL',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFNISTD',
        'gradeType': 'NONFER',
        'gradeCode': 'N304',
        'comment': '18/8 Rangemaster 19 12 03',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFNISTD',
        'gradeType': 'NONFER',
        'gradeCode': 'N347',
        'comment': 'Stainless Steel',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFNISTD',
        'gradeType': 'NONFER',
        'gradeCode': 'N348',
        'comment': '304 Stainless Steel',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFNISTD',
        'gradeType': 'NONFER',
        'gradeCode': 'N349',
        'comment': 'Stainless Steel Turnings',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFNISTD',
        'gradeType': 'NONFER',
        'gradeCode': 'N350',
        'comment': '304 Stainless Steel Turnings',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFNISTD',
        'gradeType': 'NONFER',
        'gradeCode': 'N351',
        'comment': '321 Stainless Steel',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFNISTD',
        'gradeType': 'NONFER',
        'gradeCode': 'N352',
        'comment': '347 Stainless Steel',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFZINC',
        'gradeType': 'NONFER',
        'gradeCode': 'N383',
        'comment': 'Diecast Carburetors',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFZINC',
        'gradeType': 'NONFER',
        'gradeCode': 'N384',
        'comment': 'Diecast Clean',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFNISTD',
        'gradeType': 'NONFER',
        'gradeCode': 'N409',
        'comment': '409 STAINLESS',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'NFRGU',
        'comment': 'Non Ferrous Regulators',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'NGMV',
        'comment': 'nat grid meters \u0026 valves',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFZZZ',
        'gradeType': 'NONFER',
        'gradeCode': 'PBJOBU',
        'comment': 'LEAD JOINTS BU',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCUHI',
        'gradeType': 'NONFER',
        'gradeCode': 'PCO1',
        'comment': 'PAPER CORES',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFGRN',
        'gradeType': 'NONFER',
        'gradeCode': 'PJOIN',
        'comment': 'POLY JOINTS X TELENT',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'ALOLRO',
        'gradeType': 'NONFER',
        'gradeCode': 'PSHA',
        'comment': 'PRESSED \u0026 SHEARED ALI 19 12 03',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFZZZ',
        'gradeType': 'NONFER',
        'gradeCode': 'PVCJOBU',
        'comment': 'PVC JOINGS BU',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'ALOLRO',
        'gradeType': 'NONFER',
        'gradeCode': 'RASR',
        'comment': 'Rolled Ali Shredder',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALCUR',
        'gradeType': 'NONFER',
        'gradeCode': 'SACRS',
        'comment': 'Shredded Ali Copper Rads 19 10 02',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRI',
        'gradeType': 'NONFER',
        'gradeCode': 'SAWS',
        'comment': 'SHREDDED WHEELS 19 10 02',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'SCASR',
        'comment': 'ShreddedCast Ali',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRI',
        'gradeType': 'NONFER',
        'gradeCode': 'SH9SR',
        'comment': 'Shredded Beer Kegs',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'ALOLRO',
        'gradeType': 'NONFER',
        'gradeCode': 'SHA',
        'comment': 'FEEDSTOCK PRESSED \u0026 SHEARED 19 12 03',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'ALZORB',
        'gradeType': 'NONFER',
        'gradeCode': 'SIASR',
        'comment': 'Shredded Irony Ali',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALSEC',
        'gradeType': 'NONFER',
        'gradeCode': 'SIRSR',
        'comment': 'Shredded Aircraft Ali',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'ALOLRO',
        'gradeType': 'NONFER',
        'gradeCode': 'SRASR',
        'comment': 'Shredded Rolled Ali',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFNISTD',
        'gradeType': 'NONFER',
        'gradeCode': 'SSSR',
        'comment': 'Stainless Steel Shredder',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFNISTD',
        'gradeType': 'NONFER',
        'gradeCode': 'SSSSR',
        'comment': 'Shredded Stainless',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCABPR',
        'gradeType': 'NONFER',
        'gradeCode': 'TELC1',
        'comment': 'BT Cable Recovery',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFCABPR',
        'gradeType': 'NONFER',
        'gradeCode': 'TELC1G',
        'comment': 'BT Contract Greasy Cable',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFALPRI',
        'gradeType': 'NONFER',
        'gradeCode': 'TYRMA',
        'comment': 'Tyres on Ali Rims ex ELV',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFZINC',
        'gradeType': 'NONFER',
        'gradeCode': 'Z000',
        'comment': 'ZINC MIGRATION',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFZINC',
        'gradeType': 'NONFER',
        'gradeCode': 'Z161',
        'comment': 'ZINC DIECAST',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFZINC',
        'gradeType': 'NONFER',
        'gradeCode': 'Z162',
        'comment': 'ZINC ROOFING SHEET',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFZINC',
        'gradeType': 'NONFER',
        'gradeCode': 'Z163',
        'comment': 'ZINC LUMPS',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFZINC',
        'gradeType': 'NONFER',
        'gradeCode': 'Z164',
        'comment': 'ZINC BASE',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFZINC',
        'gradeType': 'NONFER',
        'gradeCode': 'Z165',
        'comment': 'ZINC TURNINGS',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFZINC',
        'gradeType': 'NONFER',
        'gradeCode': 'Z166',
        'comment': 'New zinc scrap',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFZINC',
        'gradeType': 'NONFER',
        'gradeCode': 'Z167',
        'comment': 'Zinc ingots',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFZINC',
        'gradeType': 'NONFER',
        'gradeCode': 'Z168',
        'comment': 'Zamac Fe free',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFZINC',
        'gradeType': 'NONFER',
        'gradeCode': 'Z169',
        'comment': 'Zamac \u003E5%',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFZINC',
        'gradeType': 'NONFER',
        'gradeCode': 'Z170',
        'comment': 'Zamac 5-15%',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFZINC',
        'gradeType': 'NONFER',
        'gradeCode': 'Z171',
        'comment': 'Zamac mixed',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFZINC',
        'gradeType': 'NONFER',
        'gradeCode': 'Z172',
        'comment': 'Wheel zinc',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFZINC',
        'gradeType': 'NONFER',
        'gradeCode': 'Z173',
        'comment': 'Zinc anodes',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFZINC',
        'gradeType': 'NONFER',
        'gradeCode': 'Z174',
        'comment': 'Zinc drosses',
        '__typename': 'Grade',
      },
      {
        'gradeGroup': 'NFZINC',
        'gradeType': 'NONFER',
        'gradeCode': 'Z175',
        'comment': 'Zinc ashes',
        '__typename': 'Grade',
      }
    ],
    '__typename': 'Query',
  },
};

final kCreateSpotContract = {
  'data': {
    'createSpotContract': {
      'contractRef': '388951',
      '__typename': 'T2ContractHeader',
    },
    '__typename': 'Mutation',
  },
};
