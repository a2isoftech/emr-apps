import 'dart:convert';

import 'package:emr_one_core/networking/networking.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../graphql/queries/test.graphql.dart';
import 'networking_graphql_cache_test.mocks.dart';

@GenerateMocks([EmrCacheProvider])
void main() {
  test('Test cache no hit mechanism', () async {
    final jsonString = json.encode(
      {
        'data': {
          'get': 'ok',
          '__typename': 'String',
        },
      },
    );

    // Create mock object.
    final mockCacheProvider = MockEmrCacheProvider();
    when(mockCacheProvider.get(any)).thenAnswer((_) async => null);
    when(mockCacheProvider.set(any, any, any)).thenAnswer((_) async => true);

    final mockClient = MockClient(
      (request) async => Response(
        jsonString,
        200,
        headers: {'content-type': 'application/json'},
      ),
    );

    await documentNodeQueryTest.execute(
      mockClient,
      Query$Test.fromJson,
      cacheProvider: mockCacheProvider,
    );

    verify(mockCacheProvider.set(any, any, any)).called(1);
  });

  test('Test cache with hit mechanism', () async {
    final jsonString = json.encode(
      {
        'data': {
          'get': 'ok',
          '__typename': 'String',
        },
      },
    );

    // Create mock object.
    final mockCacheProvider = MockEmrCacheProvider();
    when(mockCacheProvider.get(any)).thenAnswer((_) async => jsonString);

    final mockClient = MockClient(
      (request) async => Response(
        jsonString,
        200,
        headers: {'content-type': 'application/json'},
      ),
    );

    final result = await documentNodeQueryTest.execute(
      mockClient,
      Query$Test.fromJson,
      cacheProvider: mockCacheProvider,
    );

    expect(result.data?.$get, 'ok');

    verifyNever(mockCacheProvider.set(any, any, any));
  });
}
