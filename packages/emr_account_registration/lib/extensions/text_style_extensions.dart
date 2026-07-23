import 'package:flutter/material.dart';

extension TextStyleExtensions on TextStyle {
  TextStyle bold() {
    return copyWith(fontWeight: FontWeight.bold);
  }

  TextStyle italic() {
    return copyWith(fontStyle: FontStyle.italic);
  }

  TextStyle underlined() {
    return copyWith(decoration: TextDecoration.underline);
  }
}
