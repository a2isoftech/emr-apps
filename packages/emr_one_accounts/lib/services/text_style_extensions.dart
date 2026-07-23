import 'package:flutter/material.dart';

extension TextStyleExtensions on TextStyle {
  TextStyle bold() {
    return copyWith(fontWeight: FontWeight.bold);
  }

  TextStyle underlined() {
    return copyWith(decoration: TextDecoration.underline);
  }
}
