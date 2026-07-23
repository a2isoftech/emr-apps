import 'dart:convert';

import 'package:flutter/services.dart';

class PageWidgetConfigLoader {
  static Future<Map<String, Map<String, List<String>>>> loadConfig() async {
    final jsonString = await rootBundle.loadString(
        'packages/emr_one_portal/assets/files/page_widgets_config.json',);

    // Decode JSON as a map
    final decodedJson =
        json.decode(jsonString) as Map<String, dynamic>;

    // Properly cast each level of the map
    final result = decodedJson.map(
      (key, value) {
        final innerMap = (value as Map<String, dynamic>).map(
          (innerKey, innerValue) => MapEntry(
            innerKey,
            List<String>.from(innerValue as List<dynamic>),
          ),
        );
        return MapEntry(key, innerMap);
      },
    );
    return result;
  }
}
