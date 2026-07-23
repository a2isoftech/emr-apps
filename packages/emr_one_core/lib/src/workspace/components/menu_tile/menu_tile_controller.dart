import 'package:emr_one_core/models/workspace/workspaces.dart';
import 'package:emr_one_core/src/workspace/components/menu_tile/menu_tile.dart';
import 'package:emr_one_core/src/workspace/workspaces.dart';

class MenuTileController extends WorkspaceElementController {
  MenuTileController(super.directQueryService, this.element) : super();

  bool Function()? onValidate;
  void Function()? onCommit;

  final WorkspaceElementBase element;
  MenuTileProperties? _pristineCustomProperties;
  WorkspaceElementProperties? _pristineProperties;

  @override
  void onActivatePropertiesFlyout() {
    _pristineCustomProperties = MenuTileProperties.clone(
      element.customProperties as MenuTileProperties,
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
      (element.customProperties as MenuTileProperties)
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
    return (element.customProperties as MenuTileProperties).toJson();
  }
}
