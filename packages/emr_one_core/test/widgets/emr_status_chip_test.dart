import 'package:emr_one_core/widgets/chips/emr_status_chip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('EmrStatusChip', () {
    testWidgets('displays text correctly', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: EmrStatusChip(text: 'Test Chip'),
          ),
        ),
      );

      expect(find.text('Test Chip'), findsOneWidget);
    });

    testWidgets('does not show icon when statusType is information',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: EmrStatusChip(
              text: 'Info Chip',
            ),
          ),
        ),
      );

      expect(find.byIcon(Icons.circle), findsNothing);
    });

    testWidgets('shows icon with positiveColor for positive status',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: EmrStatusChip(
              text: 'Positive Chip',
              statusType: StatusType.positive,
            ),
          ),
        ),
      );

      final icon = tester.widget<Icon>(find.byIcon(Icons.circle));
      expect(icon.color, EmrStatusChip.positiveColor);
    });

    testWidgets('shows icon with negativeColor for negative status',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: EmrStatusChip(
              text: 'Negative Chip',
              statusType: StatusType.negative,
            ),
          ),
        ),
      );

      final icon = tester.widget<Icon>(find.byIcon(Icons.circle));
      expect(icon.color, EmrStatusChip.negativeColor);
    });

    testWidgets('shows icon with warningColor for warning status',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: EmrStatusChip(
              text: 'Warning Chip',
              statusType: StatusType.warning,
            ),
          ),
        ),
      );

      final icon = tester.widget<Icon>(find.byIcon(Icons.circle));
      expect(icon.color, EmrStatusChip.warningColor);
    });
  });
}
