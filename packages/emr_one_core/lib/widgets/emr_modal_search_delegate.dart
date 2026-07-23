import 'package:emr_one_core/extensions/extensions.dart';
import 'package:emr_one_core/utilities/utilities.dart';
import 'package:flutter/material.dart';

typedef EmrModalSearchDelegateItemBuilder<T> = Widget? Function(T);

/// A delegate which can be passed to showSearch, allowing us to pick a value
/// from a data provider in a full screen modal.
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
class EmrModalSearchDelegate<T extends Object> extends SearchDelegate<T?> {
  EmrModalSearchDelegate(this.getSuggestions, this.itemBuilder);
  final EmrModalSearchDelegateItemBuilder<T> itemBuilder;
  final Future<List<T>> Function(String query) getSuggestions;

  Future<List<T>?>? _futureResults;

  final _debounceableSearch = Debounceable<List<T>>();

  @override
  void close(BuildContext context, T? result) {
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
      ];

  @override
  Widget buildSuggestions(BuildContext context) => buildResults(context);

  @override
  Widget buildResults(BuildContext context) {
    _futureResults = _debounceableSearch.call(() => getSuggestions(query));

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

        return ListView.builder(
          itemCount: results!.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => close(context, results[index]),
              child: itemBuilder(results[index]),
            );
          },
        );
      },
    );
  }
}
