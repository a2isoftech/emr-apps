import 'package:emr_one_core/widgets/emr_expansion_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class TestIcon extends StatefulWidget {
  const TestIcon({super.key});

  @override
  TestIconState createState() => TestIconState();
}

class TestIconState extends State<TestIcon> {
  late IconThemeData iconTheme;

  @override
  Widget build(BuildContext context) {
    iconTheme = IconTheme.of(context);
    return const Icon(Icons.expand_more);
  }
}

class TestText extends StatefulWidget {
  const TestText(this.text, {super.key});

  final String text;

  @override
  TestTextState createState() => TestTextState();
}

class TestTextState extends State<TestText> {
  late TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    textStyle = DefaultTextStyle.of(context).style;
    return Text(widget.text);
  }
}

void main() {
  const dividerColor = Color(0x1f333333);
  const foregroundColor = Colors.blueAccent;
  const unselectedWidgetColor = Colors.black54;
  const headerColor = Colors.black45;

  testWidgets(
    'EmrExpansionTile Theme dependencies',
    (WidgetTester tester) async {
      final Key expandedTitleKey = UniqueKey();
      final Key collapsedTitleKey = UniqueKey();
      final Key expandedIconKey = UniqueKey();
      final Key collapsedIconKey = UniqueKey();

      await tester.pumpWidget(
        MaterialApp(
          theme: ThemeData(
            colorScheme:
                ColorScheme.fromSwatch().copyWith(primary: foregroundColor),
            unselectedWidgetColor: unselectedWidgetColor,
            textTheme:
                const TextTheme(titleMedium: TextStyle(color: headerColor)),
            expansionTileTheme: _getExpansionTileThemeData(),
          ),
          home: Material(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  const ListTile(title: Text('Top')),
                  EmrExpansionTile(
                    controlAffinity: ListTileControlAffinity.platform,
                    initiallyExpanded: true,
                    title: TestText('Expanded', key: expandedTitleKey),
                    backgroundColor: Colors.red,
                    textColor: Colors.green,
                    iconColor: Colors.blue,
                    trailing: TestIcon(key: expandedIconKey),
                    child: const ListTile(title: Text('0')),
                  ),
                  EmrExpansionTile(
                    title: TestText('Collapsed', key: collapsedTitleKey),
                    trailing: TestIcon(key: collapsedIconKey),
                    child: const ListTile(title: Text('0')),
                  ),
                ],
              ),
            ),
          ),
        ),
      );

      Color iconColor(Key key) =>
          tester.state<TestIconState>(find.byKey(key)).iconTheme.color!;
      Color textColor(Key key) =>
          tester.state<TestTextState>(find.byKey(key)).textStyle.color!;

      expect(textColor(expandedTitleKey), Colors.green);
      expect(textColor(collapsedTitleKey), headerColor);
      expect(iconColor(expandedIconKey), Colors.blue);
      expect(iconColor(collapsedIconKey), unselectedWidgetColor);

      // Tap both tiles to change their state: collapse and extend respectively
      await tester.tap(find.text('Expanded'));
      await tester.tap(find.text('Collapsed'));
      await tester.pumpAndSettle();

      // These are the default theme colours.
      expect(textColor(expandedTitleKey), headerColor);
      expect(textColor(collapsedTitleKey), Colors.black);
      expect(iconColor(expandedIconKey), unselectedWidgetColor);
      expect(iconColor(collapsedIconKey), Colors.black);
    },
    variant: TargetPlatformVariant.all(),
  );

  testWidgets('EmrExpansionTile Build Leading Icon',
      (WidgetTester tester) async {
    final Key expandedTitleKey = UniqueKey();
    final Key expandedIconKey = UniqueKey();

    await tester.pumpWidget(
      MaterialApp(
        theme: ThemeData(
          colorScheme:
              ColorScheme.fromSwatch().copyWith(primary: foregroundColor),
          unselectedWidgetColor: unselectedWidgetColor,
          textTheme:
              const TextTheme(titleMedium: TextStyle(color: headerColor)),
          expansionTileTheme: _getExpansionTileThemeData(),
        ),
        home: Material(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const ListTile(title: Text('Top')),
                EmrExpansionTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  initiallyExpanded: true,
                  title: TestText('Expanded', key: expandedTitleKey),
                  backgroundColor: Colors.red,
                  trailing: TestIcon(key: expandedIconKey),
                  child: const ListTile(title: Text('0')),
                ),
              ],
            ),
          ),
        ),
      ),
    );

    expect(find.byIcon(Icons.expand_more), findsWidgets);
  });

  testWidgets('ExpansionTile passing widgets', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        theme: ThemeData(
          platform: TargetPlatform.iOS,
          dividerColor: dividerColor,
          expansionTileTheme: _getExpansionTileThemeData(),
        ),
        home: const Material(
          child: SingleChildScrollView(
            child: Column(
              children: [
                EmrExpansionTile(
                  title: TestText('Tile 1'),
                  header: TestText('not expanded header'),
                  child: TestText('is not expanded'),
                ),
                EmrExpansionTile(
                  initiallyExpanded: true,
                  title: TestText('Title 2'),
                  header: Column(children: [TestText('Has Header')]),
                  child: TestText('Discarding State'),
                ),
              ],
            ),
          ),
        ),
      ),
    );

    // not expanded widget check, Title should show, header gets built but not
    // shown and body is not shown.
    expect(find.text('Tile 1'), findsOneWidget);
    expect(find.text('is not expanded'), findsOneWidget);
    expect(find.text('not expanded header'), findsOneWidget);
    //Expanded widget test, all should be shown
    expect(find.text('Title 2'), findsOneWidget);
    expect(find.text('Discarding State'), findsOneWidget);
    expect(find.text('Has Header'), findsOneWidget);
  });

  testWidgets('Works with or without header', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        theme: ThemeData(
          platform: TargetPlatform.iOS,
          dividerColor: dividerColor,
          expansionTileTheme: _getExpansionTileThemeData(),
        ),
        home: const Material(
          child: SingleChildScrollView(
            child: Column(
              children: [
                EmrExpansionTile(
                  initiallyExpanded: true,
                  title: TestText('Tile 1'),
                  child: TestText('No Header'),
                ),
                EmrExpansionTile(
                  initiallyExpanded: true,
                  title: TestText('Title 2'),
                  header: Column(children: [TestText('Has Header')]),
                  child: TestText('Child 2'),
                ),
              ],
            ),
          ),
        ),
      ),
    );

    //No header passed but expanded still works and only shows child.
    expect(find.text('Tile 1'), findsOneWidget);
    expect(find.text('No Header'), findsOneWidget);
    //Expanded widget test, all should be shown complete with a header
    expect(find.text('Title 2'), findsOneWidget);
    expect(find.text('Child 2'), findsOneWidget);
    expect(find.text('Has Header'), findsOneWidget);
  });

  testWidgets('ExpansionTile initially expanded', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        theme: ThemeData(
          platform: TargetPlatform.iOS,
          dividerColor: dividerColor,
          expansionTileTheme: _getExpansionTileThemeData(),
        ),
        home: const Material(
          child: SingleChildScrollView(
            child: Column(
              children: [
                EmrExpansionTile(
                  title: TestText('Tile 1'),
                  child: TestText('is not expanded'),
                ),
                EmrExpansionTile(
                  initiallyExpanded: true,
                  title: TestText('Title 2'),
                  header: Column(children: [TestText('Has Header')]),
                  child: TestText('Discarding State'),
                ),
              ],
            ),
          ),
        ),
      ),
    );

    // not expanded widget check, Title should show, header gets built but not
    // shown and body is not shown.
    expect(find.text('Tile 1'), findsOneWidget);
    expect(find.text('is not expanded'), findsOneWidget);
    //Expanded widget test, all should be shown
    expect(find.text('Title 2'), findsOneWidget);
    expect(find.text('Discarding State'), findsOneWidget);
    expect(find.text('Has Header'), findsOneWidget);
  });
}

ExpansionTileThemeData _getExpansionTileThemeData() =>
    const ExpansionTileThemeData().copyWith(
      backgroundColor: Colors.grey.shade400,
      textColor: Colors.black,
      iconColor: Colors.black,
    );
