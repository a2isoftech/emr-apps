import 'dart:ui';

import 'package:json_annotation/json_annotation.dart';

class CustomColourConverter implements JsonConverter<Color, String> {
  const CustomColourConverter();

  @override
  Color fromJson(String json) {
    final s = json.split(',');
    return Color.fromARGB(
      int.parse(s[0]),
      int.parse(s[1]),
      int.parse(s[2]),
      int.parse(s[3]),
    );
  }

  @override
  String toJson(Color json) => '${(json.a * 255.0).round() & 0xff},'
      '${(json.r * 255.0).round() & 0xff},'
      '${(json.g * 255.0).round() & 0xff},'
      '${(json.b * 255.0).round() & 0xff}';
}
