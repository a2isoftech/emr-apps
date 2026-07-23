import 'package:emr_one_core/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('FormRow with one child', (WidgetTester tester) async {
    const rowKey = Key('row');
    const child0Key = Key('child0');

    dynamic exception;
    FlutterError.onError = (FlutterErrorDetails details) {
      exception ??= details.exception;
    };

    const sizedBox = SizedBox(
      key: child0Key,
      width: 100,
      height: 100,
      child: Text('1'),
    );

    // Default is MainAxisAlignment.start so this should fail too.
    await tester.pumpWidget(
      const Center(
        child: FormRow(
          key: rowKey,
          children: <Widget>[sizedBox],
        ),
      ),
    );

    expect(find.byKey(child0Key), findsOneWidget);
    expect(find.byWidget(sizedBox), findsOneWidget);
  });

  testWidgets('FormRow with Two children', (WidgetTester tester) async {
    const rowKey = Key('row');
    const child0Key = Key('child0');
    const child1Key = Key('child1');

    dynamic exception;
    FlutterError.onError = (FlutterErrorDetails details) {
      exception ??= details.exception;
    };

    // Default is MainAxisAlignment.start so this should fail too.
    await tester.pumpWidget(
      const Center(
        child: FormRow(
          key: rowKey,
          children: <Widget>[
            SizedBox(
              key: child0Key,
              width: 100,
              height: 100,
              child: Text('1'),
            ),
            SizedBox(
              key: child1Key,
              width: 100,
              height: 100,
              child: Text('1'),
            ),
          ],
        ),
      ),
    );

    expect(find.byKey(child0Key), findsOneWidget);
    expect(find.byKey(child1Key), findsOneWidget);
  });

  testWidgets('FormRow with Three children', (WidgetTester tester) async {
    const rowKey = Key('row');
    const child0Key = Key('child0');
    const child1Key = Key('child1');
    const child2Key = Key('child2');

    dynamic exception;
    FlutterError.onError = (FlutterErrorDetails details) {
      exception ??= details.exception;
    };

    // Default is MainAxisAlignment.start so this should fail too.
    await tester.pumpWidget(
      const Center(
        child: FormRow(
          key: rowKey,
          children: <Widget>[
            SizedBox(
              key: child0Key,
              width: 100,
              height: 100,
              child: Text('1'),
            ),
            SizedBox(
              key: child1Key,
              width: 100,
              height: 100,
              child: Text('2'),
            ),
            SizedBox(
              key: child2Key,
              width: 100,
              height: 100,
              child: Text('3'),
            ),
          ],
        ),
      ),
    );

    expect(find.byKey(child0Key), findsOneWidget);
    expect(find.byKey(child1Key), findsOneWidget);
    expect(find.byKey(child2Key), findsOneWidget);
  });

  testWidgets('Flexible defaults to FlexFit.Tight',
      (WidgetTester tester) async {
    const child0Key = Key('child0');

    await tester.pumpWidget(
      const FormRow(
        children: <Widget>[
          SizedBox(key: child0Key, width: 100, height: 200),
          SizedBox(width: 100, height: 200),
          SizedBox(width: 100, height: 200),
        ],
      ),
    );

    final box =
        tester.renderObject(find.byKey(child0Key)) as RenderConstrainedBox;
    expect(box.size.width, 256.0);
  });

  testWidgets('FormHeadingRow with Three children',
      (WidgetTester tester) async {
    const rowKey = Key('row');

    dynamic exception;
    FlutterError.onError = (FlutterErrorDetails details) {
      exception ??= details.exception;
    };

    // Default is MainAxisAlignment.start so this should fail too.
    await tester.pumpWidget(
      const Center(
        child: FormHeadingRow(
          key: rowKey,
          headings: ['First', 'Second', 'Third'],
        ),
      ),
    );

    expect(find.text('First'), findsOneWidget);
    expect(find.text('Second'), findsOneWidget);
    expect(find.text('Third'), findsOneWidget);
  });

  testWidgets('FormHeadingRow with an Icon', (WidgetTester tester) async {
    const rowKey = Key('row');

    dynamic exception;
    FlutterError.onError = (FlutterErrorDetails details) {
      exception ??= details.exception;
    };

    // Default is MainAxisAlignment.start so this should fail too.
    await tester.pumpWidget(
      const Center(
        child: FormHeadingRow(
          key: rowKey,
          headings: ['First', 'Second', 'Third'],
          icons: [null, Icons.abc, null],
        ),
      ),
    );

    expect(find.text('First'), findsOneWidget);
    expect(find.text('Second'), findsOneWidget);
    expect(find.byIcon(Icons.abc), findsOneWidget);
    expect(find.text('Third'), findsOneWidget);
  });
}
