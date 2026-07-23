import 'package:emr_one_core/widgets/form_row.dart';
import 'package:emr_one_core/widgets/input_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Input stepper decoration', (WidgetTester tester) async {
    final stepper = TextEditingController();
    final key1 = GlobalKey();
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: FormRow(
            children: [
              InputStepper(
                controller: stepper,
                key: key1,
              ),
            ],
          ),
        ),
      ),
    );
    expect(find.byKey(key1), findsOneWidget);
    expect(find.byIcon(Icons.add), findsOneWidget);
    expect(find.byIcon(Icons.remove), findsOneWidget);
  });

  testWidgets('Input stepper add works', (WidgetTester tester) async {
    final stepper = TextEditingController();
    stepper.text = '1';
    final key1 = GlobalKey();
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: FormRow(
            children: [
              InputStepper(
                controller: stepper,
                key: key1,
              ),
            ],
          ),
        ),
      ),
    );

    await tester.pump();
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();
    expect(find.text('2'), findsOneWidget);
    await tester.pump();
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();
    expect(find.text('3'), findsOneWidget);
  });

  testWidgets('Input stepper subtraction works', (WidgetTester tester) async {
    final stepper = TextEditingController();
    stepper.text = '3';
    final key1 = GlobalKey();
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: FormRow(
            children: [
              InputStepper(
                controller: stepper,
                key: key1,
              ),
            ],
          ),
        ),
      ),
    );

    await tester.pump();
    await tester.tap(find.byIcon(Icons.remove));
    await tester.pump();
    expect(find.text('2'), findsOneWidget);
    await tester.pump();
    await tester.tap(find.byIcon(Icons.remove));
    await tester.pump();
    expect(find.text('1'), findsOneWidget);
    await tester.tap(find.byIcon(Icons.remove));
    await tester.pump();
    expect(find.text('1'), findsOneWidget);
  });
}
