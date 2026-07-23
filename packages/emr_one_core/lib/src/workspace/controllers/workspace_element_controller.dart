import 'package:emr_one_core/services/direct_query_service.dart';
import 'package:flutter/material.dart';

abstract class WorkspaceElementController extends ChangeNotifier {
  WorkspaceElementController(
    this.directQueryService,
  );

  final DirectQueryService directQueryService;

  bool onValidatePropertyChanges() => true;
  void onActivatePropertiesFlyout() {}
  void onDiscardPropertyChanges() {}
  void onCommitPropertyChanges() {}

  Map<String, dynamic> customPropertiesToJson() {
    return {};
  }
}
