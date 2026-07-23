import 'package:emr_one_core/models/workspace/workspaces.dart';
import 'package:emr_one_core/src/workspace/components/label_tile/label_tile.dart';
import 'package:emr_one_core/src/workspace/workspaces.dart';

class LabelTileController extends WorkspaceElementController {
  LabelTileController(super.directQueryService, this.element) : super();

  bool Function()? onValidate;
  void Function()? onCommit;

  final WorkspaceElementBase element;
  LabelTileProperties? _pristineCustomProperties;
  WorkspaceElementProperties? _pristineProperties;

  @override
  void onActivatePropertiesFlyout() {
    _pristineCustomProperties = LabelTileProperties.clone(
      element.customProperties as LabelTileProperties,
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
      (element.customProperties as LabelTileProperties)
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
    return (element.customProperties as LabelTileProperties).toJson();
  }
}
