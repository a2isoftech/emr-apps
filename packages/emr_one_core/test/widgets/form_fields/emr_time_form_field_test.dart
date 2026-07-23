import 'package:emr_one_core/widgets/form_fields/emr_time_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  Widget buildTestWidget({
    required Locale locale,
    required ValueNotifier<DateTime?> binding,
  }) {
    return MaterialApp(
      locale: locale,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('de', 'DE'),
      ],
      home: Scaffold(
        body: EmrTimeFormField(
          binding: binding,
          labelText: 'Test Time',
        ),
      ),
    );
  }

  group('EmrTimeFormField locale tests', () {
    testWidgets('parses en_US time format', (tester) async {
      final binding = ValueNotifier<DateTime?>(null);

      await tester.pumpWidget(
        buildTestWidget(
          locale: const Locale('en', 'US'),
          binding: binding,
        ),
      );
      await tester.pumpAndSettle();

      // Enter "2:30 PM" and trigger parsing
      await tester.enterText(find.byType(TextFormField), '2:30 PM');
      await tester.testTextInput.receiveAction(TextInputAction.done);
      await tester.pump();

      expect(binding.value, isNotNull);
      expect(binding.value!.hour, 14);
      expect(binding.value!.minute, 30);
    });

    testWidgets('formats in de_DE 24h style', (tester) async {
      final binding = ValueNotifier<DateTime?>(
        DateTime.now().copyWith(hour: 14, minute: 30),
      );

      await tester.pumpWidget(
        buildTestWidget(
          locale: const Locale('de', 'DE'),
          binding: binding,
        ),
      );
      await tester.pumpAndSettle();

      await tester.enterText(find.byType(TextFormField), '14:30');
      await tester.testTextInput.receiveAction(TextInputAction.done);
      await tester.pump();

      final textField =
          tester.widget<TextFormField>(find.byType(TextFormField));
      expect(textField.controller!.text, '14:30');
    });

    testWidgets('formats in de_DE 24h style parse loose', (tester) async {
      final binding = ValueNotifier<DateTime?>(
        DateTime.now().copyWith(hour: 14, minute: 30),
      );

      await tester.pumpWidget(
        buildTestWidget(
          locale: const Locale('de', 'DE'),
          binding: binding,
        ),
      );
      await tester.pumpAndSettle();

      await tester.enterText(find.byType(TextFormField), '14 30');
      await tester.testTextInput.receiveAction(TextInputAction.done);
      await tester.pump();

      final textField =
          tester.widget<TextFormField>(find.byType(TextFormField));
      expect(textField.controller!.text, '14:30');
    });
  });
}
