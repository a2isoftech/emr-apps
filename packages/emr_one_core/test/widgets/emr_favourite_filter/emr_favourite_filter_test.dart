import 'dart:convert';

import 'package:emr_one_core/data/emr_query_graphql_data_source.dart';
import 'package:emr_one_core/routing/eo_route.dart';
import 'package:emr_one_core/routing/eo_router_state.dart';
import 'package:emr_one_core/routing/route_registry.dart';
import 'package:emr_one_core/widgets/favourite_filters/favourite_filter_widget.dart';
import 'package:emr_one_core/widgets/filter/emr_filter.dart';
import 'package:emr_one_localisations/app_localizations.dart';
import 'package:emr_sharedtypes/models/yard.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:provider/provider.dart';

import '../../eo_test_helper.mocks.dart';
import '../../test_routes.dart';
import '../emr_filter/test_custom_filter_controller.dart';

class EmrTestDataSource extends EmrQueryGraphQLDataSource<dynamic> {
  @override
  Future<void> refresh() async {}
}

@GenerateMocks([FirebaseRemoteConfig])
void main() {
  testWidgets('Save fav filter', (WidgetTester tester) async {
    final testFilterController = TestCustomFilterController([
      EmrFilterModel<List<String>>(
        key: TestCustomFilterController.kTicketNumber,
        name: 'Ticket number',
        value: ['N1234', 'N4567'],
      ),
    ]);

    //Need routing for this test as we do context.pop
    final routeRegistry = RouteRegistry();

    routeRegistry.addRoutes(
      DummyMenuData.getTestRoutes()
          .map(
            (m) => EORoute(
              m.icon,
              (_) => m.name,
              path: m.path,
              name: m.name,
              section: m.section,
              widgetBuilder: (context, state) => Provider(
                create: (_) => routeRegistry,
                child: _testApp(testFilterController),
              ),
              // for tests we can't use the default builder as login needed
              eoPageBuilder: (context, state, builder, providers) =>
                  MaterialPage<void>(
                child: Scaffold(
                  body: builder(
                    context,
                    EoRouterState.fromGoRouterState(state),
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );

    final router = GoRouter(routes: routeRegistry.getRoutes());

    final app1 = MultiProvider(
      providers: [HttpClientProvider()],
      child: MaterialApp.router(
        routeInformationProvider: router.routeInformationProvider,
        routeInformationParser: router.routeInformationParser,
        routerDelegate: router.routerDelegate,
        localizationsDelegates: const [
          EmrAppsLocalisations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
      ),
    );

    await tester.pumpWidget(app1);

    //Click on save filters
    final list = find.byType(ListTile);
    await tester.tap(list);
    await tester.pumpAndSettle();

    // Enter filtername to be saved
    final textfield = find.byType(TextFormField);
    await tester.enterText(textfield, 'TestFav1');
    await tester.pumpAndSettle();

    // click on ok
    final okButton = find.text('OK');
    await tester.tap(okButton);
    await tester.pumpAndSettle();

    //expand favourites
    await tester.pump();
    final expansion = find.byType(ExpansionTile);
    await tester.tap(expansion);
    await tester.pumpAndSettle();

    expect(find.text('TestFav1'), findsAtLeastNWidgets(1));
    expect(find.text('TestFav'), findsAtLeastNWidgets(1));
  });

  testWidgets('List fav filter', (WidgetTester tester) async {
    final testFilterController = TestCustomFilterController([
      EmrFilterModel<List<String>>(
        key: TestCustomFilterController.kTicketNumber,
        name: 'Ticket number',
        value: ['N1234', 'N4567'],
      ),
    ]);

    final app1 = MultiProvider(
      providers: [HttpClientProvider()],
      child: _testApp(testFilterController),
    );
    await tester.pumpWidget(app1);
    await tester.pump();

    final expansion = find.byType(ExpansionTile);
    await tester.tap(expansion);
    await tester.pumpAndSettle();

    expect(find.text('TestFav'), findsAtLeastNWidgets(1));
  });

  testWidgets('Delete fav filter', (WidgetTester tester) async {
    final testFilterController = TestCustomFilterController([
      EmrFilterModel<List<String>>(
        key: TestCustomFilterController.kTicketNumber,
        name: 'Ticket number',
        value: ['N1234', 'N4567'],
      ),
    ]);

    final app1 = MultiProvider(
      providers: [HttpClientProvider()],
      child: _testApp(testFilterController),
    );

    await tester.pumpWidget(app1);
    await tester.pump();
    final expansion = find.byType(ExpansionTile);
    await tester.tap(expansion);
    await tester.pumpAndSettle();

    final clearButton = find.byIcon(Icons.clear);
    await tester.tap(clearButton);
    await tester.pumpAndSettle();

    await tester.pump();
    expect(find.byType(ExpansionTile), findsNothing);
  });

  testWidgets('Set fav filter', (WidgetTester tester) async {
    final testFilterController = TestCustomFilterController([]);
    final app1 = MultiProvider(
      providers: [HttpClientProvider()],
      child: _testApp(testFilterController),
    );

    await tester.pumpWidget(app1);
    await tester.pump();
    final expansion = find.byType(ExpansionTile);
    await tester.tap(expansion);
    await tester.pumpAndSettle();

    final favFilter = find.byType(ListTile).last;
    await tester.tap(favFilter);
    await tester.pumpAndSettle();

    await tester.pump();
    final filter = testFilterController.tryGetFilter<List<String>>(
      key: TestCustomFilterController.kTicketNumber,
    );
    expect(filter?.value, ['N1234', 'N4567']);

    final customFilter = testFilterController.tryGetFilter<List<Yard>>(
      key: TestCustomFilterController.kyards,
    );
    final yardData = customFilter!.value!.first;
    expect(yardData.yardCode, 'YSAL');
  });
}

MockClient _getClient() {
// The Fav FIlter WIdget needs client.
  final mockRemoteConfig = MockFirebaseRemoteConfig();
  when(mockRemoteConfig.getString('disabledRoutes')).thenReturn('[]');
  final httpResponses = <String, List<Map<String, Object>>>{
    'GetFavouriteFilterParameters': [kFavResult],
    'SaveFavouriteFilterParameters': [kSaveFav],
    'DeleteFilterParameters': [kdeleteFav],
  };

  return MockClient(
    (request) async {
      final requestBody = jsonDecode(request.body) as Map<String, dynamic>;
      final operationName = requestBody['operationName'] as String?;

      Map<String, Object>? body;

      if (httpResponses.containsKey(operationName)) {
        final bodies = httpResponses[operationName]!.toList();

        if (bodies.isEmpty) {
          throw Exception(
            'The list of bodies is empty for test request with operation '
            "name '$operationName'",
          );
        }

        body = bodies.first;

        // Remove the body now that it's been used, unless there's
        // only 1 left.
        if (bodies.length > 1) {
          final newValues = [...bodies..removeAt(0)];

          httpResponses[operationName!] = newValues;
        }
      } else {
        throw Exception(
          'Unable to get body for test request with operation name '
          "'$operationName'",
        );
      }

      return Response(
        json.encode(body),
        200,
        headers: {'content-type': 'application/json'},
      );
    },
  );
}

Widget _testApp(
  EmrFilterController filterController,
) {
  final dataSource = EmrTestDataSource();
  return MaterialApp(
    localizationsDelegates: const [
      EmrAppsLocalisations.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ],
    home: Scaffold(
      body: FavouriteFilters(
        module: 'test',
        filterController: filterController,
        dataSource: dataSource,
      ),
    ),
  );
}

final kFavResult = {
  'data': {
    'favouriteFilterParameters': [
      {
        'filterName': 'TestFav',
        'moduleName': 'test',
        'filterParameters': '''
[{"type":"List<String>","key":"ticketNumber","text":"Ticket Number : N1234 (+1)","value":["N1234","N4567"]},{"type":"List<Yard>","key":"yards","text":"Yard: YSAL","value":[{"yardCode":"YSAL","yardName":"standford name","shortName":"standford"}]}]''',
        '__typename': 'FilterPreferences',
      }
    ],
    '__typename': 'Query',
  },
};

final kSaveFav = {
  'data': {
    'saveFilterParameters': {
      'filterName': 'TestFav1',
      'moduleName': 'test',
      'filterParameters': '''
[{"type":"List<String>","key":"ticketNumber","text":"Ticket Number : N1234 (+1)","value":["N1234","N4567"]}]''',
      '__typename': 'FilterPreferences',
    },
    '__typename': 'Mutation',
  },
};

final kdeleteFav = {
  'data': {
    'deleteFilterParameters': true,
    '__typename': 'Mutation',
  },
};

class HttpClientProvider extends Provider<BaseClient> {
  HttpClientProvider({super.key})
      : super(
          create: (context) => _getClient(),
        );

  static BaseClient of(BuildContext context) =>
      Provider.of<BaseClient>(context, listen: false);
}
