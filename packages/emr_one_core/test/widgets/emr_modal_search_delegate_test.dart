import 'package:emr_one_core/search/search.dart';
import 'package:emr_one_core/widgets/widgets.dart';
import 'package:emr_one_localisations/emr_one_localisations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('EmrModalSearchDelegate query and tap single result',
      (WidgetTester tester) async {
    // Show the modal picker.
    final params = await setup(tester);

    final futureResult = showSearch(
      context: params.context,
      delegate: params.delegate,
      query: 'A214',
    );

    await tester.pumpAndSettle();

    // Check there is only one result.
    final listTile = find.byType(ListTile);

    expect(
      listTile,
      findsOneWidget,
      reason: 'Expected to find 1 result when query is A214',
    );

    // Tap the result and verify the returned value.
    await tester.tapAt(tester.getCenter(listTile));

    expect((await futureResult)?.gradeCode, 'A214');
  });

  testWidgets('EmrModalSearchDelegate cancel returns null',
      (WidgetTester tester) async {
    // Show the modal picker.
    final params = await setup(tester);

    final futureResult = showSearch(
      context: params.context,
      delegate: params.delegate,
      query: 'A214',
    );

    await tester.pumpAndSettle();

    // Find the back button and tap it.
    final backButton = find.byIcon(Icons.arrow_back);

    expect(
      backButton,
      findsOneWidget,
      reason: 'Expected to find 1 back button',
    );

    await tester.tapAt(tester.getCenter(backButton));

    // Check the result is null.
    expect((await futureResult)?.gradeCode, null);
  });

  testWidgets('EmrModalSearchDelegate clear and tap first result',
      (WidgetTester tester) async {
    // Show the modal picker.
    final params = await setup(tester);

    final futureResult = showSearch(
      context: params.context,
      delegate: params.delegate,
      query: 'A214',
    );

    await tester.pumpAndSettle();

    // Find the clear button and tap it.
    final clearButton = find.byIcon(Icons.clear);

    expect(
      clearButton,
      findsOneWidget,
      reason: 'Expected to find 1 clear button',
    );

    await tester.tapAt(tester.getCenter(clearButton));

    await tester.pumpAndSettle();

    // Tap the first result and verify the returned value.
    final listTile = find.byType(ListTile).first;

    await tester.tapAt(tester.getCenter(listTile));

    expect((await futureResult)?.gradeCode, '12A');
  });

  testWidgets('EmrModalSearchDelegate no results', (WidgetTester tester) async {
    // Show the modal picker.
    final params = await setup(tester);

    final futureResult = showSearch(
      context: params.context,
      delegate: params.delegate,
      query: 'NOTHING',
    );

    await tester.pumpAndSettle();

    // Verify the no results text is shown.
    final noResultsFinder = find.text('No results');
    expect(noResultsFinder, findsOneWidget);

    // We're not interested in the result for this test, just that the search
    // was displayed.
    futureResult.ignore();
  });
}

Future<SetupResult> setup(WidgetTester tester) async {
  final delegate = EmrModalSearchDelegate<MockGrade>(
    (query) => MockGradeProvider().getSuggestions(query),
    (item) => ListTile(
      title: Text(item.gradeCode),
      subtitle: Text(item.description),
    ),
  );

  BuildContext? buildContext;

  await tester.pumpWidget(
    MaterialApp(
      localizationsDelegates: const [
        EmrAppsLocalisations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      home: Scaffold(
        body: Builder(
          builder: (BuildContext context) {
            buildContext = context;

            return Container();
          },
        ),
      ),
    ),
  );

  return SetupResult(delegate, buildContext!);
}

class MockGradeProvider extends EmrUtilSuggestionBaseApiProvider<MockGrade> {
  @override
  Future<List<MockGrade>> getSuggestions(String query) {
    final pattern = RegExp(query, caseSensitive: false);

    return Future.value(
      const <MockGrade>[
        MockGrade('12A', 'Mixed 12A'),
        MockGrade('A214', 'ROLLED ALI'),
        MockGrade('FF', 'Frag Feed'),
      ]
          .where(
            (element) =>
                element.description.contains(pattern) ||
                element.gradeCode.contains(pattern),
          )
          .toList(),
    );
  }
}

class MockGrade {
  const MockGrade(this.gradeCode, this.description);
  final String gradeCode;
  final String description;
}

class SetupResult {
  const SetupResult(this.delegate, this.context);
  final EmrModalSearchDelegate<MockGrade> delegate;
  final BuildContext context;
}
