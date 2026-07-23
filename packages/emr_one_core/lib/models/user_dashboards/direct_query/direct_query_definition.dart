import 'package:emr_one_core/models/user_dashboards/user_dashboard_models.dart';
import 'package:emr_one_core/models/user_dashboards/workspace_library_item.dart';
import 'package:flutter/foundation.dart';

class DirectQueryDefinition extends WorkspaceLibraryItem {
  DirectQueryDefinition({
    this.id,
    String? title,
    String? queryText,
    List<DirectQueryParameterDefinition>? parameters,
    DirectQueryKind? kind,
  }) {
    this.queryText = ValueNotifier(queryText ?? '');
    this.title = ValueNotifier(title ?? '');
    this.parameters = ValueNotifier(parameters ?? []);
    this.kind = ValueNotifier(kind ?? DirectQueryKind.singleFacetValue);
  }

  final String? id;

  late final ValueNotifier<List<DirectQueryParameterDefinition>> parameters;

  late final ValueNotifier<String> queryText;

  late final ValueNotifier<String> title;

  late final ValueNotifier<DirectQueryKind> kind;

  @override
  String getTitle() {
    return title.value;
  }
}
