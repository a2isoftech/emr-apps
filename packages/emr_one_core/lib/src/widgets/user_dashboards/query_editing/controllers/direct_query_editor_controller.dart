import 'package:emr_one_core/models/user_dashboards/user_dashboard_models.dart';
import 'package:meta/meta.dart';

@internal
class DirectQueryEditorController {
  DirectQueryEditorController({this.queryId, this.queryDefinition});

  final String? queryId;

  DirectQueryDefinition? queryDefinition;
}
