import 'package:emr_one_core/widgets/filter/triangle_painter.dart';
import 'package:emr_one_core/widgets/widgets.dart';
import 'package:emr_one_localisations/emr_one_localisations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'emr_filter/test_filter_controller.dart';
import 'emr_filter/test_filter_controller2.dart';
import 'emr_filter/test_filter_controller3.dart';

void main() {
  testWidgets('Add yard filter', (WidgetTester tester) async {
    // Add an EmrFilter to the page.
    final testFilterController = TestFilterController([]);
    await tester.pumpWidget(_testApp(testFilterController));

    // Find the add filter button and tap it.
    final addButton = find.text('Add a filter');
    await tester.tap(addButton);
    await tester.pumpAndSettle();

    // Tap the filter type dropdown to show the list.
    final ddl = find.byType(DropdownButtonFormField<EmrFilterModel<dynamic>?>);
    await tester.tapAt(tester.getCenter(ddl));
    await tester.pumpAndSettle();

    // Select the 'Yard' filter type.
    final yard = find.text('Yard');
    await tester.tap(yard.last);
    await tester.pumpAndSettle();

    // Enter search text to filter yards.
    final textfield = find.byType(TextField);
    await tester.enterText(textfield, 'Yard two');
    await tester.pumpAndSettle();

    // Tap yard two in the list.
    final yardTwo = find.text('Yard two').last;
    await tester.tap(yardTwo);
    await tester.pumpAndSettle();

    // Ensure we have a yard filter with the expected value.
    final filter = testFilterController.tryGetFilter<String>(
      key: TestFilterController.kYardCode,
    );
    expect(filter?.value, 'Y002');
  });

  testWidgets('Open popover filter and tap close button',
      (WidgetTester tester) async {
    // Add an EmrFilter to the page.
    final testFilterController = TestFilterController(
      [
        EmrFilterModel<String>(
          key: TestFilterController.kYardCode,
          name: 'Yard',
          text: 'Yard one',
          value: 'Y001',
        ),
      ],
      displayMode: EmrFilterDisplayMode.popover,
    );
    await tester.pumpWidget(
      _testApp(testFilterController),
    );

    // Find the filter and tap it.
    final filter = find.text('Yard one');
    await tester.tap(filter);
    await tester.pumpAndSettle();

    // Tap the close button.
    final closeButton = find.byIcon(FontAwesomeIcons.circleXmark.data);
    await tester.tap(closeButton);
    await tester.pumpAndSettle();

    // Ensure the popover is no longer visible.
    final closeButton2 = find.byIcon(FontAwesomeIcons.circleXmark.data);
    expect(closeButton2, findsNothing);
  });

  testWidgets('Open modal filter and tap back button',
      (WidgetTester tester) async {
    // Add an EmrFilter to the page.
    final testFilterController = TestFilterController([
      EmrFilterModel<String>(
        key: TestFilterController.kYardCode,
        name: 'Yard',
        text: 'Yard one',
        value: 'Y001',
      ),
    ]);
    await tester.pumpWidget(_testApp(testFilterController));

    // Find the filter and tap it.
    final filter = find.text('Yard one');
    await tester.tap(filter);
    await tester.pumpAndSettle();

    // Tap the back button.
    final backButton = find.byTooltip('Back');
    await tester.tap(backButton);
    await tester.pumpAndSettle();

    // Ensure the modal is no longer visible.
    final backButton2 = find.byTooltip('Back');
    expect(backButton2, findsNothing);
  });

  testWidgets('Delete filter', (WidgetTester tester) async {
    // Add an EmrFilter to the page.
    final testFilterController = TestFilterController([
      EmrFilterModel<String>(
        key: TestFilterController.kYardCode,
        name: 'Yard',
        text: 'Yard one',
        value: 'Y001',
      ),
    ]);
    await tester.pumpWidget(_testApp(testFilterController));

    // Find the filter and tap it.
    final deleteFilter = find.byIcon(FontAwesomeIcons.xmark.data);
    await tester.tap(deleteFilter);
    await tester.pumpAndSettle();

    expect(testFilterController.filters.value.length, 0);
  });

  testWidgets('Filter error should show message', (WidgetTester tester) async {
    // Add an EmrFilter to the page.
    final testFilterController = TestFilterController(
      [
        EmrFilterModel<String>(
          key: TestFilterController.kYardCode,
          name: 'Yard',
          text: 'Yard one',
          value: 'Y001',
        ),
      ],
      dataError: true, // Simulate an error calling an API.
    );
    await tester.pumpWidget(_testApp(testFilterController));

    // Find the filter and tap it.
    final filter = find.text('Yard one');
    await tester.tap(filter);
    await tester.pumpAndSettle();

    // Enter search text to filter yards.
    final textfield = find.byType(TextField);
    await tester.enterText(textfield, 'Yard two');
    await tester.pumpAndSettle();

    // Find the error message.
    final errorMessage = find.text('Exception: Test error');
    expect(errorMessage, findsOneWidget);
  });

  testWidgets('No results filter message', (WidgetTester tester) async {
    // Add an EmrFilter to the page.
    final testFilterController = TestFilterController([
      EmrFilterModel<String>(
        key: TestFilterController.kYardCode,
        name: 'Yard',
        text: 'Yard one',
        value: 'Y001',
      ),
    ]);
    await tester.pumpWidget(_testApp(testFilterController));

    // Find the filter and tap it.
    final filter = find.text('Yard one');
    await tester.tap(filter);
    await tester.pumpAndSettle();

    // Enter search text which returns no results.
    final textfield = find.byType(TextField);
    await tester.enterText(textfield, 'TESTING');
    await tester.pumpAndSettle();

    // Check message exists.
    final message = find.text('No results');
    expect(message, findsOneWidget);
  });

  testWidgets("Preselect add filter when there's only one",
      (WidgetTester tester) async {
    // Add an EmrFilter to the page.
    final testFilterController = TestFilterController(
      [],
      allowAddDateFilter: false,
    );
    await tester.pumpWidget(_testApp(testFilterController));

    // Find the add filter button and tap it.
    final addButton = find.text('Add a filter');
    await tester.tap(addButton);
    await tester.pumpAndSettle();

    // Enter search text to filter yards.
    final textfield = find.byType(TextField);
    await tester.enterText(textfield, 'Yard');
    await tester.pumpAndSettle();

    // Check the typeahead values - note that the widget seems to duplicate
    // so we can't just check for one instance of each.
    expect(find.text('Yard one'), findsAtLeastNWidgets(1));
    expect(find.text('Yard two'), findsAtLeastNWidgets(1));
    expect(find.text('Yard three'), findsAtLeastNWidgets(1));
  });

  testWidgets('Add date filter', (WidgetTester tester) async {
    // Add an EmrFilter to the page.
    final testFilterController = TestFilterController([]);
    await tester.pumpWidget(_testApp(testFilterController));

    // Find the add filter button and tap it.
    final addButton = find.text('Add a filter');
    await tester.tap(addButton);
    await tester.pumpAndSettle();

    // Tap the filter type dropdown to show the list.
    final ddl = find.byType(DropdownButtonFormField<EmrFilterModel<dynamic>?>);
    await tester.tapAt(tester.getCenter(ddl));
    await tester.pumpAndSettle();

    // Select the 'Yard' filter type.
    final yard = find.text('Date');
    await tester.tap(yard.last);
    await tester.pumpAndSettle();

    // Tap the centre of the calendar to pick a date.
    final calendar = find.byType(EmrDatePicker);
    await tester.tapAt(tester.getCenter(calendar));
    await tester.pumpAndSettle();

    // Ensure we have a date filter with a value.
    final filter = testFilterController.tryGetFilter<DateTime>(
      key: TestFilterController.kDate,
    );
    expect(filter?.value != null, true);
  });

  test('EmrFilterController containsFilter tests', () {
    final controller = TestFilterController([
      EmrFilterModel<String>(
        key: TestFilterController.kYardCode,
        name: 'Yard',
        text: 'Yard one',
        value: 'Y001',
      ),
      EmrFilterModel<DateTime>(
        key: TestFilterController.kDate,
        name: 'Date',
        text: 'Date',
      ),
    ]);

    expect(
      controller.containsFilter(key: TestFilterController.kYardCode),
      true,
    );

    expect(controller.containsFilter(key: TestFilterController.kDate), true);

    expect(
      controller.containsFilter(
        key: TestFilterController.kDate,
        withValue: true,
      ),
      false,
    );

    expect(controller.containsFilter(key: 'MISSING'), false);

    expect(controller.containsFilter(key: 'MISSING', withValue: true), false);
  });

  testWidgets('Error test', (WidgetTester tester) async {
    // Add an EmrFilter to the page.
    final testFilterController = TestFilterController3();
    await tester.pumpWidget(_testApp(testFilterController));
    await tester.pumpAndSettle();

    final errorMessage = find.text('Error message');
    expect(errorMessage, findsOneWidget);
  });

  testWidgets('Clear filter text', (WidgetTester tester) async {
    // Add an EmrFilter to the page.
    final testFilterController = TestFilterController([
      EmrFilterModel<String>(
        key: TestFilterController.kYardCode,
        name: 'Yard',
        text: 'Yard one',
        value: 'Y001',
      ),
    ]);
    await tester.pumpWidget(_testApp(testFilterController));

    // Find the filter and tap it.
    final filter = find.text('Yard one');
    await tester.tap(filter);
    await tester.pumpAndSettle();

    final yardOneCount1 = find.text('Yard one').evaluate().length;

    final clearButton = find.byIcon(Icons.clear);
    expect(clearButton, findsOneWidget);
    await tester.tap(clearButton);

    // Enter search text to filter yards.
    final textfield = find.byType(TextField);
    await tester.enterText(textfield, 'Yard two');
    await tester.pumpAndSettle();

    final yardOneCount2 = find.text('Yard one').evaluate().length;

    expect(yardOneCount2, yardOneCount1 - 1);
  });

  // This is to get 100% coverage.
  test('EmrFilterController newFilters without override should be empty', () {
    final controller = TestFilterController2();

    expect(controller.newFilters().length, 0);
  });

  // This is to get 100% coverage.
  test('TriangleClipper shouldReclip should return false', () {
    final oldClipper = TriangleClipper();
    final newClipper = TriangleClipper();

    expect(newClipper.shouldReclip(oldClipper), false);
  });

  // This is to get 100% coverage.
  test('TrianglePainter shouldRepaint should return false for matching values',
      () {
    final oldPainter = TrianglePainter();
    final newPainter = TrianglePainter();

    expect(newPainter.shouldRepaint(oldPainter), false);
  });
}

Widget _testApp(
  EmrFilterController filterController,
) {
  return MaterialApp(
    localizationsDelegates: const [
      EmrAppsLocalisations.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ],
    home: Scaffold(
      body: EmrFilter(
        leading: const Text('Filters:'),
        controller: filterController,
        validator: filterController.validator,
      ),
    ),
  );
}
