import 'package:emr_one_core/data/emr_query_scope_sort_order.dart';

/// This class describes the scope of a query. The scope changes over time as
/// the user inputs search terms or adds/removes filters on a screen. This class
/// helps to keep all aspects of the active query in one place so as to be
/// passed into the data source when results are needed.
/// Each time new data is needed an instance of this is passed into the data
/// source to be translated to a query which yields results (e.g. from an API).
class EmrQueryScope {
  EmrQueryScope({
    required this.query,
    required this.filters,
    required this.sortOrder,
  });

  String query;

  Map<String, dynamic> filters;

  List<EmrQueryScopeSortOrder> sortOrder;
}
