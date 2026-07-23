import 'package:emr_one_core/extensions/extensions.dart';
import 'package:emr_one_core/utilities/utilities.dart';
import 'package:flutter/material.dart';

typedef EmrModalMultiSearchDelegateItemBuilder<T> = Widget? Function(
  T, {
  required bool selected,
});

/// A delegate which can be passed to showSearch, allowing us to pick multiple
/// values from a data provider in a full screen modal.
///
/// Example:
/// ```dart
/// final grade = await showSearch<Grade?>(
///     context: context,
///     delegate: EmrModalSearchDelegate(
///       GradeProvider(),
///       (item) => ListTile(
///         title: Text(item.gradeCode),
///         subtitle: Text(item.description),
///       ),
///     ),
///     query: "A214");
/// ```
class EmrModalMultiSearchDelegate<T extends Object>
    extends SearchDelegate<List<T>?> {
  EmrModalMultiSearchDelegate(this.getSuggestions, this.itemBuilder);
  final EmrModalMultiSearchDelegateItemBuilder<T> itemBuilder;
  final Future<List<T>> Function(String query) getSuggestions;

  Future<List<T>?>? _futureResults;

  final _debounceableSearch = Debounceable<List<T>>();

  final selectedItems = List<T>.empty(growable: true);

  @override
  void close(BuildContext context, List<T>? result) {
    _debounceableSearch.dispose();

    super.close(context, result);
  }

  @override
  Widget buildLeading(BuildContext context) => IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          close(context, null);
        },
      );

  @override
  List<Widget> buildActions(BuildContext context) => [
        if (query.isNotEmpty)
          IconButton(
            icon: const Icon(Icons.clear),
            onPressed: () {
              query = '';
            },
          ),
        IconButton(
          icon: const Icon(Icons.done),
          onPressed: () => Navigator.of(context).pop(selectedItems),
        ),
      ];

  @override
  Widget buildSuggestions(BuildContext context) => buildResults(context);

  @override
  Widget buildResults(BuildContext context) {
    _futureResults = _debounceableSearch.call(() => getSuggestions(query));

    return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        return FutureBuilder<List<T>?>(
          future: _futureResults,
          builder: (context, snapshot) {
            if (!snapshot.hasData ||
                snapshot.connectionState != ConnectionState.done) {
              return const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(child: CircularProgressIndicator()),
                ],
              );
            }

            if (snapshot.data!.isEmpty) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(child: Text(context.l10n.noResults)),
                ],
              );
            }

            final results = snapshot.data;

            //Clear out selected items hidden by the new query
            selectedItems.removeWhere(
              (element) => !(results?.contains(element) ?? true),
            );

            return ListView.builder(
              itemCount: results!.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      if (selectedItems.contains(results[index])) {
                        selectedItems.remove(results[index]);
                      } else {
                        selectedItems.add(results[index]);
                      }
                    });
                  },
                  child: itemBuilder(
                    results[index],
                    selected: selectedItems.contains(results[index]),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
