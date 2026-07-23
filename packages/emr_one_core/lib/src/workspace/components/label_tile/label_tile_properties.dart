import 'package:emr_one_core/models/user_dashboards/workspace_library_item.dart';
import 'package:flutter/foundation.dart';

class LabelTileProperties extends WorkspaceLibraryItem {
  LabelTileProperties(
    String? labelText,
  ) : labelText = ValueNotifier(labelText ?? '');

  factory LabelTileProperties.clone(LabelTileProperties other) {
    return LabelTileProperties(other.labelText.value);
  }

  factory LabelTileProperties.fromJson(Map<String, dynamic> json) =>
      LabelTileProperties(
        json['labelText'] as String,
      );

  Map<String, dynamic> toJson() => {
        'labelText': labelText.value,
      };
  final ValueNotifier<String> labelText;

  void applyFrom(LabelTileProperties other) {
    labelText.value = other.labelText.value;
  }

  @override
  String getTitle() {
    return 'Label Tile';
  }
}
