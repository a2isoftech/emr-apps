import 'package:flutter/material.dart';

class AllowedModel {
  AllowedModel({
    required this.selected,
    required this.id,
    required this.values,
  });

  final ValueNotifier<bool> selected;
  final Map<String, String> values;
  final String id;
}
