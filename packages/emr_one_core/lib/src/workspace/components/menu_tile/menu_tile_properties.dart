import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/models/user_dashboards/workspace_library_item.dart';
import 'package:flutter/material.dart';

class MenuTileProperties extends WorkspaceLibraryItem {
  MenuTileProperties({
    String labelText = _defaultLabelText,
    String url = _defaultUrl,
    IconData iconData = Icons.developer_mode,
  })  : labelText = ValueNotifier(labelText),
        url = ValueNotifier(url),
        iconData = ValueNotifier(iconData);

  factory MenuTileProperties.clone(MenuTileProperties other) {
    return MenuTileProperties(
      labelText: other.labelText.value,
      url: other.url.value,
      iconData: other.iconData.value,
    );
  }

  factory MenuTileProperties.fromJson(Map<String, dynamic> json) =>
      MenuTileProperties(
        labelText: json['labelText'] as String? ?? _defaultLabelText,
        url: json['url'] as String? ?? _defaultUrl,
        iconData: const IconDataConverter()
            .fromJson(json['iconData'] as String? ?? '0xe1c7,MaterialIcons'),
      );

  static const String _defaultLabelText = '---';

  static const String _defaultUrl = '';

  Map<String, dynamic> toJson() => {
        'labelText': labelText.value,
        'url': url.value,
        'iconData': const IconDataConverter().toJson(iconData.value),
      };

  late final ValueNotifier<String> labelText;

  late final ValueNotifier<String> url;

  late final ValueNotifier<IconData> iconData;

  void applyFrom(MenuTileProperties other) {
    labelText.value = other.labelText.value;
    url.value = other.url.value;
    iconData.value = other.iconData.value;
  }

  @override
  String getTitle() {
    return 'Menu Tile';
  }
}
