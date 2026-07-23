import 'package:emr_one_core/models/user_dashboards/direct_query_instance.dart';
import 'package:emr_one_core/models/workspace/workspaces.dart';
import 'package:emr_one_core/src/workspace/workspaces.dart';

class DataTileController extends WorkspaceElementController {
  DataTileController(super.directQueryService, this.element) : super();

  bool Function()? onValidate;
  void Function()? onCommit;

  final WorkspaceElementBase element;
  DirectQueryInstance? _pristineCustomProperties;
  WorkspaceElementProperties? _pristineProperties;

  @override
  void onActivatePropertiesFlyout() {
    _pristineCustomProperties = DirectQueryInstance.clone(
      element.customProperties as DirectQueryInstance,
    );
    _pristineProperties = element.elementProperties.copyWith();
  }

  @override
  bool onValidatePropertyChanges() {
    return onValidate?.call() ?? false;
  }

  @override
  void onDiscardPropertyChanges() {
    if (_pristineCustomProperties != null) {
      (element.customProperties as DirectQueryInstance)
          .applyFrom(_pristineCustomProperties!);
    }
    if (_pristineProperties != null) {
      element.elementProperties.applyFrom(_pristineProperties!);
    }
    _pristineCustomProperties = null;
    _pristineProperties = null;
  }

  @override
  void onCommitPropertyChanges() {
    _pristineCustomProperties = null;
    _pristineProperties = null;
    onCommit?.call();
  }

  @override
  Map<String, dynamic> customPropertiesToJson() {
    return (element.customProperties as DirectQueryInstance).toJson();
  }
}
